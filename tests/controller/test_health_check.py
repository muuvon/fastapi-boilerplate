from src.controller.health_check import get_health


def test_get_health_returns_ok_status():
    result = get_health()
    assert result == {"status": "ok"}
