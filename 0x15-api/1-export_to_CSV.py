#!/usr/bin/python3
"""
A script that, using this REST API, for a given employee ID, 
returns information about his/her TODO list progress
and exporting data in the CSV format.
"""

import csv
import json
import requests
from sys import argv


if __name__ == "__main__":

    session_Req = requests.Session()

    id_E = argv[1]
    id_URL = 'https://jsonplaceholder.typicode.com/users/{}/todos'.format(id_E)
    name_URL = 'https://jsonplaceholder.typicode.com/users/{}'.format(id_E)

    employee = session_Req.get(id_URL)
    employeeName = session_Req.get(name_URL)

    json_req = employee.json()
    usr = employeeName.json()['username']

    totalTasks = 0

    for done_tasks in json_req:
        if done_tasks['completed']:
            totalTasks += 1

    fileCSV = id_E + '.csv'

    with open(fileCSV, "w", newline='') as csvfile:
        write = csv.writer(csvfile, delimiter=',', quoting=csv.QUOTE_ALL)
        for i in json_req:
            write.writerow([id_E, usr, i.get('completed'), i.get('title')])
# Ensure there is a newline at the end of the file

# An empty line here