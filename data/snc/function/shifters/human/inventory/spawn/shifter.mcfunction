setblock ~ ~3 ~ chest

$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:0b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:1b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:2b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:3b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:4b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:5b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:6b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:7b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:8b}]

$data remove storage minecraft:$(shifter) Hotbar[{Slot:0b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:1b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:2b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:3b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:4b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:5b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:6b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:7b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:8b}]

$data modify storage minecraft:$(shifter) Hotbar[{Slot:100b}] merge value {Slot:9b}
$data modify storage minecraft:$(shifter) Hotbar[{Slot:101b}] merge value {Slot:10b}
$data modify storage minecraft:$(shifter) Hotbar[{Slot:102b}] merge value {Slot:11b}
$data modify storage minecraft:$(shifter) Hotbar[{Slot:103b}] merge value {Slot:12b}
$data modify storage minecraft:$(shifter) Hotbar[{Slot:-106b}] merge value {Slot:13b}

$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:9b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:10b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:11b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:12b}]
$data modify block ~ ~3 ~ Items append from storage minecraft:$(shifter) Hotbar[{Slot:13b}]

$data remove storage minecraft:$(shifter) Hotbar[{Slot:9b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:10b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:11b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:12b}]
$data remove storage minecraft:$(shifter) Hotbar[{Slot:13b}]

execute summon minecraft:chest_minecart run function snc:shifters/human/inventory/drop/shifter
setblock ~ ~3 ~ air replace