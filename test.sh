
#!/usr/bin/env bash

ab -p data.json -T application/json -c 10 -n 1000 http://localhost:5000/predict
