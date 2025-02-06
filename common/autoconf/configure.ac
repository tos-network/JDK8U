#
# Copyright (c) 2011, 2018, Oracle and/or its affiliates. All rights reserved.
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
#
# This code is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 only, as
# published by the Free Software Foundation.  Oracle designates this
# particular file as subject to the "Classpath" exception as provided
# by Oracle in the LICENSE file that accompanied this code.
#
# This code is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# version 2 for more details (a copy is included in the LICENSE file that
# accompanied this code).
#
# You should have received a copy of the GNU General Public License version
# 2 along with this work; if not, write to the Free Software Foundation,
# Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
# or visit www.oracle.com if you need additional information or have any
# questions.
#

###############################################################################
#
# Includes and boilerplate
#
###############################################################################


AC_PREREQ([2.69])
AC_INIT(OpenJDK, jdk8, build-dev@openjdk.java.net,,http://openjdk.java.net)

AC_CONFIG_AUX_DIR([common/autoconf/build-aux])

# Include only necessary m4 files
m4_include([basics.m4])
m4_include([basics_windows.m4])
m4_include([boot-jdk.m4])
m4_include([build-performance.m4])
m4_include([help.m4])
m4_include([jdk-options.m4])
m4_include([platform.m4])
m4_include([source-dirs.m4])

AC_DEFUN_ONCE([CUSTOM_EARLY_HOOK])
AC_DEFUN_ONCE([CUSTOM_LATE_HOOK])
AC_DEFUN_ONCE([CUSTOM_CONFIG_OUTPUT_GENERATED_HOOK])

# Basic initialization
BASIC_INIT
BASIC_SETUP_FUNDAMENTAL_TOOLS

# Skip compiler checks for Java-only build
if test "x$JDK_ONLY" = "xtrue"; then
  AC_MSG_NOTICE([Skipping compiler checks for Java-only build])
else
  # Normal initialization continues here
  PLATFORM_SETUP_OPENJDK_BUILD_AND_TARGET
  BASIC_SETUP_PATHS
  BASIC_SETUP_LOGGING
  JDKOPT_SETUP_OPEN_OR_CUSTOM
  JDKOPT_SETUP_JDK_VARIANT
  JDKOPT_SETUP_JVM_VARIANTS
  JDKOPT_SETUP_DEBUG_LEVEL
  CUSTOM_EARLY_HOOK
  BASIC_SETUP_OUTPUT_DIR
  HELP_SETUP_DEPENDENCY_HELP
  BASIC_SETUP_COMPLEX_TOOLS
fi

AC_OUTPUT

HELP_PRINT_SUMMARY_AND_WARNINGS
