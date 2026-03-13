# Use the official Jenkins LTS image
FROM jenkins/jenkins:lts

# Switch to root to install extra tools if needed
USER root

# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt

# Install Docker CLI
# RUN apt-get update && \
#     apt-get install -y docker.io && \
#     apt-get clean

# Set permissions or other setup here if needed

# Switch back to Jenkins user
USER jenkins
