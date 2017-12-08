# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An efficient strict bytestring builder"
HOMEPAGE="https://github.com/nikita-volkov/bytestring-strict-builder"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-prelude-1.2:=[profile?] <dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/rerebase-1 <dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-0.12
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.10
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.9
		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9 )
"