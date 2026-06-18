FROM python:3.12.11-slim
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/
WORKDIR /pipeline
ENV PATH="/pipeline/.venv/bin:$PATH"
COPY pyproject.toml uv.lock .python-version ./
RUN uv sync --locked
COPY pipeline.py pipeline.py
ENTRYPOINT ["uv", "run", "python", "pipeline.py"]