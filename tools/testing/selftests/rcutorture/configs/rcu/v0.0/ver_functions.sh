#!/bin/bash
#
# Kernel-version-dependent shell functions for the rest of the scripts.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, you can access it online at
# http://www.gnu.org/licenses/gpl-2.0.html.
#
# Copyright (C) IBM Corporation, 2013
#
# Authors: Paul E. McKenney <paulmck@linux.vnet.ibm.com>

# per_version_boot_params bootparam-string config-file seconds
#
# Adds per-version torture-module parameters to kernels supporting them.
# Which old kernels do not.
per_version_boot_params () {
	echo	rcutorture.stat_interval=15 \
		rcutorture.shutdown_secs=$3 \
		rcutorture.rcutorture_runnable=1 \
		rcutorture.test_no_idle_hz=1 \
		rcutorture.verbose=1
}