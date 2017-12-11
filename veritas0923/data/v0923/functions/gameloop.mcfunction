#store coords for players
execute as @a store result score @s coords_x run data get entity @s Pos[0]
execute as @a store result score @s coords_y run data get entity @s Pos[1]
execute as @a store result score @s coords_z run data get entity @s Pos[2]
#increment tick count
scoreboard players add @a loopcnt 1
#display tickcount on sidebar
scoreboard objectives setdisplay sidebar loopcnt
#if tick count is greater than 100, reset it
execute as @a run execute if score @s loopcnt > @s hundred run scoreboard players set @s loopcnt 0