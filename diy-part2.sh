#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.5.2/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Add luci-theme-argon
#rm -rf feeds/luci/themes/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

# 全能推送
git clone https://github.com/zzsj0928/luci-app-pushbot.git package/luci-app-pushbot

# Mihomo TProxy
#git clone https://github.com/morytyann/OpenWrt-mihomo.git package/mihomo

# 调整 netdata 到 状态 菜单
sed -i 's/"system"/"status"/g' feeds/luci/applications/luci-app-netdata/luasrc/controller/*.lua

# 调整 filebrowser 到 系统 菜单
sed -i 's/services/system/g' feeds/luci/applications/luci-app-filebrowser/root/usr/share/luci/menu.d/*.json

# 调整 nlbwmon 到 一级 菜单
#sed -i 's/services\///g' feeds/luci/applications/luci-app-nlbwmon/htdocs/luci-static/resources/view/nlbw/*.js
#sed -i 's/services\///g' feeds/luci/applications/luci-app-nlbwmon/root/usr/share/luci/menu.d/*.json
