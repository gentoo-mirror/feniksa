# Copyright 2012-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake-multilib

# Different date format used upstream.
RE2_VER=${PV#1.}
RE2_VER=${RE2_VER//./-}

DESCRIPTION="An efficient, principled regular expression library"
HOMEPAGE="https://github.com/google/re2"
SRC_URI="https://github.com/google/re2/archive/${RE2_VER}.tar.gz -> re2-${RE2_VER}.tar.gz"

LICENSE="BSD"
# NOTE: Always run libre2 through abi-compliance-checker!
# https://abi-laboratory.pro/tracker/timeline/re2/
SONAME="9"
SLOT="0/${SONAME}"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~loong ~ppc ~ppc64 ~riscv ~s390 ~sparc x86"
IUSE="icu"

BDEPEND="icu? ( virtual/pkgconfig )"
DEPEND="icu? ( dev-libs/icu:0=[${MULTILIB_USEDEP}] )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/re2-${RE2_VER}"
