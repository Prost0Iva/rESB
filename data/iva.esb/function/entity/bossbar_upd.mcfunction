$execute store result bossbar $(bossbar_temp_id) max run data get entity @s attributes[{id:"minecraft:max_health"}].base
$execute store result bossbar $(bossbar_temp_id) value run data get entity @s Health
$bossbar set $(bossbar_temp_id) players @a[distance=..64]