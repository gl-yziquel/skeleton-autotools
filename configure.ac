# Sets the package name and its version. See [init].
# Information are fetched from the [Autotools.toml] file.
AC_INIT(
  m4_esyscmd([tomlq -f Autotools.toml package.name]),
  m4_esyscmd([tomlq -f Autotools.toml package.version]),
  m4_esyscmd([tomlq -f Autotools.toml package.email]),
  m4_esyscmd([tomlq -f Autotools.toml package.name]),
  m4_esyscmd([tomlq -f Autotools.toml package.homepage])
)

AC_CONFIG_SRCDIR([main.c])

AM_INIT_AUTOMAKE([-Wall -Werror foreign])
AC_PROG_CC

# Generates a header file through which autoconf data, such as version, will be
# handed over to the C code to be compiled. See [header].
# autoheader must be run to generate the config.h.in file that will be
# interpolated to generate the config.h file.
AC_CONFIG_HEADERS([config.h])

AC_CONFIG_FILES([Makefile])

# Generates config.status and executes it. See [output]
# It is the execution of config.status that generates the Makefile.
AC_OUTPUT

# References:
# ───────────
#
# [init]:   https://www.gnu.org/software/autoconf/manual/autoconf-2.67/html_node/Initializing-configure.html
# [output]: https://www.gnu.org/software/autoconf/manual/autoconf-2.67/html_node/Output.html#Output
# [header]: https://www.idryman.org/blog/2016/03/15/autoconf-tutorial-part-3/
