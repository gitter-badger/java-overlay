# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

JAVA_PKG_IUSE="source doc"
JAVA_MAVEN_ADD_GENERATED_STUFF="y"
JAVA_MAVEN_BOOTSTRAP="Y"
inherit java-maven-2

DESCRIPTION="Maven is a software project management and comprehension tool."
HOMEPAGE="http://maven.apache.org/"
LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEP="
=dev-java/classworlds-1.1*
dev-java/maven-artifact
dev-java/maven-plugin-api
dev-java/plexus-classworlds
>=dev-java/plexus-utils-1.4.7_pre20071021
>=dev-java/plexus-container-default-1.0_alpha33_pre20071021
>=dev-java/plexus-component-api-1.0_alpha33_pre20071021
dev-java/xpp3
"
DEPEND=">=virtual/jdk-1.4 ${DEP}"
RDEPEND=">=virtual/jre-1.4 ${DEP}"
JAVA_MAVEN_CLASSPATH="
classworlds-1.1
maven-artifact
maven-plugin-api
plexus-classworlds
plexus-utils-1.4.7
plexus-container-default-1.0_alpha33
plexus-component-api-1.0_alpha33
xpp3
"

