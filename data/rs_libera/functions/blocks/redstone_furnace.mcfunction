#Create
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run playsound minecraft:block.anvil.place block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=north] run setblock ~ ~-1 ~ minecraft:furnace[facing=north]{CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=south] run setblock ~ ~-1 ~ minecraft:furnace[facing=south]{CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=west] run setblock ~ ~-1 ~ minecraft:furnace[facing=west]{CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=east] run setblock ~ ~-1 ~ minecraft:furnace[facing=east]{CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace run data merge block ~ ~-1 ~ {CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,Tags:["Redstone_Furnace_Core"],Item:{id:"minecraft:orange_stained_glass_pane",Count:1b}}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run kill @s

#Drop Fuel
execute at @e[tag=Redstone_Furnace_Core] if block ~ ~-1 ~ minecraft:furnace{Items:[{Slot:1b}]} run summon minecraft:item ~ ~ ~ {Tags:["rs_furnace_fuel"],Health:32767,PickupDelay:32767,Item:{id:"minecraft:debug_stick",Count:1b}}
execute at @e[type=item,tag=rs_furnace_fuel] run data modify entity @s Item set from block ~ ~-1 ~ Items[{Slot:1b}]
execute at @e[type=item,tag=rs_furnace_fuel,nbt=!{Item:{id:"minecraft:debug_stick",Count:1b}}] run data merge entity @s {PickupDelay:20s}
execute at @e[type=item,tag=rs_furnace_fuel,nbt=!{Item:{id:"minecraft:debug_stick",Count:1b}}] run data remove block ~ ~-1 ~ Items[{Slot:1b}]

#Destroy
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:furnace",Count:1b}}]
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:furnace",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_block",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run kill @s
