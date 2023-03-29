from myMFRC522 import SimpleMFRC522
import gpiod

reader = SimpleMFRC522()
try:
    print("Tap the a card to the reader to read it...")
    id, text = reader.read()
    print(id)
    print(text)
finally:
    chip = gpiod.chip(1)
    chip.reset()

