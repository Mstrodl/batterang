import matplotlib.pyplot as plt
from pathlib import Path
import os
import datetime

colors = {"BAT0": "ro", "BAT1": "bo"}

def main():
  home_dir = str(Path.home())
  for report in os.scandir(home_dir + "/.config/batterang/reports"):
    date=datetime.datetime.fromtimestamp(int(report.name))
    for bat in os.scandir(report.path):
      with open(bat.path) as f:
        text = f.read()
        [current, maximum] = [int(x) for x in text.strip().split("\n")]
        plt.plot(date, 100 * current / maximum, colors[bat.name])
  plt.show()

if __name__ == '__main__':
  main()
  
