scoreboard players set @s snc.leave 0
tellraw @s ["",{"translate":"aot.patreon","bold":true,"color":"gold"}," ",{"selector":"@s","bold":true,"clickEvent":{"action":"open_url","value":"https://ko-fi.com/fanfo/tiers"},"hoverEvent":{"action":"show_text","value":[{"text":"Click me!","color": "yellow"}]}},{"text":"!","bold":true,"color":"gold"}]
function snc:logic/broadcast/creative
function snc:logic/broadcast/support

attribute @s[tag=!transform] generic.scale base set 1