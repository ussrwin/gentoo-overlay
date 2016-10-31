# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

GOLANG_PKG_IMPORTPATH="github.com/gogits"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_LDFLAGS="-X github.com/gogits/gogs/modules/setting.BuildTime=$(date -u '+%Y-%m-%d') -X github.com/gogits/gogs/modules/setting.BuildGitHash=8ee14db"
GOLANG_PKG_USE_CGO=1
GOLANG_PKG_HAVE_TEST=1

# Dependencies
GOLANG_PKG_DEPENDENCIES=(
	"github.com/alexcesaro/quotedprintable:2caba25 -> gopkg.in/alexcesaro/quotedprintable.v3"
	"github.com/bradfitz/gomemcache:fb1f79c"
	"github.com/Unknwon/cae:c6aac99"
	"github.com/Unknwon/com:28b053d"
	"github.com/Unknwon/i18n:39d6f27"
	"github.com/Unknwon/paginater:7748a72"
	"github.com/go-macaron/binding:9440f33"
	"github.com/go-macaron/cache:5617353"
	"github.com/go-macaron/captcha:8aa5919"
	"github.com/go-macaron/csrf:6a9a7df"
	"github.com/go-macaron/gzip:cad1c65"
	"github.com/go-macaron/i18n:ef57533"
	"github.com/go-macaron/inject:d8a0b86"
	"github.com/go-macaron/session:66031fc"
	"github.com/go-macaron/toolbox:99a42f2"
	"github.com/go-sql-driver/mysql:0b58b37"
	"github.com/go-xorm/core:5bf745d"
	"github.com/go-xorm/xorm:37e2a03"
	"github.com/gogits/chardet:2404f77"
	"github.com/gogits/go-gogs-client:d8aff57"
	"github.com/gogits/cron:7f3990a"
	"github.com/gogits/git-module:b3009dc"
	"github.com/issue9/identicon:d36b545"
	"github.com/jaytaylor/html2text:52d9b78"
	"github.com/klauspost/compress:08fe86a"
	"github.com/klauspost/cpuid:09cded8"
	"github.com/klauspost/crc32:19b0b33"
	"github.com/lib/pq:50761b0"
	"github.com/mattn/go-sqlite3:b5c99a7"
	"github.com/mcuadros/go-version:d52711f"
	"github.com/microcosm-cc/bluemonday:7d0cad0"
	"github.com/msteinert/pam:02ccfbf"
	"github.com/nfnt/resize:891127d"
	"github.com/russross/blackfriday:93622da"
	"github.com/shurcooL/sanitized_anchor_name:10ef21a"
	"github.com/satori/go.uuid:0aa62d5"
	"github.com/sergi/go-diff:ec7fdbb"
	"github.com/strk/go-libravatar:5eed7bf"
	"github.com/urfave/cli:a14d7d3"
	"github.com/golang/net:1358eff -> golang.org/x"
	"github.com/golang/sys:a646d33 -> golang.org/x"
	"github.com/golang/text:ceefd22 -> golang.org/x"
	"github.com/go-gomail/gomail:81ebce5 -> gopkg.in/gomail.v2"
	"github.com/go-ini/ini:6e4869b -> gopkg.in/ini.v1"
	"github.com/go-macaron/macaron:dc39d5d -> gopkg.in/macaron.v1"
	"github.com/go-redis/redis:e617904 -> gopkg.in/redis.v2" #v2.3.2
	"github.com/go-bufio/bufio:fe7b595 -> gopkg.in/bufio.v1"
	"github.com/go-ldap/ldap:d0a5ced -> gopkg.in/ldap.v2" #v2.4.1
	"github.com/go-asn1-ber/asn1-ber:4e86f43 -> gopkg.in/asn1-ber.v1" #v1.1
	"github.com/editorconfig/editorconfig-core-go:a872f05 -> gopkg.in/editorconfig/editorconfig-core-go.v1"

	# tidb
	"github.com/go-xorm/tidb:21e4919"
	"github.com/ngaut/log:cec23d3"
	"github.com/pingcap/tidb:5a3f87d"
	"github.com/boltdb/bolt:583e893" #v1.3.0
	"github.com/juju/errors:6f54ff6"
	"github.com/ngaut/pool:4406601"
	"github.com/pingcap/check:ce8a2f8"
	"github.com/pingcap/go-hbase:7a98d1f"
	"github.com/pingcap/go-themis:dbb9966"
	"github.com/syndtr/goleveldb:6ae1797"
	"github.com/twinj/uuid:b505f2c"
	"github.com/golang/protobuf:1f49d83"
	"github.com/golang/snappy:d9eb7a3"
	"github.com/ngaut/go-zookeeper:9c3719e"
	"github.com/ngaut/tso:118f6c1"
	"github.com/ngaut/deadline:fae8f9d"

	# Unit testing
	"github.com/golang/crypto:f160b6b -> golang.org/x"
	"github.com/smartystreets/goconvey:5db88ed"
	"github.com/smartystreets/assertions:2063fd1"
	"github.com/jtolds/gls:8ddce2a"
)

inherit user golang-single

DESCRIPTION="Gogs is a self-hosted Git service written in Go"
HOMEPAGE="https://gogs.io"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE_CACHE_ADAPTER="redis memcached"
IUSE_DATABASE_ADAPTER="mysql postgres +sqlite tidb"
IUSE="$IUSE_DATABASE_ADAPTER $IUSE_CACHE_ADAPTER pam +ssl"

REQUIRED_USE="|| ( sqlite tidb mysql postgres )"

DEPEND=">=dev-go/go-bindata-3.0.7
	sqlite? ( dev-db/sqlite:3 )
	redis? ( dev-db/redis )
	tidb? ( dev-db/tidb )
	memcached? ( net-misc/memcached )"
RDEPEND="${DEPEND}
	app-shells/bash
	dev-vcs/git[curl,threads]
	pam? ( virtual/pam )
	ssl? ( net-misc/openssh )
	mysql? ( virtual/mysql )
	postgres? ( dev-db/postgresql[pam?,ssl?] )"

USER_NAME="gogs"
USER_DIR="/var/lib/${USER_NAME}"
LOG_DIR="/var/log/${PN}"
THEME_DIR="/usr/share/theme/${PN}"

pkg_setup() {
	enewgroup ${USER_NAME}
	enewuser ${USER_NAME} -1 /bin/bash "${USER_DIR}" ${USER_NAME}
}

src_prepare() {
	golang-single_src_prepare

	sed -i \
		-e "s:^# NEVER EVER.*::" \
		-e "s:^# PLEASE MAKE.*::" \
		-e "s:^RUN_USER =.*:RUN_USER = ${USER_NAME}:" \
		-e "s:^RUN_MODE =.*:RUN_MODE = prod:" \
		-e "s:^ROOT =.*:ROOT = ${EPREFIX}${USER_DIR}/repositories:" \
		-e "s:^HTTP_ADDR =.*:HTTP_ADDR = 127.0.0.1:" \
		-e "s:^OFFLINE_MODE =.*:OFFLINE_MODE = true:" \
		-e "s:^DISABLE_ROUTER_LOG =.*:DISABLE_ROUTER_LOG = true:" \
		-e "s:^STATIC_ROOT_PATH =.*:STATIC_ROOT_PATH = ${EPREFIX}${THEME_DIR}:" \
		-e "s:^PATH = data/gogs.db:PATH = ${EPREFIX}${USER_DIR}/database/${PN}.db:" \
		-e "s:^DISABLE_GRAVATAR =.*:DISABLE_GRAVATAR = true:" \
		-e "s:^ROOT_PATH =.*:ROOT_PATH = ${EPREFIX}${LOG_DIR}:" \
		conf/app.ini || die

	# Fallback for sqlite as main backend
	if use sqlite; then
		sed -i \
			-e "s:^DB_TYPE = mysql.*:DB_TYPE = sqlite3:" \
			conf/app.ini || die
	fi

}

src_compile() {
	ebegin "Building binary data"
		go-bindata \
			-nomemcopy \
			-o=modules/bindata/bindata.go \
			-ignore="\\.DS_Store|README" \
			-pkg=bindata \
			conf/... || die
	eend

	GOLANG_PKG_TAGS=""

	use sqlite && GOLANG_PKG_TAGS+=" sqlite"
	use redis && GOLANG_PKG_TAGS+=" redis"
	use tidb && GOLANG_PKG_TAGS+=" tidb"
	use memcached && GOLANG_PKG_TAGS+=" memcache"
	use ssl && GOLANG_PKG_TAGS+=" cert"
	use pam && GOLANG_PKG_TAGS+=" pam"

	golang-single_src_compile
}

src_install() {
	golang-single_src_install

	newinitd "${FILESDIR}"/${PN}.initd ${PN}

	# Install configuration files
	insinto ${USER_DIR}/custom/conf
	insopts -m640
	doins conf/app.ini

	# Install HTTPS certs
	if use ssl; then
		keepdir ${USER_DIR}/custom/https
	fi

	# Fix permissions of config files
	keepdir ${USER_DIR}/custom
	fowners -R ${USER_NAME}:${USER_NAME} ${USER_DIR}/custom

	# Install theme files
	insinto ${THEME_DIR}
	insopts -m440
	doins -r public/
	doins -r templates/
	fowners -R ${USER_NAME}:${USER_NAME} ${THEME_DIR}

	# Create log directory
	keepdir ${LOG_DIR}
	fowners -R ${USER_NAME}:${USER_NAME} ${LOG_DIR}
}

src_test() {
	if has sandbox $FEATURES && has network-sandbox $FEATURES; then
		eerror "Some tests require 'sandbox', and 'network-sandbox' to be disabled in FEATURES."
	fi

	golang-single_src_test
}
