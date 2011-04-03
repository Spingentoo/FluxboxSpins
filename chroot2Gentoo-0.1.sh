# chroot2Gentoo-0.1.sh -- chroot to Gentoo environment
# Usage: ./chroot2Gentoo-0.1.sh <device name> <install path>
# Example: ./chroot2Gentoo-0.1.sh /dev/sda7 /mnt/gentoo
# Copyright (C) 2008-2011 Vish (thelinuxguyis@yahoo.co.in)
# For conditions of distribution and use, see copyright notice in COPYRIGHT.txt

# Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
# 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011 Free Software Foundation,Inc.
# This install-0.1.sh is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY, to the extent permitted by law; without
# even the implied warranty of MERCHANTABILITY or FITNESS FOR A
# PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


#! /bin/bash
##set -x

clear

if [ ! $# == 2 ]; then
  echo "Usage: ./chroot2Gentoo-0.1.sh <device name> <install path>"
  echo "Example: ./chroot2Gentoo-0.1.sh /dev/sda7 /mnt/gentoo"
  exit
fi

INSTALL_DEVICE=$1
INSTALL_PATH=$2

echo -e "Mounting /proc & /dev...."
mount $INSTALL_DEVICE $INSTALL_PATH

echo -e "Mounting /proc & /dev...."
mount -o bind /proc $INSTALL_PATH/proc ; mount -o bind /dev $INSTALL_PATH/dev ;

sleep 2;

echo "Welcome to GENTOO LINUX chroot environment...."
chroot /mnt/gentoo /bin/env -i TERM=$TERM /bin/bash ;
