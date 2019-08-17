#Redstone Pickaxe Recipe
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run give @p minecraft:iron_pickaxe{display:{Name:"{\"text\":\"Redstone Pickaxe\",\"color\":\"white\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Rechargeable advanced pickaxe\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,RepairCost:10000,Damage:250,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:efficiency",lvl:0s}],id_rs_libera:"redstone_pickaxe"} 1
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#Redstone Pickaxe Use
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}}] store result score @p rs_libera_dmg run data get entity @p SelectedItem.tag.Damage
scoreboard players remove @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=1..,rs_libera_snk=1..}] rs_libera_dmg 10
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=..-1}] rs_libera_dmg 0
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=1..,rs_libera_snk=1..}] minecraft:redstone_block 1
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_snk=1..}] store result entity @p SelectedItem.tag.Damage short 1 run scoreboard players get @p rs_libera_dmg
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=..248}] store result entity @p SelectedItem.tag.Enchantments[0].lvl short 1 run scoreboard players get @p rs_libera_0
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=..248}] store result entity @p SelectedItem.tag.Enchantments[1].lvl short 1 run scoreboard players get @p rs_libera_10
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=249..}] store result entity @p SelectedItem.tag.Enchantments[0].lvl short 1 run scoreboard players get @p rs_libera_32767
execute at @a[nbt={SelectedItem:{tag:{id_rs_libera:"redstone_pickaxe"}}},scores={rs_libera_dmg=249..}] store result entity @p SelectedItem.tag.Enchantments[1].lvl short 1 run scoreboard players get @p rs_libera_0

#Sneak Detect
scoreboard players remove @a[scores={rs_libera_snk=1..}] rs_libera_snk 1