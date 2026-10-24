execute store result score #gametime iva.esb.entity_animation run time query gametime
scoreboard players operation #gametime iva.esb.entity_animation %= #24000 iva.esb.const

execute as @a unless score @s iva.esb.entity_id matches -2147483648..2147483647 run scoreboard players add #id iva.esb.entity_id 1
execute as @a unless score @s iva.esb.entity_id matches -2147483648..2147483647 run scoreboard players operation @s iva.esb.entity_id = #id iva.esb.entity_id

function iva.esb:entity/jellyfish/jellyfish
function iva.esb:entity/taiga_sapling/taiga_sapling
function iva.esb:entity/copper_golem/copper_golem
function iva.esb:entity/iceologer/iceologer
function iva.esb:entity/bonebeak/bonebeak
function iva.esb:entity/frostybeak/frostybeak