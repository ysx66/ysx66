module("luci.controller.rebootschedule", package.seeall)
function index()
	if not nixio.fs.access("/etc/config/rebootschedule") then
		return
	end
	
	entry({"admin", "services", "rebootschedule"}, cbi("rebootschedule"), "定时任务", 20).dependent = true
end



