function snc:api/summon/items
setblock ~1 ~ ~ green_wool
setblock ~1 ~1 ~ brick_wall
setblock ~1 ~2 ~ campfire

setblock ~-1 ~ ~ green_wool
setblock ~-1 ~1 ~ brick_wall
setblock ~-1 ~2 ~ campfire

execute align xz run summon firework_rocket ~.5 ~2 ~.5 {FireworksItem:{id:"firework_rocket",components:{fireworks:{explosions:[{shape:'small_ball',colors:[11141120],fade_colors:[16720932],has_trail:true,has_twinkle:true}],flight_duration:1}}}}