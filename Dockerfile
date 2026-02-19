# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to install extra tools if needed
# USER root

# Install Docker CLI (optional - uncomment if needed)
# RUN apt-get update && \
#     apt-get install -y docker.io && \
#     apt-get clean

# Set permissions or other setup here if needed

# Switch back to Jenkins user
# USER jenkins
