# Recipe Main
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Redstone Pickaxe\",\"color\":\"white\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Rechargeable advanced pickaxe\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,RepairCost:10000,Damage:249,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:efficiency",lvl:0s}],rs_libera:{id:"redstone_pickaxe"}}},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Redstone Pickaxe\",\"color\":\"white\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Rechargeable advanced pickaxe\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,RepairCost:10000,Damage:249,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:efficiency",lvl:0s}],rs_libera:{id:"redstone_pickaxe"}}},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run give @p minecraft:diamond_pickaxe{display:{Name:"{\"text\":\"Crystal Redstone Pickaxe\",\"color\":\"cyan\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Rechargeable and long-lasting pickaxe\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,RepairCost:10000,Damage:1560,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:efficiency",lvl:0s}],rs_libera:{id:"crystal_redstone_pickaxe", redtron:true}} 1
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:iron_pickaxe",Count:1b,tag:{display:{Name:"{\"text\":\"Redstone Pickaxe\",\"color\":\"white\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Rechargeable advanced pickaxe\",\"color\":\"gray\",\"italic\":false}"]},HideFlags:1,RepairCost:10000,Damage:249,Enchantments:[{id:"minecraft:unbreaking",lvl:32767s},{id:"minecraft:efficiency",lvl:0s}],rs_libera:{id:"redstone_pickaxe"}}},{Slot:7b,id:"minecraft:redstone_block",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

# Main
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}}] store result score @p rs_libera_dmg run data get entity @p SelectedItem.tag.Damage
scoreboard players remove @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=1..,rs_libera_snk=1..}] rs_libera_dmg 25
scoreboard players set @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=..-1}] rs_libera_dmg 0
clear @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:redstone_block"}],SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=1..,rs_libera_snk=1..}] minecraft:redstone_block 1
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_snk=1..}] store result entity @p SelectedItem.tag.Damage short 1 run scoreboard players get @p rs_libera_dmg
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=..1559}] store result entity @p SelectedItem.tag.Enchantments[0].lvl short 0 run scoreboard players get @p rs_libera_one
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=..1559}] store result entity @p SelectedItem.tag.Enchantments[1].lvl short 10 run scoreboard players get @p rs_libera_one
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=1560..}] store result entity @p SelectedItem.tag.Enchantments[0].lvl short 32767 run scoreboard players get @p rs_libera_one
execute at @a[nbt={SelectedItem:{tag:{rs_libera:{id:"crystal_redstone_pickaxe"}}}},scores={rs_libera_dmg=1560..}] store result entity @p SelectedItem.tag.Enchantments[1].lvl short 0 run scoreboard players get @p rs_libera_one
