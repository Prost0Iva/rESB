tellraw @a [{"text":"Every ","color":"gold","bold":true},{"text":"Single ","color":"#af0a28","bold":true},{"text":"Beast","color":"#1a3a54","bold":true}]
tellraw @a {"text":"Version 0.0.1 by Iva","color":"gray"}
function iva.esb:init/init

#give @p wooden_sword[unbreakable={},attribute_modifiers=[{type:attack_damage,amount:2048,slot:mainhand,id:"iva.esb:item.kill",operation:add_multiplied_total}],tooltip_style="iva.esb:dev",item_model="iva.esb:kill",item_name={translate:"iva.esb:item./kill",color:green,bold:true}]