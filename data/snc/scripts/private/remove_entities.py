import os 
import json 
import shutil 
 
### EDIT THIS ### 
banned_monsters = [ 
                    "minecraft:spider", 
                    "minecraft:zombie", 
                    "minecraft:skeleton", 
                    "minecraft:zombie_villager", 
                    "minecraft:creeper", 
                    "minecraft:slime", 
                    "minecraft:witch", 
                    "minecraft:drowned", 
                    "minecraft:husk", 
                    "minecraft:stray", 
                    "minecraft:bogged", 
                    "minecraft:enderman", 
                    "minecraft:ocelot" 
                ] 
### EDIT THIS ### 
def remove_monster(banned_monsters):
    directory_path = '../public/add_or_remove_hostile_mobs/biomes' 
    namespaces = [d for d in os.listdir(directory_path) if os.path.isdir(os.path.join(directory_path, d))] 
    
    for namespace in namespaces: 
        worldgen_path = '../../../'+namespace+'/worldgen/biome' 
        # Check if the folder exists and deletes it 
        if os.path.exists(worldgen_path) and os.path.isdir(worldgen_path): 
            shutil.rmtree(worldgen_path) # print("Folder deleted 🗑️") 
        # Create the folder again 
        os.makedirs(worldgen_path)
        print(worldgen_path) 

        # Check all biomes 
        biomes = [f for f in os.listdir(directory_path+'/'+namespace) if os.path.isfile(os.path.join(directory_path+'/'+namespace, f))] 
        for biome in biomes: 
            
            # Get json 
            with open(directory_path+'/'+namespace+'/'+biome, 'r') as f: 
                conditions = json.loads(f.read()) 
            # Compress original biomes 
            with open(directory_path+'/'+namespace+'/'+biome, 'w') as file: 
                json.dump(conditions, file) 
                # Check if the biome doesn't have monsters 
                if(len(conditions['spawners']['monster']) >= 1): 
                    new_monsters = [] 
                    # If is not in banned_monsters then add to the list 
                    for monster in conditions['spawners']['monster']: 
                        if not(monster['type'] in banned_monsters): 
                            new_monsters.append(monster) 
                        else: 
                            print('Deleted',monster['type'],'from',namespace+':'+biome[:-5]) 
                    # Update list 
                    conditions['spawners']['monster'] = new_monsters 
                else: 
                    print('Monsters not found on',namespace+':'+biome[:-5]) 
                # Write file 
                with open('../../../'+namespace+'/worldgen/biome/'+biome, 'w') as file: 
                    # json.dump(conditions, file, indent=4) 
                    json.dump(conditions, file) 
 
# Credits to Bombface68 for this amazing idea :)

remove_monster(banned_monsters)