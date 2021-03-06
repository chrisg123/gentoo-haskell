# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

#hackport: flags: -developer

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient conversion of values into Text"
HOMEPAGE="https://github.com/RyanGlScott/text-show"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-batteries-0.11:=[profile?] <dev-haskell/base-compat-batteries-0.12:=[profile?]
	>=dev-haskell/bifunctors-5.1:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	dev-haskell/bytestring-builder:=[profile?]
	>=dev-haskell/contravariant-0.5:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/generic-deriving-1.11:=[profile?] <dev-haskell/generic-deriving-2:=[profile?]
	>=dev-haskell/nats-0.1:=[profile?] <dev-haskell/nats-2:=[profile?]
	>=dev-haskell/semigroups-0.17:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/tagged-0.4.4:=[profile?] <dev-haskell/tagged-1:=[profile?]
	>=dev-haskell/text-0.11.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/th-abstraction-0.2.2:=[profile?] <dev-haskell/th-abstraction-0.4:=[profile?]
	>=dev-haskell/th-lift-0.7.6:=[profile?] <dev-haskell/th-lift-1:=[profile?]
	>=dev-haskell/transformers-compat-0.5:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/void-0.5:=[profile?] <dev-haskell/void-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/base-orphans-0.6 <dev-haskell/base-orphans-0.9
		>=dev-haskell/deriving-compat-0.5.6 <dev-haskell/deriving-compat-1
		>=dev-haskell/hspec-2 <dev-haskell/hspec-3
		>=dev-haskell/quickcheck-2.12 <dev-haskell/quickcheck-2.14
		>=dev-haskell/quickcheck-instances-0.3.18 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/semigroups-0.18.3 <dev-haskell/semigroups-1
		>=dev-haskell/tagged-0.8.3 <dev-haskell/tagged-1 )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-developer
}
