from sqlalchemy.orm import Session

from src.app_logic.models import *


def get_all_directions(db: Session):
    return db.query(Direction).all()


def get_experts_by_direction(db: Session, direction: str):
    return db.query(Expert).join(Direction).filter(Direction.name == direction).all()


def get_student_leaders_by_direction(db: Session, direction: str):
    return db.query(StudentLeader).join(Direction).filter(Direction.name == direction).all()


def get_educational_programs_by_direction(db: Session, direction: str):
    return db.query(EduProgram).join(Direction).filter(Direction.name == direction).all()


def get_projects_by_direction(db: Session, direction: str):
    return db.query(Project).join(Direction).filter(Direction.name == direction).all()


def get_study_courses_by_direction(db: Session, direction: str):
    return db.query(StudyCourse).join(Direction).filter(Direction.name == direction).all()


def get_partners_by_direction(db: Session, direction: str):
    return db.query(Partner).join(Direction).filter(Direction.name == direction).all()


def get_center_labs_by_direction(db: Session, direction: str):
    return db.query(CenLab).join(Direction).filter(Direction.name == direction).all()


def get_equipment_po_by_direction(db: Session, direction: str):
    return db.query(EquipPO).join(Direction).filter(Direction.name == direction).all()


def get_grants_by_direction(db: Session, direction: str):
    return db.query(Grant).join(Direction).filter(Direction.name == direction).all()
