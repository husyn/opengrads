# Quick reference

    Maintained by: Hussain Mansoor
    Where to get help: the Docker Community Forums, the Docker Community Slack, or Stack Overflow
    Where to file issues: https://github.com/husyn/opengrads/issues
    Supported architectures: amd64

# How to use
To Pull the image run `docker pull husyn/opengrads`
Run the grads script like `docker run --rm -it -v $(PWD):/app -w /app husyn/opengrads grads -bc "run grads_script.gs"`

## Known Issue
Grads UI is not supported and fails with error: `Error in GXSTRT: Unable to connect to X server`
