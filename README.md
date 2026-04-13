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
docker-compose up --build
```
<br>

## Deployment
If running with the MSINIT stack, it is highly recommended to use the [Gatewayservice](https://github.com/StrangeQuark/gatewayservice) to host SSL certs and route traffic to the Jenkins container

<br><br>

## License
This project is licensed under the GNU General Public License. See `LICENSE.md` for details.
<br><br><br>

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
