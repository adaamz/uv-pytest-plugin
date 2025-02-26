FROM python:3.12-bookworm

WORKDIR /opt/app/my-app

ENV PATH="/opt/app/my-app/.venv/bin:${PATH}"

COPY --from=ghcr.io/astral-sh/uv /uv /bin/uv

COPY --chown=1000 pyproject.toml uv.lock ./
COPY --chown=1000 tests ./tests
COPY --chown=1000 src ./src

RUN uv sync --all-extras --python-preference=only-system --frozen
