import time
from core.target import check_item
from core.notifier import notify

def run_monitor():
    while True:
        status = check_item()
        if status:
            notify("Item in stock!")
        time.sleep(10)
