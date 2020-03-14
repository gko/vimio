#!/bin/sh
# https://github.com/eclipse/eclipse.jdt.ls#building-from-the-command-line
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
WORKSPACE_DIR=${pwd}
JDT_DIR=~/projects/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository

case $OSTYPE in
	linux*)
		PLATFORM=linux
		;;
	darwin*)
		PLATFORM=mac
		;;
	cygwin|win32|win64|msys)
		PLATFORM=win
		;;
esac

cd ${JDT_DIR}
LAUNCHER=`ls ${JDT_DIR}/plugins/org.eclipse.equinox.launcher_*.jar`

java \
	-Declipse.application=org.eclipse.jdt.ls.core.id1 \
	-Dosgi.bundles.defaultStartLevel=4 \
	-Declipse.product=org.eclipse.jdt.ls.core.product \
	-Dfile.encoding=utf8 \
	-Dlog.level=ALL \
	-noverify \
	-Xmx1G \
	-XX:+UseG1GC \
	-XX:+UseStringDeduplication \
	-jar ${LAUNCHER} \
	-configuration ./config_${PLATFORM} \
	-data ~/projects/turf-android