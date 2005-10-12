# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

inherit jboss-4

DESCRIPTION="Security module of JBoss Application Server"
SRC_URI="${BASE_URL}/${P}-gentoo.tar.bz2 ${ECLASS_URI}"
IUSE="jikes"
SLOT="4"
KEYWORDS="~x86"

COMMON_DEPEND="dev-java/log4j
	=dev-java/dom4j-1*
	dev-java/junit
	dev-db/hsqldb
	dev-java/javacc
	dev-java/concurrent-util
	=dev-java/jboss-module-j2ee-${PV}*
	=dev-java/jboss-module-common-${PV}*
	=dev-java/jboss-module-system-${PV}*
	=dev-java/jboss-module-naming-${PV}*
	=dev-java/jboss-module-server-${PV}*
	=dev-java/jboss-module-jmx-${PV}*"
DEPEND=">=virtual/jdk-1.3 ${COMMON_DEPEND}"
RDEPEND=">=virtual/jre-1.3 ${COMMON_DEPEND}"
