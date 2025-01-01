# Dockerfile
FROM python:3.8-slim

RUN apt-get update && apt-get install -y \
    git \
    hmmer \
    build-essential \
    && rm -rf /var/lib/apt/lists/*


# Set working directory
WORKDIR /app

# Clone repository
RUN git clone https://github.com/opmentis/desci-lab.git .

# Install Python dependencies
RUN python -m venv .venv
ENV PATH="/app/.venv/bin:$PATH"
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir opmentis

# Copy entrypoint script
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Set environment variables
ENV CPU_CORES=2
ENV WALLET_ADDRESS=""

# Set entrypoint
ENTRYPOINT ["/app/entrypoint.sh"]