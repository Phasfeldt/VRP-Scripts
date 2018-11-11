
description "vRP Bankrøveri"

dependency "vrp"

client_scripts{ 
  "cfg/robbery.lua",
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "cfg/robbery.lua",
  "server.lua"
}