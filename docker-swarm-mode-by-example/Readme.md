## Example to create a nginx swarm mode
Assume we have 2 nodes:
 - node1: 10.0.0.56
 - node2: 10.0.0.57

NOTE: If your nodes have multiple IP addresses
 - MUST pick an address (docker will not pick one for you!!)
 - address should be reachable by every other node of the Swarm.

Note: If you are using Mac, good luck.
 - see: https://github.com/docker/docker/issues/24310

### Create the cluster
```
# On node 1:
docker swarm init --advertise-addr 10.0.0.56

# On node 2:
docker swarm join \
   --token SWMTKN-1-0mhn8yyywardn10pmm4nsfipc891nq6taj8oj1ji7h2gp0v7vb-7e8vdgfah92u3j5snevs1lrre \
   10.0.0.56:2377

# Check if the swarm mode is enabled
docker info

# List swarm nodes
docker node ls

# Create a nginx service
docker service create --name helloworld --replicas=2 -p 8000:8000 momijiame/greeting:1.0

# List all services
docker service ls

# Watch the staus
watch docker service ps helloworld

# Test the service (run on any node)
curl 10.0.0.56:8000
curl 10.0.0.57:8000
...
// Should see auto balancing

# Delete the service
docker service rm helloworld

# Exit swarm (run on all nodes)
docker swarm leave --force
```
