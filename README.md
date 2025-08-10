# V2Ray over WSS for Azure Web App

## Deploy
1. Fork this repo.
2. Push to your GitHub.
3. Create an **Azure Web App for Containers**.
4. Set the container image to `ghcr.io/<your-github-username>/<repo-name>:latest` or from Docker Hub.

## Client Settings
- Protocol: VLESS
- Address: YOUR-WEBAPP-NAME.azurewebsites.net
- Port: 443
- UUID: 4e6077ce-41cb-472f-98f4-5fb00bc07d09
- Transport: WebSocket
- Path: `/ws`
- TLS: ON
