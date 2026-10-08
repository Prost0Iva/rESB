scoreboard players set $hit iva.esb.entity_hit_detection_id 0
execute if entity @s[advancements={iva.esb:api/hit_detection={bit0=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 1
execute if entity @s[advancements={iva.esb:api/hit_detection={bit1=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 2
execute if entity @s[advancements={iva.esb:api/hit_detection={bit2=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 4
execute if entity @s[advancements={iva.esb:api/hit_detection={bit3=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 8
execute if entity @s[advancements={iva.esb:api/hit_detection={bit4=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 16
execute if entity @s[advancements={iva.esb:api/hit_detection={bit5=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 32
execute if entity @s[advancements={iva.esb:api/hit_detection={bit6=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 64
execute if entity @s[advancements={iva.esb:api/hit_detection={bit7=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 128
execute if entity @s[advancements={iva.esb:api/hit_detection={bit8=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 256
execute if entity @s[advancements={iva.esb:api/hit_detection={bit9=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 512
execute if entity @s[advancements={iva.esb:api/hit_detection={bit10=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 1024
execute if entity @s[advancements={iva.esb:api/hit_detection={bit11=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 2048
execute if entity @s[advancements={iva.esb:api/hit_detection={bit12=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 4096
execute if entity @s[advancements={iva.esb:api/hit_detection={bit13=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 8192
execute if entity @s[advancements={iva.esb:api/hit_detection={bit14=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 16384
execute if entity @s[advancements={iva.esb:api/hit_detection={bit15=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 32768
execute if entity @s[advancements={iva.esb:api/hit_detection={bit16=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 65536
execute if entity @s[advancements={iva.esb:api/hit_detection={bit17=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 131072
execute if entity @s[advancements={iva.esb:api/hit_detection={bit18=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 262144
execute if entity @s[advancements={iva.esb:api/hit_detection={bit19=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 524288
execute if entity @s[advancements={iva.esb:api/hit_detection={bit20=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 1048576
execute if entity @s[advancements={iva.esb:api/hit_detection={bit21=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 2097152
execute if entity @s[advancements={iva.esb:api/hit_detection={bit22=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 4194304
execute if entity @s[advancements={iva.esb:api/hit_detection={bit23=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 8388608
execute if entity @s[advancements={iva.esb:api/hit_detection={bit24=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 16777216
execute if entity @s[advancements={iva.esb:api/hit_detection={bit25=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 33554432
execute if entity @s[advancements={iva.esb:api/hit_detection={bit26=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 67108864
execute if entity @s[advancements={iva.esb:api/hit_detection={bit27=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 134217728
execute if entity @s[advancements={iva.esb:api/hit_detection={bit28=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 268435456
execute if entity @s[advancements={iva.esb:api/hit_detection={bit29=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 536870912
execute if entity @s[advancements={iva.esb:api/hit_detection={bit30=true}}] run scoreboard players add $hit iva.esb.entity_hit_detection_id 1073741824
execute if entity @s[advancements={iva.esb:api/hit_detection={bit31=true}}] run scoreboard players operation $hit iva.esb.entity_hit_detection_id *= #-1 iva.esb.const
execute as @e if score @s iva.esb.entity_hit_detection_id = $hit iva.esb.entity_hit_detection_id run say 1
