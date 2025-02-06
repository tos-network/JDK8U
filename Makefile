SPEC := /Users/tomisetsu/tos-network/jdk8u/build/macosx-x86_64-normal-server-release/spec.gmk
include $(SPEC)

java-only: langtools-build jdk-java-build
