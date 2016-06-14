# NDSLabs Performance Testing 

Preliminary repository for performance analysis of NDS Labs clusters.


## Loadbalancer

To repeat the loadbalancer performance tests:

Start NDS Labs cluster using the ndslabs/deploy-tools image

Create Nginx test service/replication controller and ingress rule
```
kubectl create -f loadbalancer/nginx.yaml
kubectl create -f loadbalancer/ingress.yaml
```

On the loadbalancer node, start pidstat to collect CPU and memory utilization:
```
docker run --pid=host --privileged=true --rm -it ndslabs/systools bash
ps -ef | grep nginx.*worker
pidstat -p pid1,pid2 1
pidstat -r -p pid1,pid2 1
```

Run boom.sh to simulate load:
```
./boom.sh > boom-nginx.log &
```



