# Haproxy dispatch by UID Example

In this example, we'll setup two web servers and one haproxy.

```
        |-------|--- web1:10081
10080---|HAProxy|
        |-------|--- web2:10082
```

## Setup:

```
# With docker-compose
docker-compose up

# Without docker-compose
setup.sh
```

## Dispatch Rule:
1. if header X-Lb-Uid exists -> dispatch by X-Lb-UserID
```
  curl -H "X-Lb-Uid: 12345" localhost:10080
```

2. if X-Lb-Uid does not exist:
  if GET with parameter UserID -> dispatch by UserID
  ```
    curl localhost:10080/index.html?UserID=1234
  ```

  if POST with paramter UserID -> dispatch by UserID
  ```
    curl -d "UserID=1234" -X POST localhost:10080/index.html
  ```  
