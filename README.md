A skeletal GNU Autotools Project.
=================================


This repository provides a skeleton of a GNU autotools project. And
may provide a quick entry point you may want to capitalise on for very
minimal projects with GNU Autotools.

This repository comes with a [Justfile](https://just.systems/) to pilot
the various invocations of the autotools build:

- Type `just build` to build the executable with autotools.

- Type `just run` to run the built executable.

- Type `just` to get a list of available targets.

This repository is purposefully minimalistic.


Features:
---------

- Similarly to what is now common in the rust or python ecosystem, one may set
up project information in the `Autotools.toml` file. (Which is read
with the [tomlq/yq][tomlq-yq] tool, whose presence on your system is
required.)

- One may set up additional Justfile targets by declaring them in a
`local.just` file, which would then be imported in the main Justfile.

[tomlq-yq]: https://kislyuk.github.io/yq/#toml-support


Notes:
------

The `freedesktop` project is heavily reliant on the autotools ecosystem
and, as such, is a good entry point for the study of autotools.
Of note, one may mention the [xorg-macros][xorg-macros] and the
[makedepend][makedepend] packages.

[xorg-macros]: https://gitlab.freedesktop.org/xorg/util/macros
[makedepend]: https://gitlab.freedesktop.org/xorg/util/makedepend


References:
-----------

- [A modern tutorial][tuto-felix] by Felix Ren-Chyan Chern.

- [Exposition of a minimal GNU Autotools project][book-mini] in the *GNU
Autoconf, Automake and Libtool* book. This reference is however
outdated: it claims `aclocal` requires a `configure.in` file as input,
but it nowadays requires a `configure.ac` file, nowadays.

[tuto-felix]: https://www.idryman.org/blog/2016/03/10/autoconf-tutorial-1/
[book-mini]: https://www.sourceware.org/autobook/autobook/autobook_23.html#A-Minimal-GNU-Autotools-Project
