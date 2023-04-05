# EasyQC2 Docker Image

This Docker image includes R with installed EasyQC2 and its dependencies.

## R Packages Installed

- EasyQC2: 1.1.1
- Cairo: 1.6-0
- plotrix: 3.8-2
- data.table: 1.14.8
- backports: 1.4.1
- checkmate: 2.1.0
- abind: 1.4-5
- forestplot: 3.1.1

## Libraries Installed

- libxt-dev: 1:1.2.1-1
- libcairo2-dev: 1.16.0-7
- procps: 2:4.0.2-3

## Usage

For convenient running, we suggest using the `EasyQC2.sh` script. This script constructs a command that takes the path to the ECF script in the command line and passes it to the EasyQC2 function inside the R process.

Example:

```bash
./EasyQC2.sh /path/to/your/script.ecf
```

## Command to build image
```
docker build -t kirill/easyqc2 -t kirill/easyqc2:1.1.1 .
```
