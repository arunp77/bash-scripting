import time
i = 0
while i < (60 * 20):
    file = open("data.txt", "a")
    file.write(str(i) + "\n")
    file.close()
    i += 1
    time.sleep(1)
