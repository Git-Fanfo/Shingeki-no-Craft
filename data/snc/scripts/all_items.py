import os
import json

def search_files_for_term(directory, search_term):
    """
    Searches for files in the given directory that contain the specified search_term.
    
    Parameters:
    - directory (str): The directory to search in.
    - search_term (str): The term to search for within the files.
    """
    # Check if the provided directory exists
    if not os.path.isdir(directory):
        print("The specified directory does not exist. Please check the path.")
        return

    # List to hold names of files containing the search term
    files_with_term = []

    # Walking through the directory
    for root, dirs, files in os.walk(directory):
        for file in files:
            # Construct the full file path
            file_path = os.path.join(root, file)
            try:
                # Open and read the file contents
                with open(file_path, 'r') as f:
                    contents_str = f.read()
                    if search_term in contents_str:
                        contents_dict = json.loads(contents_str)
                        files_with_term.append(contents_dict['result'])
            except Exception as e:
                print(f"An error occurred while reading {file}: {e}")
    return files_with_term

# Call the function with the specified directory and search term
# Store into variable 'items'
items = search_files_for_term(directory='../recipes', search_term='snc_item')

def json_to_slot(json_data, slot):
    command = f"Slot:{slot}b"

    for key, value in json_data.items():
        if 'components' in key:
            command += f",components:"
            components_strings = []
            for component_key, component_value in json_data['components'].items():
                # Special handling for nested 'custom_data'
                if component_key == 'custom_data':
                    custom_data_strs = [f"{k}:{v}" for k, v in component_value.items()]
                    components_strings.append(f"\"{component_key}\":{{{', '.join(custom_data_strs)}}}")
                else:
                    # Directly turning the component's value into a string
                    # {'minecraft:custom_name': "value"} becomes "minecraft:custom_name='value'"
                    # Note: For non-string types, we don't use quotes.
                    component_value_str = f"'{component_value}'" if isinstance(component_value, str) else str(component_value)
                    components_strings.append(f"\"{component_key}\":{component_value_str}")

            # Combine components into the command
            components_str = ','.join(components_strings)
            command += f"{{{components_str}}}"
        else:
            # General handling for other keys
            if isinstance(value, int):
                # Append 'b' to integers to match the target format's requirement
                command += f',{key}:{value}b'
            else:
                # Quotes around string values if not already present
                command += f',{key}:\"{value}\"'

    return command

set_chest = "setblock ~ ~ ~ chest{Items:["
for slot, item in enumerate(items):
    set_chest += "{"+json_to_slot(item, slot)+"}"
    if slot != len(items)-1:
        set_chest += ","
    #TODO: 26 is the last one
set_chest += "]}"

# print(set_chest)

# Open a file in write mode ('w'). If the file doesn't exist, it will be created.
with open('../functions/api/all_items.mcfunction', 'w') as file:
    # Write the string to the file
    file.write(set_chest)
