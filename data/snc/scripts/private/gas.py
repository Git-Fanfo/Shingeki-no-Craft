import json

# Define the starting damage value
start_damage = 0.0

# Loop to create and write the 100 files
for i in range(101):
    # Define the filename based on the current index
    filename = f"../../item_modifier/gas/{i}.json"
    # Create the dictionary structure for the JSON content
    content = [
        {
            "function": "minecraft:set_custom_data",
            "tag": {"odm_gas":i}
        }
    ]
    # Writing the JSON content to a file
    with open(filename, 'w') as f:
        json.dump(content, f, indent=4)  # Use 'indent' for pretty-printing

print("Files created successfully! 😊")