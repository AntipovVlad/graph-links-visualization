from fastapi import Depends, FastAPI, Request
from fastapi.responses import HTMLResponse
from fastapi.templating import Jinja2Templates
from fastapi.staticfiles import StaticFiles
from sqlalchemy.orm import Session

from src.app_logic import crud, models
from src.app_logic.database import SessionLocal, engine

models.Base.metadata.create_all(bind=engine)

app = FastAPI()
app.mount("/static", StaticFiles(directory="src/static/"), name="src/static")
templates = Jinja2Templates(directory="src/static/src/html/")


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.get('/{direction}/experts/')
def read_experts(direction: str, db: Session = Depends(get_db)):
    experts = crud.get_experts_by_direction(db, direction)
    return experts


@app.get('/{direction}/student-leaders/')
def read_student_leaders(direction: str, db: Session = Depends(get_db)):
    leaders = crud.get_student_leaders_by_direction(db, direction)
    return leaders


@app.get('/{direction}/educational-programs/')
def read_educational_programs(direction: str, db: Session = Depends(get_db)):
    programs = crud.get_educational_programs_by_direction(db, direction)
    return programs


@app.get('/{direction}/projects/')
def read_projects(direction: str, db: Session = Depends(get_db)):
    projects = crud.get_projects_by_direction(db, direction)
    return projects


@app.get('/{direction}/study-courses/')
def read_study_courses(direction: str, db: Session = Depends(get_db)):
    courses = crud.get_study_courses_by_direction(db, direction)
    return courses


@app.get('/{direction}/partners/')
def read_partners(direction: str, db: Session = Depends(get_db)):
    partners = crud.get_partners_by_direction(db, direction)
    return partners


@app.get('/{direction}/center-labs/')
def read_center_labs(direction: str, db: Session = Depends(get_db)):
    center_labs = crud.get_center_labs_by_direction(db, direction)
    return center_labs


@app.get('/{direction}/equipment-po/')
def read_equipment_po(direction: str, db: Session = Depends(get_db)):
    equipment_po = crud.get_equipment_po_by_direction(db, direction)
    return equipment_po


@app.get('/{direction}/grants/')
def read_grants(direction: str, db: Session = Depends(get_db)):
    grants = crud.get_grants_by_direction(db, direction)
    return grants


@app.get('/directions')
def base_directions(db: Session = Depends(get_db)):
    directions = crud.get_all_directions(db)
    return directions


@app.get('/directions/params')
def base_direction_params(db: Session = Depends(get_db)):
    return [
        {'name': 'Эксперты', 'alias': 'experts'},
        {'name': 'Студенты-лидеры', 'alias': 'student-leaders'},
        {'name': 'ОП', 'alias': 'educational-programs'},
        {'name': 'Проекты', 'alias': 'projects'},
        {'name': 'Учебные курсы', 'alias': 'study-courses'},
        {'name': 'Партнеры', 'alias': 'partners'},
        {'name': 'Центры / Лаборатории', 'alias': 'center-labs'},
        {'name': 'Оборудование / ПО', 'alias': 'equipment-po'},
        {'name': 'Гранты', 'alias': 'grants'},
    ]


@app.get('/', response_class=HTMLResponse)
def index(request: Request):
    return templates.TemplateResponse('index.html', {"request": request})
