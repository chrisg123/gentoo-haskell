# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Add ACID guarantees to any serializable Haskell data structure"
HOMEPAGE="https://github.com/acid-state/acid-state"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="skip-state-machine-test"

RDEPEND=">=dev-haskell/cereal-0.4.1.0:=[profile?]
	dev-haskell/filelock:=[profile?]
	dev-haskell/mtl:=[profile?]
	<dev-haskell/network-3.2:=[profile?]
	dev-haskell/network-bsd:=[profile?]
	>=dev-haskell/safecopy-0.6:=[profile?] <dev-haskell/safecopy-0.11:=[profile?]
	>=dev-haskell/stm-2.4:=[profile?]
	dev-haskell/th-expand-syns:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		dev-haskell/hspec-discover
		dev-haskell/text
		!skip-state-machine-test? ( dev-haskell/hedgehog ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag skip-state-machine-test skip-state-machine-test)
}
