execute align xzy positioned ~.5 ~ ~.5 summon armor_stand run loot replace entity @s armor.head mine ~ ~ ~ minecraft:shears[minecraft:enchantments={silk_touch:1}]
#execute align xzy positioned ~.5 ~ ~.5 summon falling_block run data modify entity @s BlockState set from entity @n[type=armor_stand,distance=..0] equipment.head.id
execute align xzy positioned ~.5 ~ ~.5 run function iva.esb:api/summon_falling_block with entity @n[type=armor_stand,distance=..0] equipment.head
execute align xzy positioned ~.5 ~ ~.5 run kill @n[type=armor_stand,distance=..0]
execute align xzy positioned ~.5 ~ ~.5 run setblock ~ ~ ~ air