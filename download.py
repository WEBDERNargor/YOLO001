from roboflow import Roboflow
rf = Roboflow(api_key="UY3lBfhJjhP1g5vTvRtN")
project = rf.workspace("new-lpg").project("typelpg")
version = project.version(9)
dataset = version.download("yolov8")
                