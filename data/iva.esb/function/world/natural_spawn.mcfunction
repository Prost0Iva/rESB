execute if entity @s[type=#iva.esb:taiga_creature] store result score #taiga_creature iva.esb.entity_natural_spawn run random value 1..100
execute if entity @s[type=#iva.esb:taiga_creature] at @s if biome ~ ~ ~ #is_taiga if score #taiga_creature iva.esb.entity_natural_spawn matches ..15 run summon marker ~ ~ ~.1 {Tags:[iva.esb.entity.taiga_sapling_spawner]}

execute if entity @s[type=pillager] store result score #pillager iva.esb.entity_natural_spawn run random value 1..100
execute if entity @s[type=pillager] at @s if biome ~ ~ ~ #has_structure/village_snowy if score #pillager iva.esb.entity_natural_spawn matches ..5 run summon marker ~ ~ ~.1 {Tags:[iva.esb.entity.iceologer_spawner]}

execute if entity @s[type=#iva.esb:skeleton] store result score #skeletons iva.esb.entity_natural_spawn run random value 1..100
execute if entity @s[type=#iva.esb:skeleton] at @s if biome ~ ~ ~ #has_structure/village_snowy if score #skeletons iva.esb.entity_natural_spawn matches ..10 run summon marker ~ ~ ~.1 {Tags:[iva.esb.entity.bonebeak_spawner]}

execute if entity @s[type=squid] store result score #squid iva.esb.entity_natural_spawn run random value 1..100
execute if entity @s[type=squid] at @s if biome ~ ~ ~ #is_ocean if score #squid iva.esb.entity_natural_spawn matches ..5 run summon marker ~ ~ ~.2 {Tags:[iva.esb.entity.jellyfish_spawner]}
execute if entity @s[type=squid] at @s if biome ~ ~ ~ #is_ocean if score #squid iva.esb.entity_natural_spawn matches ..5 run summon marker ~-.1 ~ ~-.1 {Tags:[iva.esb.entity.jellyfish_spawner]}
execute if entity @s[type=squid] at @s if biome ~ ~ ~ #is_ocean if score #squid iva.esb.entity_natural_spawn matches ..5 run summon marker ~.1 ~ ~-.1 {Tags:[iva.esb.entity.jellyfish_spawner]}

tag @s add iva.esb.spawn_checked