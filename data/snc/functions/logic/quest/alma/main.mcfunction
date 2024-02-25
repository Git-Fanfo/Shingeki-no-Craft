advancement revoke @s only snc:human/npc/alma
playsound minecraft:aot.human.interact player @s ~ ~ ~ 1 1.15
scoreboard players enable @s messages

## MENU
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n★═━「","color":"gold","bold": true},{"translate":"Actions","bold": true},{"text":"」━═★","color":"gold","bold": true}]
tellraw @s ["   ● ",{"translate":"Talk.","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger messages set 1003"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"aqua"}]}}]
execute if score @s alma matches -10.. run tellraw @s ["   ● ",{"translate":"Gift.","color":"green","clickEvent":{"action":"run_command","value":"/trigger messages set 1002"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.gift","color":"aqua"}]}}]
execute if score @s alma matches 10.. run tellraw @s ["   ● ",{"translate":"Follow.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger messages set 10"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.select","color":"aqua"}]}}]
execute if score @s[tag=!woman] alma matches 30.. run tellraw @s ["   ● ",{"translate":"Baby?","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger messages set 11"},"hoverEvent":{"action":"show_text","contents":[{"translate":"aot.config.baby","color":"aqua"}]}}]
execute if score @s[tag=woman] alma matches 30.. run tellraw @s ["   ● ",{"translate":"Love?","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger messages set 11"}}]
tellraw @s ""

## 0..9
execute if score @s alma matches 0..9 store result score @s random run random value 1..10
execute if score @s alma matches 0..9 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 1 force
execute if score @s random matches 1 run tellraw @s ["<Alma> ","It is a beautiful day!"]
execute if score @s random matches 2 run tellraw @s ["<Alma> ","I love the animals"]
execute if score @s random matches 3 run tellraw @s ["<Alma> ","Oh, look at that cute little puppy!"]
execute if score @s random matches 4 run tellraw @s ["<Alma> ","Sometimes, people call me naive, but I prefer to see the best in others"]
execute if score @s random matches 5 run tellraw @s ["<Alma> ","I believe that kindness and sincerity can make the world a better place for everyone"]
execute if score @s random matches 6 run tellraw @s ["<Alma> ","The calmness of nature brings me so much peace and tranquility"]
execute if score @s random matches 7 run tellraw @s ["<Alma> ","I think tanned skin is a sign of fun outdoor adventures and happy memories"]
execute if score @s random matches 8 run tellraw @s ["<Alma> ","I always try to see the good in people, even if they may have made mistakes"]
execute if score @s random matches 9 run tellraw @s ["<Alma> ","Life is full of wonders, and I believe in cherishing every little moment of it"]
execute if score @s random matches 10 run tellraw @s ["<Alma> ","If we all show a little more compassion, the world could become a much better place"]
scoreboard players reset @s random

## 10..19
execute if score @s alma matches 10..19 store result score @s random run random value 1..10
execute if score @s alma matches 10..14 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 2 force
execute if score @s alma matches 15..19 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 3 force
execute if score @s random matches 1 run tellraw @s ["<Alma> ","Hey there! I'm so happy to see you again! How have you been?"]
execute if score @s random matches 2 run tellraw @s ["<Alma> ","Hahaha! You're a real treasure in my life!"]
execute if score @s random matches 3 run tellraw @s ["<Alma> ","You're such a great friend. Thanks for always being there for me"]
execute if score @s random matches 4 run tellraw @s ["<Alma> ","I believe in treating others with kindness and respect. It's the way to go!"]
execute if score @s random matches 5 run tellraw @s ["<Alma> ","I know I can be a bit naive sometimes, but it's just because I trust people's intentions"]
execute if score @s random matches 6 run tellraw @s ["<Alma> ","Let's take a break and enjoy the beauty of nature together"]
execute if score @s random matches 7 run tellraw @s ["<Alma> ","You know, I've been thinking about starting a small animal rescue project. What do you think?"]
execute if score @s random matches 8 run tellraw @s ["<Alma> ","I truly value our friendship. You bring out the best in me"]
execute if score @s random matches 9 run tellraw @s ["<Alma> ","I'll always be here to lend a listening ear or a shoulder to lean on, no matter what."]
execute if score @s random matches 10 run tellraw @s ["<Alma> ","If we all show a little more compassion, the world could become a much better place"]
scoreboard players reset @s random

## 20..29
execute if score @s alma matches 20..29 store result score @s random run random value 1..10
execute if score @s alma matches 20..24 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 4 force
execute if score @s alma matches 25..29 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 5 force
execute if score @s random matches 1 run tellraw @s ["<Alma> ","Hey! Every time I see you, my day gets a whole lot brighter. What magic have you been up to lately?"]
execute if score @s random matches 2 run tellraw @s ["<Alma> ","Laughing with you is like hitting the jackpot of happiness. How do you always know what to say?"]
execute if score @s random matches 3 run tellraw @s ["<Alma> ","Cheers to you for being that irreplaceable piece in the puzzle of my life. How's your day shaping up?"]
execute if score @s random matches 4 run tellraw @s ["<Alma> ","Kindness is my jam, and hanging with you is like being in a kindness concert."]
execute if score @s random matches 5 run tellraw @s ["<Alma> ","Sure, I might take the scenic route with my trust, but isn't life way more fun on that path?"]
execute if score @s random matches 6 run tellraw @s ["<Alma> ","How about we escape the chaos and catch our breath under the stars tonight? Just two nature enthusiasts and the cosmos."]
execute if score @s random matches 7 run tellraw @s ["<Alma> ","Ever imagine us heroes for furry friends? Starting an animal sanctuary has been on my mind. Should we dive into this adventure?"]
execute if score @s random matches 8 run tellraw @s ["<Alma> ","Just a heads up, our friendship is my favorite series. Always waiting for the next chapter. How's the lead character doing today?"]
execute if score @s random matches 9 run tellraw @s ["<Alma> ","Remember, my ears and shoulders come with a lifetime subscription for you. Any updates for me?"]
execute if score @s random matches 10 run tellraw @s ["<Alma> ","Imagine a world cloaked in compassion – it starts with us. Wanna spread some together today?"]
scoreboard players reset @s random

## 30..39
execute if score @s alma matches 30.. store result score @s random run random value 1..10
execute if score @s alma matches 30..34 rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 6 force
execute if score @s alma matches 35.. rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 7 force
execute if score @s random matches 1 run tellraw @s ["<Alma> ","Hey love! I've been looking forward to seeing you all day!"]
execute if score @s random matches 2 run tellraw @s ["<Alma> ","I brought you a little something. It reminded me of you and your love for animals"]
execute if score @s random matches 3 run tellraw @s ["<Alma> ","I believe in treating others with kindness and empathy. It's essential in any relationship"]
execute if score @s random matches 4 run tellraw @s ["<Alma> ","I cherish our moments together, whether it's going for a walk or just sitting quietly"]
execute if score @s random matches 5 run tellraw @s ["<Alma> ","You make me feel so safe and loved. I'm grateful to have you in my life"]
execute if score @s random matches 6 run tellraw @s ["<Alma> ","Let's plan a day trip to the wildlife sanctuary. I think we'd both enjoy it so much!"]
execute if score @s random matches 7 run tellraw @s ["<Alma> ","You know, being with you has made me a better person. You inspire me to be kinder every day"]
execute if score @s random matches 8 run tellraw @s ["<Alma> ","No matter what challenges come our way, I know we can overcome them together"]
execute if score @s random matches 9 run tellraw @s ["<Alma> ","I love you for who you are – your sincerity, your goodness, and your caring heart"]
execute if score @s random matches 10 run tellraw @s ["<Alma> ","I can't see me lovin' nobody but you!"]
scoreboard players reset @s random

## 30..39
#execute if score @s alma matches 30.. if predicate snc:villager/has_bee store result score @s random run random value 1..5
#execute if score @s alma matches 30.. rotated ~ 0 run particle heart ^ ^2 ^2 .3 .1 .3 1 20 force
#execute if score @s random matches 1 run tellraw @s ["<Alma> ","This day couldn't have been any better!"]
#execute if score @s random matches 2 run tellraw @s ["<Alma> ","Wow, that was an amazing experience!"]
#execute if score @s random matches 3 run tellraw @s ["<Alma> ","I can't stop smiling whenever I'm with you!"]
#execute if score @s random matches 4 run tellraw @s ["<Alma> ","You're the best thing that ever happened to me!"]
#execute if score @s random matches 5 run tellraw @s ["<Alma> ","I feel so comfortable around you"]
#scoreboard players reset @s random

## -1.. Bad
execute if score @s alma matches ..-1 store result score @s random run random value 1..5
execute if score @s alma matches -9..-1 rotated ~ 0 run particle angry_villager ^ ^2 ^2 .3 .1 .3 1 1 force
execute if score @s alma matches ..-10 rotated ~ 0 run particle angry_villager ^ ^2 ^2 .3 .1 .3 1 20 force
execute if score @s random matches 1 run tellraw @s ["<Alma> ","Ugh, why are you always around?"]
execute if score @s random matches 2 run tellraw @s ["<Alma> ","I can't believe I have to deal with someone as insincere as you."]
execute if score @s random matches 3 run tellraw @s ["<Alma> ","If you truly cared about morality, you'd stop bothering me."]
execute if score @s random matches 4 run tellraw @s ["<Alma> ","You claim to care about animals, but all I see is hypocrisy."]
execute if score @s random matches 5 run tellraw @s ["<Alma> ","I'm tanned from spending time outdoors, not from being near you."]
scoreboard players reset @s random

## Init
execute unless score @s alma matches -2147483648..2147483647 run tellraw @s ["<Alma> ","Oh hey, I have never seen you before, are you new on the village?"]
execute unless score @s alma matches -2147483648..2147483647 run function snc:give/guide/love
execute unless score @s alma matches -2147483648..2147483647 run scoreboard players set @s alma 0