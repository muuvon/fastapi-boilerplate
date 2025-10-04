# fastapi-boilerplate

A modern FastAPI boilerplate with UV and Makefile setup for quick project initialization.

## Getting Started

### Prerequisites

Before you begin, ensure you have `uv` installed. You can install it using:

```bash
pip install uv
```

### Setup

To set up the project and install all dependencies, run:

```bash
make setup
```

This command will:
- Create a virtual environment in `.venv`
- Install `uv` in the virtual environment
- Install all project dependencies (latest versions) including development tools

### Running the Application

To start the FastAPI application locally with auto-reload:

```bash
make run
```

The application will be available at `http://127.0.0.1:8000`

You can access the API documentation at:
- Swagger UI: `http://127.0.0.1:8000/docs`
- ReDoc: `http://127.0.0.1:8000/redoc`

### Running Tests

To run all unit tests:

```bash
make test
```

### Code Formatting

To format the code using Black:

```bash
make format
```

## Project Structure

```
.
├── src/
│   ├── controller/
│   │   └── health_check.py    # Business logic for health check
│   └── main.py                # FastAPI application entry point
├── routes/
│   └── health_check.py        # Health check endpoint routes
├── tests/
│   └── controller/
│       └── test_health_check.py  # Unit tests for health check
├── Makefile                   # Automation tasks
├── pyproject.toml             # Project metadata and dependencies
└── README.md                  # Project documentation
```

## Available Endpoints

- `GET /health-check` - Returns the health status of the application
