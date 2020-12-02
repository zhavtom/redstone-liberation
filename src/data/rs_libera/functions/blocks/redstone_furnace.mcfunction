#Create
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run playsound minecraft:block.anvil.place block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 1 2
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=north]{Items:[]} run setblock ~ ~-1 ~ minecraft:furnace[facing=north]{CustomName:'{"text":"Redstone Furnace","color":"dark_gray","italic":false}'}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=south]{Items:[]} run setblock ~ ~-1 ~ minecraft:furnace[facing=south]{CustomName:'{"text":"Redstone Furnace","color":"dark_gray","italic":false}'}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=west]{Items:[]} run setblock ~ ~-1 ~ minecraft:furnace[facing=west]{CustomName:'{"text":"Redstone Furnace","color":"dark_gray","italic":false}'}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace[facing=east]{Items:[]} run setblock ~ ~-1 ~ minecraft:furnace[facing=east]{CustomName:'{"text":"Redstone Furnace","color":"dark_gray","italic":false}'}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace run data merge block ~ ~-1 ~ {CustomName:"{\"text\":\"Redstone Furnace\",\"color\":\"dark_gray\",\"italic\":false}"}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run summon minecraft:item_frame ~ ~ ~ {Facing:1b,Invulnerable:1b,Tags:["Redstone_Furnace_Core"],Item:{id:"minecraft:orange_stained_glass_pane",Count:1b},rs_libera:{id:"redstone_furnace",redtron:true}}
execute as @e[type=minecraft:item_frame,nbt={Facing:1b,Item:{id:"minecraft:redstone_block"}}] at @s if block ~ ~-1 ~ minecraft:furnace{Items:[]} run kill @s

execute at @e[tag=Redstone_Furnace_Core,nbt={ItemRotation:1b}] run playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1 0.7

#Destroy
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:furnace",Count:1b}}]
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:furnace",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:redstone_block",Count:1b}}
execute as @e[tag=Redstone_Furnace_Core] at @s unless block ~ ~-1 ~ furnace run kill @s
