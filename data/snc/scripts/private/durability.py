import json

# Define the starting damage value
start_damage = 0.0
# Define the increment for each file's damage value
increment = 0.01

# Loop to create and write the 100 files
for i in range(100):
    # Define the filename based on the current index
    filename = f"../../item_modifiers/durability/{i}.json"
    # Create the dictionary structure for the JSON content
    content = [
        {
            "function": "minecraft:set_damage",
            "damage": round(start_damage + (increment * i), 2)  # Ensure the damage increments properly; round to handle floating point arithmetic quirks
        }
    ]
    # Writing the JSON content to a file
    with open(filename, 'w') as f:
        json.dump(content, f, indent=4)  # Use 'indent' for pretty-printing

print("Files created successfully! 😊")