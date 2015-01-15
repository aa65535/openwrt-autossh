--[[
LuCI - Lua Configuration Interface
]]--

m = Map("autossh", translate("AutoSSH"),
	translate("设置路由器的 SSH 反向隧道"))

s = m:section(TypedSection, "autossh", translate("AutoSSH 设置"))
s.anonymous   = true
s.addremove   = true

o = s:option(Flag, "enabled", translate("Enable"))
o.default     = o.enabled
o.rmempty     = false

o = s:option(Value, "localport", translate("本地端口"))
o.placeholder = 22
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "remoteport", translate("远程端口"))
o.placeholder = 19999
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "monitorport", translate("监视端口"))
o.datatype    = "port"
o.rmempty     = false

o = s:option(Value, "ssh", translate("远程登陆"))
o.rmempty     = false

o = s:option(Value, "poll", translate("轮询时间"))
o.placeholder = 600
o.default     = 600
o.datatype    = "uinteger"

return m
