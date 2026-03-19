# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.14-bookworm-slim

# Set the working directory to /pytemplate
WORKDIR /pytemplate

# Copy pyproject.toml and other files to the container
COPY . .

# Install runtime dependencies only
RUN uv sync --frozen --no-default-groups

# Run the command
CMD ["uv", "run", "pytemplate"]
