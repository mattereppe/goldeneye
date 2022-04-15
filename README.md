# goldeneye

Goldeneye DDoS Attack simulator setup. This includes the Dockerfile for building a container 
and the Kubernetes manifest for running a job.

# Known bugs

The latest version of Docker publish workflow fails (it tries to sign a version which SHA is different
from the build). To solve the issue, a previous version of the script is used. Mind this if
additional workflows are being added.

