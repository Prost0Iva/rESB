execute if block ~ ~ ~ spruce_door[open=false,hinge=right] run data modify entity @s item.components.minecraft:custom_model_data set value {strings:["door_right"]}
execute if block ~ ~ ~ spruce_door[open=true,hinge=right] run data modify entity @s item.components.minecraft:custom_model_data set value {strings:["door_right_open"]}
execute if block ~ ~ ~ spruce_door[open=false,hinge=left] run data modify entity @s item.components.minecraft:custom_model_data set value {strings:["door_left"]}
execute if block ~ ~ ~ spruce_door[open=true,hinge=left] run data modify entity @s item.components.minecraft:custom_model_data set value {strings:["door_left_open"]}
