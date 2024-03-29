# goldeneye

Goldeneye DDoS Attack simulator setup. This includes the Dockerfile for building a container 
and the Kubernetes manifest for running a job.


# Usage

The documentation of the goldeneye software is available at: https://github.com/jseidl/GoldenEye. Unfortunately, the project is not more active and maintained. 

The Docker version provided by this package includes the following environment variables:
- WORKERS: number of concurrent workers - corresponding to -w option of the software (default: 10);
- SOCKETS: number of concurrent sockets - corresponding to -s option of the software (default: 50);
- METHOD: HTTP method to use (either 'get', 'post' or 'random') - corresponding to -m option of the software (default: 'get');
- URL: the endpoint to attack (no default value).

# Notes

The original project has been patched to return an error value in case the connection to the server fails. This is useful to make the application resilient when run in a cloud-native environment.
