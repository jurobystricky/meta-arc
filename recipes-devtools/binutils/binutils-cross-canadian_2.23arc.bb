require recipes-devtools/binutils/binutils.inc
require recipes-devtools/binutils/binutils-2.23arc.inc
require recipes-devtools/binutils/binutils-cross-canadian.inc

do_install_append () {
	rm -f ${D}/${libdir}/../lib/libiberty*
}
