execute as @e[type=cod,nbt={CustomName:{translate:"iva.esb:item.jellyfish_bucket"}}] at @s run function iva.esb:entity/jellyfish/summon
execute as @e[type=cod,nbt={CustomName:{translate:"iva.esb:item.jellyfish_bucket"}}] run tp ~ ~-500 ~

execute as @e[type=marker,tag=iva.esb.entity.jellyfish_spawner] at @s run function iva.esb:entity/jellyfish/summon
execute as @e[type=marker,tag=iva.esb.entity.jellyfish_spawner] run kill