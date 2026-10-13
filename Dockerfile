# Install managed Python with uv until a combined Python 3.15 image is available.
FROM ghcr.io/astral-sh/uv:bookworm-slim
# The unversioned Debian image currently bundles an older uv release.
COPY --from=ghcr.io/astral-sh/uv:0.13.0 /uv /uvx /usr/local/bin/

ARG PYTHON_VERSION=3.15
ENV UV_PYTHON=${PYTHON_VERSION}

# Set the working directory to /pytemplate
WORKDIR /pytemplate

# Copy pyproject.toml and other files to the container
COPY . .

# Install runtime dependencies only
RUN uv sync --frozen --no-default-groups

# Run the command
CMD ["uv", "run", "--no-sync", "pytemplate"]
