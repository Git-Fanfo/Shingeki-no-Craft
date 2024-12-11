scoreboard players set @s snc.leave 0

execute if score $intro config matches 1 run tellraw @s ["",{"translate":"aot.patreon","bold":true,"color":"gold"}," ",{"selector":"@s","bold":true,"clickEvent":{"action":"open_url","value":"https://ko-fi.com/fanfo/tiers"},"hoverEvent":{"action":"show_text","value":[{"text":"Click me!","color": "yellow"}]}},{"text":"!","bold":true,"color":"gold"}]
execute if score $intro config matches 1 run function snc:logic/broadcast/creative
execute if score $intro config matches 1 run function snc:logic/broadcast/support

attribute @s[tag=!transform] scale base set 1