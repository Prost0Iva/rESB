execute unless block ~ ~ ~ barrel run function iva.esb:block/alchemy_table/destroy
execute if block ~ ~-1 ~ hopper run setblock ~ ~-1 ~ air destroy
execute positioned ~.5 ~ ~.5 run function iva.esb:block/alchemy_table/slots
#execute positioned ~.5 ~ ~.5 if block ~ ~ ~ barrel[open=true] run function iva.esb:block/alchemy_table/craft_list