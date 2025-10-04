from fastapi import APIRouter
from src.controller.health_check import get_health

router = APIRouter()


@router.get("/health-check")
def health_check():
    return get_health()
