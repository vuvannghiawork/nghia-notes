import os
from datetime import datetime, timedelta


def delete_file_empty(folder_path):
    for root, dirs, files in os.walk(folder_path, topdown=False):
        for file in files:

            if not file.endswith(".md"):
                continue

            file_path = os.path.join(root, file)
            print(f"Checking file: {file_path}")

            with open(file_path, "r", encoding="utf-8") as file:
                content = file.read()

            if content == "":
                os.remove(file_path)
                print(f"Deleted file: {file_path}")


current_file_path = os.path.abspath(__file__)
current_dir = os.path.dirname(current_file_path)
tasks_dir = os.path.join(current_dir, r"../tasks")
delete_file_empty(tasks_dir)
