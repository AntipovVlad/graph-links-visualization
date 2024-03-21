var nodes, edges, network;

function draw_base() {
    edges.clear();
    nodes.clear();

    $.get("/directions", function(data) {
        console.log('------------');
        console.log(data);
        console.log('------------');
        for (let i = 0; i < data.length; i++) {
            nodes.update({
                    id: data[i]['direction_id'],
                    label: data[i]['name'],
                    shape: 'hexagon',
                    font: {size: 48},
                    margin: {top: 20, right: 20, bottom: 20, left: 20},
                    level: 0,
                    hidden: false,
                    size: 48,
                    color: {
                        background: '#0000FF'
                    },
            });
        }
    });

    network.stabilize();
}


function draw_projects_graph(dir_name) {
    edges.clear();
    nodes.clear();

    nodes.update({  id: 0,
                    label: `${dir_name} / Проекты`,
                    shape: 'hexagon',
                    font: {size: 48},
                    margin: {top: 20, right: 20, bottom: 20, left: 20},
                    level: 0,
                    hidden: false,
                    size: 48,
                    color: {
                        background: '#0000FF'
                    }
                });

    $.get(`/${dir_name}/projects/`, function(data) {
        for (let i = 0; i < data.length; i++) {
            const e_id = 1000 + i;
            const lb = data[i]['number'].toString();

            nodes.update({
                        id: e_id,
                        label: lb,
                        shape: 'hexagon',
                        font: {size: 16},
                        hidden: false,
                        level: 1,
                        size: 25,
                        color: '#42AAFF',
            });

            edges.update({ id: e_id, from: 0, to: e_id });
        }
    });

    network.stabilize();
}


$(document).ready(function() {
    nodes = new vis.DataSet([]);
    edges = new vis.DataSet([]);
    let options = {};

    let container = document.getElementById("container");
    let data = {
        nodes: nodes,
        edges: edges,
    };

    network = new vis.Network(container, data, options);

    draw_base();


    let links = {};

    network.on("doubleClick", function (params) {
        if (params['nodes'].length > 0) {
            if (nodes.get(params['nodes'][0]).label.includes('Проекты')) {
                if (nodes.get(params['nodes'][0]).level === 1) {
                    const dir_name = nodes.get(network.getConnectedNodes(params['nodes'][0]).filter(nd => nd < 1000)[0]).label;
                    draw_projects_graph(dir_name);
                } else {
                    draw_base();
                }

                return;
            }

            let mul = 1;
            let ref = '';
            let f_size = '';
            let h_size = 1;
            let color = '';

            switch (nodes.get(params['nodes'][0]).level) {
                case 0:
                    mul = 1000;
                    ref = '/directions/params';
                    f_size = 16;
                    h_size = 25;
                    color = '#42AAFF';

                    break;
                case 1:
                    mul = 10000;
                    f_size = 12;
                    h_size = 15;
                    color = '#78DBE2'

                    const dir_name = nodes.get(network.getConnectedNodes(params['nodes'][0]).filter(nd => nd < 1000)[0]).label;
                    const name = nodes.get(params['nodes'][0]).label;
                    ref = `/${dir_name}/${links[name]}/`;

                    break;
                default:
                    return;
            }

            const neigh = network.getConnectedNodes(params['nodes'][0]).filter(nd => nd >= mul);

            if (neigh.length === 0) {
                $.get(ref, function(data) {
                    console.log(data);
                    for (let i = 0; i < data.length; i++) {
                        const e_id = mul * params['nodes'][0] + i;
                        const lb = 'name' in data[i] ? data[i]['name'] : data[i]['number'].toString();

                        nodes.update({  id: e_id,
                                        label: lb,
                                        shape: 'hexagon',
                                        font: {size: f_size},
                                        hidden: false,
                                        level: nodes.get(params['nodes'][0]).level + 1,
                                        size: h_size,
                                        color: color,
                        });

                        if (edges.get(e_id) === null) {
                            edges.update({ id: e_id, from: params['nodes'][0], to: e_id });
                        }

                        links[data[i]['name']] = data[i]['alias'];
                    }
                });
            } else {
                for (let i = 0; i < neigh.length; i++)  {
                    const child_neigh = network.getConnectedNodes(neigh[i]);
                    for (let j = 0; j < child_neigh.length; j++) {
                        if (child_neigh[j] !== params['nodes'][0]) {
                            nodes.remove(child_neigh[j]);
                        }
                    }
                    nodes.remove(neigh[i]);
                }
            }
        }
    });
});


