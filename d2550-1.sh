#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git gecoosac https://github.com/lwb1978/openwrt-gecoosac' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#echo 'src-git lienol https://github.com/Lienol/openwrt-package' >>feeds.conf.default
