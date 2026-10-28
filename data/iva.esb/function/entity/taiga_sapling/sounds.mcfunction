scoreboard players remove @s iva.esb.entity_sounds_freq 1
execute if score @s iva.esb.entity_sounds_freq matches ..0 run playsound minecraft:block.leaf_litter.step hostile @a ~ ~ ~ 1 .8
execute if score @s iva.esb.entity_sounds_freq matches ..0 store result score @s iva.esb.entity_sounds_freq run random value 30..90
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.leaf_litter.break hostile @a ~ ~ ~ 1 .8