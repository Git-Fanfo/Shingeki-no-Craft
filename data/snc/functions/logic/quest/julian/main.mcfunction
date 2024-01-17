advancement revoke @s only snc:human/npc/julian
playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1.15
scoreboard players enable @s messages

## MENU
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n★═━「","color":"gold","bold": true},{"translate":"Actions","bold": true},{"text":"」━═★","color":"gold","bold": true}]
tellraw @s ["   ● ",{"translate":"Talk.","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger messages set 1013"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"aqua"}]}}]
execute if score @s julian matches -10.. run tellraw @s ["   ● ",{"translate":"Gift.","color":"green","clickEvent":{"action":"run_command","value":"/trigger messages set 1012"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.gift","color":"aqua"}]}}]
execute if score @s julian matches 10.. run tellraw @s ["   ● ",{"translate":"Follow.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger messages set 10"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"aqua"}]}}]
execute if score @s[tag=woman] julian matches 30.. run tellraw @s ["   ● ",{"translate":"Baby?","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger messages set 11"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.baby","color":"aqua"}]}}]
execute if score @s[tag=!woman] julian matches 30.. run tellraw @s ["   ● ",{"translate":"Love?","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger messages set 11"}}]
tellraw @s ""

## 0..9
execute if score @s julian matches 0..9 store result score @s random run random value 1..10
execute if score @s julian matches 0..9 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 1 force
execute if score @s random matches 1 run tellraw @s ["<Julian> ","Ah, hello! It's always nice to see someone with an interest in the wonders of nature."]
execute if score @s random matches 2 run tellraw @s ["<Julian> ","I find solace in the pages of a good book, and it's nice to know I'm not the only one."]
execute if score @s random matches 3 run tellraw @s ["<Julian> ","If you ever need recommendations for books to read, I'd be more than happy to share my favorites with you."]
execute if score @s random matches 4 run tellraw @s ["<Julian> ","I've always admired people who appreciate the beauty of insects and their role in our ecosystem."]
execute if score @s random matches 5 run tellraw @s ["<Julian> ","If you ever need any advice on plants, feel free to ask. I'd be happy to share what I know."]
execute if score @s random matches 6 run tellraw @s ["<Julian> ","I hope you don't mind my company."]
execute if score @s random matches 7 run tellraw @s ["<Julian> ","I enjoy talking to someone who appreciates the little wonders in life."]
execute if score @s random matches 8 run tellraw @s ["<Julian> ","You have a calming presence. It's a breath of fresh air in this bustling world."]
execute if score @s random matches 9 run tellraw @s ["<Julian> ","Thank you for being kind to others around you. It's a rare trait these days."]
execute if score @s random matches 10 run tellraw @s ["<Julian> ","Your genuine nature makes it easy to talk to you. I appreciate that."]
scoreboard players reset @s random

## 10..19
execute if score @s julian matches 10..19 store result score @s random run random value 1..10
execute if score @s julian matches 10..14 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 2 force
execute if score @s julian matches 15..19 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 3 force
execute if score @s random matches 1 run tellraw @s ["<Julian> ","If you're interested, I could show you some rare plant specimens I've collected over time."]
execute if score @s random matches 2 run tellraw @s ["<Julian> ","Thanks for being patient with me whenever I dive too deep into my insect-related facts. I can get carried away sometimes."]
execute if score @s random matches 3 run tellraw @s ["<Julian> ","Want to go for a walk in the park later? I'd love to show you some interesting plants I spotted there."]
execute if score @s random matches 4 run tellraw @s ["<Julian> ","I've been reading this fascinating book lately, and I thought you might enjoy discussing it with me."]
execute if score @s random matches 5 run tellraw @s ["<Julian> ","Hey, it's great to see you again! I was hoping we could explore the library together sometime."]
execute if score @s random matches 6 run tellraw @s ["<Julian> ","Want to join me for a cup of tea? I've found this cozy spot with a beautiful view of the garden."]
execute if score @s random matches 7 run tellraw @s ["<Julian> ","I believe sincerity and honesty are essential traits in any person, and you seem to embody them."]
execute if score @s random matches 8 run tellraw @s ["<Julian> ","Do you mind if I borrow your favorite novel? I want to see what captured your heart."]
execute if score @s random matches 9 run tellraw @s ["<Julian> ","I'm grateful to have you as a friend. Your kindness means a lot to me."]
execute if score @s random matches 10 run tellraw @s ["<Julian> ","If you ever need someone to talk to or just want to explore the world, count me in!"]
scoreboard players reset @s random

## 20..29
execute if score @s julian matches 20..29 store result score @s random run random value 1..10
execute if score @s julian matches 20..24 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 4 force
execute if score @s julian matches 25..29 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 5 force
execute if score @s random matches 1 run tellraw @s ["<Julian> ","I noticed you mentioning your love for art the other day. I know this underrated gallery not many people know about, and I'd love to take you there sometime."]
execute if score @s random matches 2 run tellraw @s ["<Julian> ","It’s nice finding someone who can appreciate the silence in a good museum as much as I do. Maybe we could seek out some hidden gems together?"]
execute if score @s random matches 3 run tellraw @s ["<Julian> ","I remember you said you're into music. I know a place near the town hall I think you’d adore. Care to join me this weekend?"]
execute if score @s random matches 4 run tellraw @s ["<Julian> ","Each time we talk, I learn something new and intriguing. How about we swap favorite books sometime? I’d be interested to know what stories have captured your imagination."]
execute if score @s random matches 5 run tellraw @s ["<Julian> ","Have you ever tried stargazing? I’d like to share that with someone who appreciates the universe’s beauty as much as I think you might."]
execute if score @s random matches 6 run tellraw @s ["<Julian> ","Cooking can be more fun with two. What say we pick some exotic recipes and give them a whirl one evening?"]
execute if score @s random matches 7 run tellraw @s ["<Julian> ","Your laughter is like my favorite song on repeat. How about we chase some fun and laughter at my garden?"]
execute if score @s random matches 8 run tellraw @s ["<Julian> ","You've got a knack for making even the most ordinary days brighter. How about we make a day of it and chase down the perfect sunset spot together?"]
execute if score @s random matches 9 run tellraw @s ["<Julian> ","Every time you share your thoughts, I find myself in awe of your insight. Maybe we could have a deep conversation over coffee?"]
execute if score @s random matches 10 run tellraw @s ["<Julian> ","I stumbled upon a cozy little bookstore last week and immediately thought of you. Maybe next time, you'd like to come along and see it for yourself?"]
scoreboard players reset @s random

## 30..39
execute if score @s julian matches 30.. store result score @s random run random value 1..10
execute if score @s julian matches 30..34 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 6 force
execute if score @s julian matches 35.. rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 7 force
execute if score @s random matches 1 run tellraw @s ["<Julian> ","Hey love! Did you sleep well? I hope you have a fantastic day ahead."]
execute if score @s random matches 2 run tellraw @s ["<Julian> ","Let's take a walk to the tree this afternoon, just the two of us."]
execute if score @s random matches 3 run tellraw @s ["<Julian> ","I made your favorite dinner tonight. Can't wait to hear what you think of it."]
execute if score @s random matches 4 run tellraw @s ["<Julian> ","I saw this interesting book about insects today and thought of you."]
execute if score @s random matches 5 run tellraw @s ["<Julian> ","You have a natural grace, just like the petals of a flower"]
execute if score @s random matches 6 run tellraw @s ["<Julian> ","I can't believe how fast time flies when we're together. I always lose track of it."]
execute if score @s random matches 7 run tellraw @s ["<Julian> ","Your intelligence and curiosity never cease to amaze me. I love exploring the world with you."]
execute if score @s random matches 8 run tellraw @s ["<Julian> ","No matter what challenges we face, I know we'll overcome them together because our love is strong."]
execute if score @s random matches 9 run tellraw @s ["<Julian> ","You're not just my partner; you're my best friend. I'm so lucky to have you by my side."]
execute if score @s random matches 10 run tellraw @s ["<Julian> ","You know, you have a way of making even the most ordinary things feel extraordinary when we're together"]
scoreboard players reset @s random

## 30..39
#execute if score @s julian matches 30.. if predicate snc:villager/has_bee store result score @s random run random value 1..5
#execute if score @s julian matches 30.. rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 20 force
#execute if score @s random matches 1 run tellraw @s ["<Julian> ","This day couldn't have been any better!"]
#execute if score @s random matches 2 run tellraw @s ["<Julian> ","Wow, that was an amazing experience!"]
#execute if score @s random matches 3 run tellraw @s ["<Julian> ","I can't stop smiling whenever I'm with you!"]
#execute if score @s random matches 4 run tellraw @s ["<Julian> ","You're the best thing that ever happened to me!"]
#execute if score @s random matches 5 run tellraw @s ["<Julian> ","I feel so comfortable around you"]
#scoreboard players reset @s random

## -1.. Bad
execute if score @s julian matches ..-1 store result score @s random run random value 1..5
execute if score @s julian matches -9..-1 rotated ~ 0 run particle angry_villager ^ ^2 ^2 .3 .1 .3 1 1 force
execute if score @s julian matches ..-10 rotated ~ 0 run particle angry_villager ^ ^2 ^2 .3 .1 .3 1 20 force
execute if score @s random matches 1 run tellraw @s ["<Julian> ","I don't mean to be rude, but I'd rather be alone for a little while. I hope you understand."]
execute if score @s random matches 2 run tellraw @s ["<Julian> ","It's great that you have your own world, and I have mine."]
execute if score @s random matches 3 run tellraw @s ["<Julian> ","Sometimes silence speaks volumes…"]
execute if score @s random matches 4 run tellraw @s ["<Julian> ","You don't care about me. You're just here because it's convenient for you."]
execute if score @s random matches 5 run tellraw @s ["<Julian> ","Just go! I don't want to see you right now."]
scoreboard players reset @s random

## Init
execute unless score @s julian matches -2147483648..2147483647 run tellraw @s ["<Julian> ","Oh hey, I have never seen you before, are you new on the village?"]
execute unless score @s julian matches -2147483648..2147483647 run scoreboard players set @s julian 0