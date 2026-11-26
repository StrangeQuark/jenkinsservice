# Jenkinsservice
**Jenkinsservice** is a plug and play microservice for launching Jenkins in a docker container, specifically for the [MSINIT](https://msinit.com) project
<br><br><br>

## Features
- Launch Jenkins in a docker container
- Configuration as code to initialize all MSINIT repos
<br><br><br>

## Technology Stack
- Java 17+
- Jenkins
- Docker & Docker Compose
<br><br><br>

## Getting Started

### Prerequisites
- Docker and Docker Compose installed
<br><br>

### Running the Application
Clone the repository and start the service using Docker Compose:

```
git clone https://github.com/StrangeQuark/jenkinsservice.git
cd jenkinsservice
cp .env.example .env
docker compose up --build
```

Configure `.env` before starting Jenkins:

- `GITHUB_USERNAME` and `GITHUB_TOKEN`: GitHub credentials used to scan repositories.
- `VAULTSERVICE_ENABLED`: whether pipelines retrieve their environment files from Vaultservice.
- `VAULT_URL`: Vaultservice URL reachable from the Jenkins agent.
- `VAULT_ENV_FILE_BASE64`: Base64-encoded Vaultservice environment file used to create the `vault-env` credential.
- Service-specific CICD tokens: use the matching values from Vaultservice.
- `KUBERNETES_CICD_TOKEN`: use the matching value from KubernetesService when deploying through Kubernetes.

MSINIT generates integration flags and matching CICD tokens. GitHub credentials and the Vaultservice environment file must be supplied by the user.

When Vaultservice is disabled, supply each pipeline's environment file using its existing deployment flow.
<br>

## Deployment
If running with the MSINIT stack, it is highly recommended to use the [Gatewayservice](https://github.com/StrangeQuark/gatewayservice) to host SSL certs and route traffic to the Jenkins container

<br><br>

## License
This project is licensed under the Apache License 2.0. See `LICENSE` for details.
<br><br><br>

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
