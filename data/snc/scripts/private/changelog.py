import sys
import json

def print_json_keys(json_file_path):
    # Attempt to open and load the JSON file
    try:
        with open(json_file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
            keys = list(data.keys())
            card_lists = data['lists']
            selected_lists = ["Done 🎉"]
            changelog = [["Mechanic"],["Art"],["Balance"],["Logic"],["Bugfix"]]
            for card_list in card_lists:                
                if card_list['name'] in selected_lists:
                    print(card_list['name'])
                    for card in data['cards']:
                        if card['idList'] == card_list['id']:
                            try:
                                # card['labels'][0] because it only has one label
                                if card['labels'][0]['name'] == changelog[0][0]:
                                    changelog[0].append(card['name'])
                                if card['labels'][0]['name'] == changelog[1][0]:
                                    changelog[1].append(card['name'])
                                if card['labels'][0]['name'] == changelog[2][0]:
                                    changelog[2].append(card['name'])
                                if card['labels'][0]['name'] == changelog[3][0]:
                                    changelog[3].append(card['name'])
                                if card['labels'][0]['name'] == changelog[4][0]:
                                    changelog[4].append(card['name'])
                                # print("Label:",card['labels'][0]['name'],"| Task:",card['name'])
                            except Exception as e:
                                card['name']
            for label in range(len(changelog)):
                print("")
                for i, change in enumerate(changelog[label]):
                    if i == 0:
                        print("**"+change+"**")
                    else:
                        print("-",change)
    except FileNotFoundError:
        print(f"File not found: {json_file_path}")
    except json.JSONDecodeError:
        print(f"Failed to decode JSON from the file: {json_file_path}")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        json_file_path = sys.argv[1]
        print_json_keys(json_file_path)
    else:
        print("Usage: python print_json_keys.py path_to_json_file.json")