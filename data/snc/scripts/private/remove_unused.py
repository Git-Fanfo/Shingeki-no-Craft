import os

functions_path = '../../functions'
ignore_functions_prefix = ['function snc:api/','function snc:craft/','function snc:shifters/mobs/attack/action/','function snc:shifters/mobs/armor/action/','function snc:shifters/mobs/beast/action/','function snc:shifters/mobs/cart/action/','function snc:shifters/mobs/colossal/action/']

functions = []

# List all files in the folder
for root, dirs, files in os.walk(functions_path):
    for file in files:
        # Extract the relative path from "functions" directory
        relative_path = root.split('functions' + os.path.sep, 1)[-1]
        
        # Replace directory separators with "/"
        relative_path = relative_path.replace(os.path.sep, '/')
        
        # Remove the last ".mcfunction"
        file_name = os.path.splitext(file)[0]
        
        # Construct the modified path
        modified_path = f'function snc:{relative_path}/{file_name}'
        
        functions.append(modified_path)

# clean and remove
def filter_items_with_prefixes(item_list, prefixes_to_remove):
    filtered_list = [item for item in item_list if not any(item.startswith(prefix) for prefix in prefixes_to_remove)]
    return filtered_list

functions = filter_items_with_prefixes(functions,ignore_functions_prefix)

# Ignore the /root functions such as snc:tick, snc:load, etc
functions = functions[6:]
delete_functions = [[False, function] for function in functions]

file_paths = []
# List all files in the folder
for root, dirs, files in os.walk(functions_path):
    for file in files:
        file_paths.append(os.path.join(root, file))

# Search these functions
print("Search these functions",functions[0:3])


# On this files
print("On this files",file_paths[0:3])

# A list to store the paths of files containing the search string
matching_files = []

for delete_function in delete_functions:
    # print("checking: ",delete_function)
    for file_path in file_paths:
        try:
            with open(file_path, 'r', encoding='utf-8') as file:
                file_contents = file.read()
                if delete_function[1] in file_contents:
                    delete_function[0] = True
                    print("Found",delete_function[1],"in",file_path[6:-11])
                    #matching_files.append(file_path)
        except Exception as e:
            # Handle exceptions like file not found, permission denied, etc.
            print(f"Error reading {file_path}: {str(e)}")
    # if not(delete_function[0]):
        # print("Delete: ",delete_function)

# Filter and print sub-arrays with the first element as False
for sub_array in delete_functions:
    if sub_array[0] is False:
        print("Not Found:",sub_array)