ARG PYTHON_VERSION=3.15
FROM ghcr.io/astral-sh/uv:0.13.4-python${PYTHON_VERSION}-trixie-slim

ARG PYTHON_VERSION
ENV UV_PYTHON=${PYTHON_VERSION}

# Set the working directory to /pytemplate
WORKDIR /pytemplate

# Copy pyproject.toml and other files to the container
COPY . .

# Install runtime dependencies only
RUN uv sync --frozen --no-default-groups

# Run the command
CMD ["uv", "run", "--no-sync", "pytemplate"]
