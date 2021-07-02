# LP5569 Assembler Docker Image
The LP5569 assembly compiler, `lasm.exe`, is bundled inside a `mono` docker container
which allows LP5569 source code to be built using docker on a non-windows computer.

## Usage
To build your local source code, use a command of the form:
```
docker run --rm -v <local directory with source file>:/src lp5569-build:latest /src/filename.src
```
This will generate `.hex`, `.lst`, `.log`, and `.bin` files in the same directory as the source
file.
Only 1 file should be specified at a time as the file extension is split off from the file path and
used when generating the `.bin` file with `xxd`.

NB: the source file extension must be `.src`, unless the `EXTENSION` environment variable is set.

## License
The `lasm.exe` file is wholly owned, licensed, and provided by TI.

