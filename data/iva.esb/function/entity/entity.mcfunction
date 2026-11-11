execute store result score #gametime iva.esb.entity_animation run time query gametime
scoreboard players operation #gametime iva.esb.entity_animation %= #24000 iva.esb.const

execute as @a unless score @s iva.esb.entity_id matches -2147483648..2147483647 run scoreboard players add #id iva.esb.entity_id 1
execute as @a unless score @s iva.esb.entity_id matches -2147483648..2147483647 run scoreboard players operation @s iva.esb.entity_id = #id iva.esb.entity_id

execute as @e[tag=iva.esb.boss] run function iva.esb:entity/bossbar

function iva.esb:entity/projectile/projectile

#jellyfish
execute as @e[type=cod,nbt={CustomName:{translate:"iva.esb:item.jellyfish_bucket"}}] run function iva.esb:entity/jellyfish/spawn
execute as @e[type=marker,tag=iva.esb.entity.jellyfish_spawner] run function iva.esb:entity/jellyfish/spawn
function iva.esb:entity/jellyfish/jellyfish

#taiga_sapling
execute as @e[type=marker,tag=iva.esb.entity.taiga_sapling_spawner] run function iva.esb:entity/taiga_sapling/spawn
function iva.esb:entity/taiga_sapling/taiga_sapling

#copper_golem
execute as @e[type=marker,tag=iva.esb.entity.copper_golem_spawner] run function iva.esb:entity/copper_golem/spawn
function iva.esb:entity/copper_golem/attack/attack
execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.copper_golem] at @s run function iva.esb:entity/copper_golem/animation/animation
execute as @e[type=parched,tag=iva.esb.entity_brain,tag=iva.esb.entity.copper_golem] run function iva.esb:entity/copper_golem/copper_golem

#iceologer
execute as @e[type=marker,tag=iva.esb.entity.iceologer_spawner] run function iva.esb:entity/iceologer/spawn
function iva.esb:entity/iceologer/attack/attack
function iva.esb:entity/iceologer/iceologer

#bonebeak
execute as @e[type=marker,tag=iva.esb.entity.bonebeak_spawner] run function iva.esb:entity/bonebeak/spawn
execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.bonebeak] at @s run function iva.esb:entity/bonebeak/animation/animation
execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.bonebeak] at @s run function iva.esb:entity/bonebeak/bonebeak

#frostybeak
execute as @e[type=marker,tag=iva.esb.entity.frostybeak_spawner] run function iva.esb:entity/frostybeak/spawn
function iva.esb:entity/frostybeak/attack/attack
execute as @e[type=item_display,tag=iva.esb.entity_model,tag=iva.esb.entity.frostybeak] at @s run function iva.esb:entity/frostybeak/animation/animation
execute as @e[type=vex,tag=iva.esb.entity_brain,tag=iva.esb.entity.frostybeak] at @s run function iva.esb:entity/frostybeak/frostybeak
