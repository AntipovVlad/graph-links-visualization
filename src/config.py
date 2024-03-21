import configparser


DB_USER: str = ''
DB_PASSWORD: str = ''
DB_NAME: str = ''


def init_config_settings() -> None:
    global DB_NAME, DB_PASSWORD, DB_USER

    config = configparser.ConfigParser()
    config.read('config.ini')
    # for key in config['DATABASE']:
    #     print(key)

    DB_USER = config['DATABASE']['db_user']
    DB_PASSWORD = config['DATABASE']['db_password']
    DB_NAME = config['DATABASE']['db_name']
