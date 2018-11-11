--Settings--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPdt = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_detector")
DTclient = Tunnel.getInterface("vrp_detector","vrp_detector")
Tunnel.bindInterface("vrp_detector",vRPdt)


function vRPdt.check()
	local source = source
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local cop = vRP.hasGroup({user_id,"police"})
    local ems = vRP.hasGroup({user_id,"ems"})
    
	if cop or ems then
      -- Noget her måske?
	else
      DTclient.fejl(player)
    end
end