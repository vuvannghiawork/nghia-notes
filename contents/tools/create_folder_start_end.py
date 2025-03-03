import os
from datetime import datetime, timedelta


def create_folder(folder_path, start_date, end_date):
    current_date = start_date
    while current_date <= end_date:
        subfolder_name = "-" + current_date.strftime("%Y_%m_%d")
        subfolder_path = os.path.join(folder_path, subfolder_name)

        if os.path.exists(subfolder_path):
            print(f"Folder already exists: {subfolder_path}")
            current_date += timedelta(days=1)
            continue

        os.makedirs(subfolder_path, exist_ok=True)
        print(f"Created folder: {subfolder_path}")
        day_now = current_date.strftime("%d")
        file_path = os.path.join(subfolder_path, f"{day_now}.md")
        with open(file_path, "w") as file:
            file.write(f"")
        print(f"Created file: {file_path}")

        current_date += timedelta(days=1)


START = datetime(2024, 11, 3)
END = datetime(2024, 12, 25)
now = datetime.now()
END = (now + timedelta(days=1))


current_file_path = os.path.abspath(__file__)
current_dir = os.path.dirname(current_file_path)
tasks_dir = os.path.join(current_dir, r"../tasks")
create_folder(tasks_dir, START, END)
