Alpine Builder
==============

Build Alpine Linux packages using disposable Docker containers.

## Requirements

The [aports repository][aports] has to be cloned:

    $ git clone https://github.com/alpinelinux/aports.git

The Docker image has to be built and the package list updated:

    $ make build
    $ make update

## Usage

Packages can be built using the `abuild` task, specifying `PKG` as a parameter, in the format `repository/package`:

    $ make abuild PKG=main/py-flask

The tarball checksum can be updated if needed with:

    $ make checksum PKG=main/py-flask

An interactive shell is available to test/debug:

    $ make shell

# Clean-up

Built packages can be cleaned with:

    $ make clean

Or they can be purged together with their build caches:

    $ make clean-all


[aports]: https://github.com/alpinelinux/aports
