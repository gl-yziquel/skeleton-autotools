[private]
@default:
	echo
	echo A skeletal GNU Autotools project.
	echo ─────────────────────────────────
	echo
	just --list --unsorted --justfile "{{ justfile() }}"

# This import statement allows the user of this repository to provide
# additional targets to this Justfile.
import? 'local.just'

# Shows the readme file.
readme:
	@bat README.md

# Build the project.
build:
	@# Generate the configure script:
	aclocal
	autoconf
	autoheader
	@# Generate the makefile:
	automake --add-missing
	@# Do the building:
	./configure
	make

# Runs the build output.
run:
	./main

# Cleans up the project.
clean:
	rm -rf autom4te.cache
	rm -f configure
	rm -f aclocal.m4
	rm -f install-sh
	rm -f missing
	rm -f Makefile.in
	rm -f Makefile
	rm -f config.log
	rm -f config.status
	rm -rf .deps/
	rm -f compile
	rm -f depcomp
	rm -f main
	rm -f main.o
	rm -f config.h
	rm -f config.h.in
	rm -f stamp-h1
