# Copyright 2012-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Program to read monitoring information out of Corsair RMi and HXI series of PSUs"
HOMEPAGE="https://github.com/notaz/corsairmi"
EGIT_REPO_URI="https://github.com/notaz/corsairmi.git"

SLOT="0"
LICENSE="BSD"
KEYWORDS="amd64 x86"

src_install() {
	dobin corsairmi
}

