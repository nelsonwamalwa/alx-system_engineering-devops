#!/usr/bin/python3
"""
This a script that, using this REST API, for a given employee ID, 
returns theinformation about his/her TODO list progress
"""

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
    name = employeeName.json()['name']

    totalTasks = 0

    for done_tasks in json_req:
        if done_tasks['completed']:
            totalTasks += 1

    print("Employee {} is done with tasks({}/{}):".
          format(name, totalTasks, len(json_req)))
    for done_tasks in json_req:
        if done_tasks['completed']:
            print("\t " + done_tasks.get('title'))