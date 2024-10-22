#!/bin/python3

import json,datetime,time
from subprocess import Popen,PIPE,DEVNULL

icon = { "CHARGING": "▲", "DISCHARGING": "▼", "FULL": "◈" }

def get_battery():
    api = "/data/data/com.termux/files/usr/libexec/termux-api"
    with Popen((api, "BatteryStatus"), stdout=PIPE) as p:
        json_data = p.communicate()[0]
        return json.loads(json_data)

def setroot(text):
    Popen(["xsetroot", "-name", text], stdout=DEVNULL, stderr=DEVNULL)

def bar():
    b = get_battery()
    t = datetime.datetime.now()

    setroot("%d:%.2d:%.2d %d/%d [%d%%%s]" % (t.hour,t.minute,t.second,t.month,t.day,b['percentage'],icon[b['status']]))

if __name__ == "__main__":
    while True:
        controltime = time.time()
        bar()
        time.sleep(1 - (time.time() - controltime))
