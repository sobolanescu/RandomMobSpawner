scoreboard objectives add spawn_active dummy
scoreboard objectives add show_countdown dummy

execute as @a run title @s title ["",{"text":"RMS","color":"dark_green","bold":true}]
execute as @a run title @s subtitle ["",{"text":"RANDOM MOB SPAWNER","color":"gold","bold":true}]

scoreboard objectives add random_mob_timer dummy
scoreboard objectives add random_mob_choice dummy
scoreboard objectives add countdown dummy "Countdown"
scoreboard objectives add tick_timer dummy
