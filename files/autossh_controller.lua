--[[
 Copyright (C) 2015 OpenWrt-dist
 Copyright (C) 2015 Jian Chang <aa65535@live.com>

 This is free software, licensed under the GNU General Public License v3.
 See /LICENSE for more information.
]]--

module("luci.controller.autossh", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/autossh") then
		return
	end

	entry({"admin", "services", "autossh"}, cbi("autossh"), _("AutoSSH"), 60).dependent = true
end
