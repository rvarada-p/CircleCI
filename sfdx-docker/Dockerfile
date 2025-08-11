# Use Node.js 18 as the base image (already supports npm)
FROM cimg/node:18.17

# Install Salesforce CLI (SFDX CLI) globally
RUN sudo npm install -g @salesforce/cli

# Set the PATH variable to include npm binary paths
ENV PATH="${PATH}:$(npm bin -g)"

# Verify Salesforce CLI version (for debugging)
RUN sf --version

# Set the working directory to /workspace (can be adjusted based on your project)
WORKDIR /workspace
cd /path/to/sfdx-docker

# Expose a default port (if applicable, for interactive use)
EXPOSE 8080
