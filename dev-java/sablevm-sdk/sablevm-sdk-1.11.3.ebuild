# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit java

DESCRIPTION="A free java sdk around SableVM virtual machine."
HOMEPAGE="http://sablevm.org/"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~ppc ~amd64"

#
# Note: gjdoc depends on virtual/jdk so there is some minor bootstrap issue
#       to get around.
#

IUSE=""

#PROVIDE="virtual/jdk-1.4
#	virtual/jre-1.4"
 
DEPEND="~dev-java/sablevm-${PV}
	dev-java/fastjar
	dev-java/gjdoc
	dev-java/cp-tools"

#RDEPEND=""

S=${WORKDIR}

src_install() {
	# bin symlinks
	dodir /usr/lib/sablevm/bin
	dosym /usr/bin/jar /usr/lib/sablevm/bin
	dosym /usr/bin/gjdoc /usr/lib/sablevm/bin/javadoc
	# cp-tools
	CPTOOLS="currencygen javah javap localegen native2ascii \
	  rmic rmiregistry serialver"
	for f in ${CPTOOLS} ; do
	  dosym /usr/bin/$f /usr/lib/sablevm/bin/$f
	done

	# man symlinks
	dodir /usr/lib/sablevm/man/man1
	dosym /usr/share/man/man1/java-sablevm.1.gz /usr/lib/sablevm/man/man1/java.1.gz
	dosym /usr/share/man/man1/jikes.1.gz /usr/lib/sablevm/man/man1/javac.1.gz
	dosym /usr/share/man/man1/jar.1.gz /usr/lib/sablevm/man/man1/jar.1.gz
	dosym /usr/share/man/man1/gjdoc.1.gz /usr/lib/sablevm/man/man1/javadoc.1.gz

	set_java_env ${FILESDIR}/${VMHANDLE}
}
