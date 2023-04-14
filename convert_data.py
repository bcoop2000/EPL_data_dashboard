import pandas as pd
import json

# Load the JSON data
with open("epl_2022_2023_07_02_2023.json", "r", encoding = "utf-8") as file:
    json_data = json.load(file)

# Convert JSON data to a pandas DataFrame
data_frame = pd.json_normalize(json_data)

# Save the DataFrame as a CSV file
data_frame.to_csv("epl_2022_2023.csv", index=False)
