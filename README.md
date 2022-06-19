# k8s-twemproxy

k8s-twemproxy is a distributed redis server based on k8s. We use twitter/twemproxy to deploy a redis master-slave. The
details are following.
> We mainly refer to the following [official manual](https://github.com/twitter/twemproxy).

## 1. ConfigMap

configmap contains redis or twemproxy config for k8s.

- configmap-redis-config.yaml
- configmap-twemproxy-redis-config.yaml

## 2. Deployment

deployment contains twemproxy server configure info.

- deployment-default-toutaio-videoarch-twemproxy.yaml

## 3. PersistentVolumes(pv)

We use `hostpath` as persistent volume.

- pv-default-redis.yaml

## 4. PersistentVolumesClaim(pvc)

- pvc-default-redis01.yaml
- pvc-default-redis02.yaml

## 5. Service

Redis can not expose itself, we use `ClusterIP` type.
Proxy use `NodePort` type.

- service-default-toutiao-videoarch-redis.yaml
- service-default-toutiao-videoarch-twemproxy.yaml

## 6. Stateful

- statefulset-default-toutiao-videoarch-redis.yaml