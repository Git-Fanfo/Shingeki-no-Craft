import json

# Define the starting damage value
start_damage = 0.0
# Define the increment for each file's damage value
increment = 0.01

# Loop to create and write the 100 files
for i in range(100):
    # Define the filename based on the current index
    filename = f"../../item_modifier/odm/blades/damage/gas/{i}.json"
    # Create the dictionary structure for the JSON content
    content = [
        {
            "function": "minecraft:set_custom_data",
            "tag": {
                "snc_gas_dmg" : i
            }
        }
    ]
    # Writing the JSON content to a file
    with open(filename, 'w') as f:
        json.dump(content, f, indent=4)  # Use 'indent' for pretty-printing

print("Files created successfully! 😊")