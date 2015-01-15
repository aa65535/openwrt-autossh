--[[
LuCI - Lua Configuration Interface
]]--

module("luci.controller.autossh", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/autossh") then
		return
	end

	entry({"admin", "services", "autossh"}, cbi("autossh"), _("AutoSSH"), 60).dependent = true
end
