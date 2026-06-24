FROM python:3.12.11-slim
COPY --from=ghcr.io/astral-sh/uv:0.5.0 /uv /bin/
WORKDIR /pipeline
ENV PATH="/pipeline/.venv/bin:$PATH"
COPY pyproject.toml uv.lock .python-version ./
RUN uv sync --locked --no-cache
COPY spdr_pipeline.py spdr_pipeline.py
ENTRYPOINT ["uv", "run", "python", "spdr_pipeline.py"]