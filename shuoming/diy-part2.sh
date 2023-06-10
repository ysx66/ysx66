#!/bin/bash


# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 替换默认主题,并移除其他主题依赖
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/+luci-theme-bootstrap//g' package/feeds/luci/luci-nginx/Makefile
sed -i 's/+luci-theme-bootstrap//g' package/feeds/luci/luci-ssl-nginx/Makefile

# Set DISTRIB_REVISION
sed -i "s/OpenWrt /TIAmo Build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
