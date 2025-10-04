.PHONY: setup run format test

setup:
	python -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install uv
	.venv/bin/uv pip install -e .[dev]

run:
	.venv/bin/uvicorn src.main:app --reload

format:
	.venv/bin/black src tests

test:
	.venv/bin/pytest
