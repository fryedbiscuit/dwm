pkgname=dwm-fb
pkgver=1.0
pkgrel=1
pkgdesc="A dynamic window manager for X - Fryed Version"
url="https://github.com/fryedbiscuit/dwm"
arch=('i686' 'x86_64' 'arm' 'armv7h' 'armv6h' 'aarch64')
license=('MIT')
# options=(zipman)
depends=('libx11' 'libxinerama' 'libxft' 'freetype')

build() {
  make
}

package() {
  make PREFIX="${PREFIX:-/usr}" DESTDIR="$pkgdir" install
}
