# docker-compose-python 

This is a small repository used to quickly test Python scripts and packages in a Dockerized environment.

| Service        | Image                                                 | Container |
| -              | -                                                     | -         |
| testpy_service | [python:3.8-alpine](https://hub.docker.com/_/python/) | testpy    |

## How to use:

1. Add Python packages to the `requirements.txt` file.
1. Build/rebuild the image and start the `testpy` container by typing the command `make build`.
1. Add code to `main.py`.
1. Test code by typing the command `make run`. It will execute `main.py` in the `testpy` container.

## Additional commands:

- `make list`: List all local images and containers.
- `make exec`: Enter the `testpy` container.
- `make clean`: Cleanup and remove **ALL** local images and containers.
- `make list_packages`: List the Python packages installed in the `testpy` container.
