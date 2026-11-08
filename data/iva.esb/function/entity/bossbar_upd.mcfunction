$execute at @s run bossbar set $(temp_id) players @a[distance=..64]
$execute store result bossbar $(temp_id) value run scoreboard players get @s iva.esb.entity_health