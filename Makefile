include $(TOPDIR)/rules.mk

PKG_NAME:=minieap-kana
PKG_VERSION:=0.93
PKG_RELEASE:=3
PKG_MAINTAINER:=Kana <2674771438@qq.com>
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/ZenZRyan/minieap.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=9e10f320a9fce46c8f4286324a0fc70e572f61dc
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
	SECTION:=net
	CATEGORY:=Network
	TITLE:=Extensible 802.1x client with Ruijie v3 (v4) plugin
	MAINTAINER:=updateing
	URL:=https://github.com/ZenZRyan
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/minieap $(1)/usr/sbin/

	$(INSTALL_DIR) $(1)/lib/netifd/proto
	$(INSTALL_BIN) ./files/minieap.sh $(1)/lib/netifd/proto/
	$(INSTALL_BIN) ./files/minieap.script $(1)/lib/netifd/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
