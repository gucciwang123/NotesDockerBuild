import json

f = open("data.json", "r")

datas=json.load(f)

files={
    "misc": []
}

for data in datas:
    if data["type"] != "Lesson" and data["type"] != "LessonSol":
        files["misc"].append(data["file"])
    elif not (data["number"] in files):
        files.update({data["number"]: {"Lesson": "","LessonSol": ""}})
        files[data["number"]][data["type"]] = data["file"]
    else:
        files[data["number"]][data["type"]] = data["file"]

f = open("/out/data/precalculus.json","w")
json.dump(files, f)

f.close()
