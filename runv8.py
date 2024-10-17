from ultralytics import YOLO
import torch
from config import path
device: str = "mps" if torch.backends.mps.is_available() else "cpu"
model = YOLO("yolov8s.pt") # load the model
model.to(device)
results = model.train(data=path+"TypeLPG-9/data.yaml", epochs=5)
results = model("images/001.png")
print(results)