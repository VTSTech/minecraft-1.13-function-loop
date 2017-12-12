#increment tick count
scoreboard players add @a loopcnt 1
#if tick count is greater than 100, reset it
execute as @a[scores={loopcnt=100..}] run scoreboard players set @s loopcnt 0