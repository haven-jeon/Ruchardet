
# The version set here will propagate to other files from here
AC_INIT([Ruchardet], 0.0-1)

# Checks for common programs using default macros
AC_PROG_CC
AC_PROG_CPP

#AC_CHECK_LIB([uchardet], [encoding_detector])
#AC_CHECK_HEADER([uchardet/uchardet.h])

#AC_PATH_PROG([PKG_CONFIG], [pkg-config])

#if test "${PKG_CONFIG}" != ""; then
#  UCD_CFLAGS=`${PKG_CONFIG} --cflags uchardet`
#  UCD_LIBS=`${PKG_CONFIG} --libs uchardet`
#  UCD_A=''
#else
#AC_MSG_WARN([pkg-config not found, is uchardet installed?])


: ${R_HOME=`R RHOME`}
if test -z "${R_HOME}"; then
  echo "could not determine R_HOME"
  exit 1
fi

AC_LANG(C++)

CC=`"${R_HOME}/bin/R" CMD config CC`
CFLAGS=`"${R_HOME}/bin/R" CMD config CFLAGS`
CPPFLAGS=`"${R_HOME}/bin/R" CMD config CPPFLAGS`

UCD_CFLAGS='-Iuchardet-0.0.1/src'
UCD_LIBS='-Luchardet-0.0.1/src -luchardet'
UCD_A='libuchardet.a'


AC_PROG_MAKE_SET
AC_PROG_RANLIB

## Use Rscript to query Rcpp for compiler and linker flags
##
## look for Rscript, but use the one found via R_HOME to allow for multiple installations
AC_DEFUN(AC_PROG_RSCRIPT, [AC_CHECK_PROG(RSCRIPT,Rscript,yes)])
AC_PROG_RSCRIPT
if test x"${RSCRIPT}" == x"yes" ; then
     : ${R_HOME=`R RHOME`}
     if test -z "${R_HOME}"; then
         AC_MSG_ERROR([Could not determine R_HOME.])
     fi
     ## Rcpp compile flag providing header directory containing Rcpp.h
     RCPP_CXXFLAGS=`${R_HOME}/bin/Rscript -e 'Rcpp:::CxxFlags()'`
     ## link flag providing libary as well as path to library, and optionally rpath
     RCPP_LDFLAGS=`${R_HOME}/bin/Rscript -e 'Rcpp:::LdFlags()'`
else
    AC_MSG_ERROR([Rscript not found, is R installed?])
fi

# Now substitute these variables in src/Makevars.in to create src/Makevars

AC_SUBST(UCD_A)
AC_SUBST(UCD_CFLAGS)
AC_SUBST(UCD_LIBS)
AC_SUBST(RCPP_CXXFLAGS)
AC_SUBST(RCPP_LDFLAGS)
AC_SUBST(SET_MAKE)

AC_OUTPUT(src/Makevars)

