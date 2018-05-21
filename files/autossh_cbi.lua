--[[
 Copyright (C) 2015 Jian Chang <aa65535@live.com>

 This is free software, licensed under the GNU General Public License v3.
 See /LICENSE for more information.
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

o = s:option(Value, "AUTOSSH_FIRST_POLL", translate("AUTOSSH_FIRST_POLL"))
o.datatype    = "uinteger"

o = s:option(Value, "AUTOSSH_GATETIME", translate("AUTOSSH_GATETIME"))
o.placeholder = 30
o.datatype    = "uinteger"

o = s:option(Value, "AUTOSSH_LOGLEVEL", translate("AUTOSSH_LOGLEVEL"))
o.datatype    = "and(uinteger,max(7))"

o = s:option(Value, "AUTOSSH_LOGFILE", translate("AUTOSSH_LOGFILE"))

o = s:option(Value, "AUTOSSH_MAXLIFETIME", translate("AUTOSSH_MAXLIFETIME"))

o = s:option(Value, "AUTOSSH_MAXSTART", translate("AUTOSSH_MAXSTART"))
o.placeholder = -1
o.datatype    = "integer"

o = s:option(Value, "AUTOSSH_MESSAGE", translate("AUTOSSH_MESSAGE"))

o = s:option(Value, "AUTOSSH_PATH", translate("AUTOSSH_PATH"))

o = s:option(Value, "AUTOSSH_PIDFILE", translate("AUTOSSH_PIDFILE"))

o = s:option(Value, "AUTOSSH_POLL", translate("AUTOSSH_POLL"))
o.placeholder = 600
o.datatype    = "uinteger"

o = s:option(Value, "AUTOSSH_PORT", translate("AUTOSSH_PORT"))
o.datatype    = "port"

return m
