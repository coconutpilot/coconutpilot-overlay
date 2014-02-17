# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7} )

inherit distutils-r1 python-r1 git-2

DESCRIPTION="zerorpc is a flexible RPC implementation based on zeromq and messagepack"
HOMEPAGE="https://github.com/dotcloud/zerorpc-python"
SRC_URI=""
EGIT_REPO_URI="https://github.com/dotcloud/zerorpc-python.git"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"


pkg_postinst() {
		python_mod_optimize ${PN#python-}
}

pkg_postrm() {
		python_mod_cleanup ${PN#python-}
}
