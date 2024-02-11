# gocred app

## Installation

1. Copy Dockerfile to the gocred repo

```bash
➜  cp Dockerfile gocrud/
```
2. Build docker image
```bash
docker build -t risk_go:latest .
```
3. Start a docker cotainer
```bash
 docker run -e 'GOCRUD_MONGO_URI=mongodb://<username>:<password>:<mongodbhost>:27017' risk_go:latest
 ```

 ## Usage

1) POST curl request to create an entry
 ```bash
curl <IP>:8080/v1/pet -d '{ "name": "Grande Hazelnut Mc.Muffin","species": "dog","breed": "Dobermann" }'
```
Response
```bash
{"id":"65c8dc57b3418bdaed6a98b4","name":"Grande Hazelnut Mc.Muffin","species":"dog","breed":"Dobermann"}
```

3) GET curl request to get a perticuler data
```bash
curl <IP>:8080/v1/pet/65c8dc57b3418bdaed6a98b4
```
Response
```bash
{"id":"65c8dc57b3418bdaed6a98b4","name":"Grande Hazelnut Mc.Muffin","species":"dog","breed":"Dobermann"}
```

