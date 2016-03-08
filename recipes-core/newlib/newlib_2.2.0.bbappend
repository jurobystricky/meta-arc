
LIC_FILES_CHKSUM_arc = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552 \
                    file://COPYING3.LIB;md5=6a6a8e020838b23406c81b19c1d46df6 \
                    file://COPYING3;md5=d32239bcb673463ab874e80d47fae504 \
                    file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
                    file://COPYING.NEWLIB;md5=fced02ba02d66f274d4847d27e80af74 \
                    file://newlib/libc/posix/COPYRIGHT;md5=103468ff1982be840fdf4ee9f8b51bbf \
                    file://newlib/libc/sys/linux/linuxthreads/LICENSE;md5=73640207fbc79b198c7ffd4ad4d97aa0"

SRCREV = "5fa8aa82b2fbf1029a1c220bfbc2b86ea6163375"
SRC_URI_arc = "git://github.com/foss-for-synopsys-dwc-arc-processors/newlib.git;branch=arc-2.3"
S_arc  = "${WORKDIR}/git"

NEWLIB_HOST_arc ?= "arc-poky-elf"
EXTRA_OECONF_append_arc = " --enable-multilib --disable-newlib-supplied-syscalls "
TUNE_CCARGS_arc := " -nostdlib -mno-sdata "

# ERROR: QA Issue: Architecture did not match (195 to 93) 
INSANE_SKIP_${PN} += "arch"

# ERROR: QA Issue: non -staticdev package contains static .a library
INSANE_SKIP_${PN}-dev += "staticdev"
