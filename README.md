# DevOps Resume Website

A containerized resume website with a fully automated CI/CD pipeline. This project demonstrates modern DevOps practices including Infrastructure as Code (logic), Containerization, and Continuous Deployment.

# The Tech Stack

Docker,Containerization == consistent environments
GitHub Actions,CI/CD automation == to handle testing and deployment
Nginx == High-performance web server (running inside Docker)
DigitalOcean == ,Cloud hosting (Ubuntu Droplet)
Linux (SSH/UFW) == Server management and security

# Architecture Diagram

# Step-by-Step Implementation (Phase 1)

Step 1: Containerization: Created a multi-stage Dockerfile using nginx:alpine to keep the image footprint small (<20MB).

Step 2: Server Hardening: Configured a DigitalOcean Ubuntu Droplet with UFW (Uncomplicated Firewall) to allow only essential traffic (SSH on 22, HTTP on 80).

Step 3: CI/CD Pipeline: Built a custom YAML workflow to automate the deployment.

Key Feature: Automated cleanup of old containers before deploying new versions to ensure zero-downtime-like transitions.

Step 4: Port Mapping: Configured the host to map production traffic (Port 80) directly to the containerized Nginx instance.

# Challenges Overcome

Port Conflict Resolution: Identified and resolved a conflict where a host-level Nginx process was blocking the Docker container on Port 80.

SSH Identity Management: Successfully configured SSH-agent and private key authentication between GitHub and the remote server to secure the automated pipeline.



# roadmap

[x] Automated CI/CD Pipeline

[x] Port 80 Production Deployment

[ ] Next: Add a Custom Domain Name via DNS

[ ] Next: Implement HTTPS/SSL with Let's Encrypt

[ ] Next: Basic Monitoring/Health Checks
