from sqlalchemy import Column, ForeignKey, Integer, String

from src.app_logic.database import Base


class Direction(Base):
    __tablename__ = 'direction'

    direction_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True, unique=True)


class Expert(Base):
    __tablename__ = 'expert'

    expert_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class StudentLeader(Base):
    __tablename__ = 'student_leader'

    student_leader_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class EduProgram(Base):
    __tablename__ = 'edu_program'

    edu_program_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True, unique=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class Project(Base):
    __tablename__ = 'project'

    project_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    number = Column(Integer, unique=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class StudyCourse(Base):
    __tablename__ = 'study_course'

    study_course_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class Partner(Base):
    __tablename__ = 'partner'

    partner_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True, unique=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class CenLab(Base):
    __tablename__ = 'cen_lab'

    cen_lab_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class EquipPO(Base):
    __tablename__ = 'equip_po'

    equip_po_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)


class Grant(Base):
    __tablename__ = 'grant'

    grant_id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    name = Column(String, index=True)
    direction_id = Column(Integer, ForeignKey("direction.direction_id"), index=True)
