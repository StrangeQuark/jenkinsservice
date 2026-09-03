# Use the official Jenkins LTS image
FROM jenkins/jenkins@sha256:c1e4c349365f6d16d88595b2c5f7e8ff39b8ae1d061f62420bac193b4b9616d0

# Switch to root to install extra tools if needed
USER root

# Install plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY casc.yaml /usr/share/jenkins/ref/casc.yaml
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/ref/plugins.txt --latest false

# Install Docker CLI
# RUN apt-get update && \
#     apt-get install -y docker.io && \
#     apt-get clean

# Set permissions or other setup here if needed

# Switch back to Jenkins user
USER jenkins
