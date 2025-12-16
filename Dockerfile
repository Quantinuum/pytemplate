# Use a Python image with uv pre-installed
FROM ghcr.io/astral-sh/uv:python3.14-bookworm-slim

# Set the working directory to /pytemplate
WORKDIR /pytemplate

# Copy pyproject.toml and other files to the container
COPY . .

# Install the dependencies
RUN uv sync --frozen

# Run the command
CMD ["uv", "run", "pytemplate/main.py"]
