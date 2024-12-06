# Load Balancer with Nginx

## Improvements for Reliability and Security

1. **Enable SSL**:
   - Use Let's Encrypt to generate certificates and enable HTTPS.
   - Update the `load-balancer.conf` to listen on port 443 with SSL.

2. **Health Checks for Web Services**:
   - Use `proxy_pass` options to define custom health checks.
   - Configure NGINX to remove unhealthy nodes from the upstream pool.

3. **Container Security**:
   - Use a custom NGINX image with only the required modules for improved security.
   - Limit container capabilities and run as a non-root user.

4. **Scaling**:
   - Add support for auto-scaling web services using tools like Docker Swarm or Kubernetes.

5. **Logging and Monitoring**:
   - Integrate with logging solutions like ELK Stack or Prometheus for detailed monitoring and alerts.
6. **CI/CD Integration:**
   - Automate deployments and tests to maintain reliability.

7. **Overlay Network:**
   - The overlay network isolates the services from the host network.

## Setup Instructions

1. Run `setup.sh` to initialize the project.
2. Access the Load Balancer at `http://localhost`.
3. Modify configurations as needed in the `nginx` and `html` directories.
