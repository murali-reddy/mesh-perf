# mesh-perf

Run Weaveworks/mesh as deployment for performance testing


```sh
kubectl apply -f https://raw.githubusercontent.com/murali-reddy/mesh-perf/master/mesh-deployment-set.yaml
```


tweek replicas, cpu, memory as needed. Nothing else need to be configured.

each pod logs curent status of connections as below


```sh
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 ------------------------------------------------------
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.42.0.3:35531 false pending encrypted   none   5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.40.0.3:6783 true pending encrypted   none   16:60:99:23:0f:3d(mesh-67b85b9b58-kfdvk) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.40.0.4:6783 true pending encrypted   none   36:47:42:2b:d4:66(mesh-67b85b9b58-5qcdw) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.42.0.2:6783 true pending encrypted   none   86:18:61:24:76:59(mesh-67b85b9b58-drjh5) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.40.0.2:43998 false pending encrypted   none   6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.42.0.3:6783 true failed Multiple connections to 5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:22:07.48739891 +0000 UTC m=+623.863663917 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:43 {10.40.0.2:6783 true failed Multiple connections to 6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:23:21.705455842 +0000 UTC m=+698.081720842 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:20:49 OnGossip map[] => delta <nil>
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 Gossip => complete map[]
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 Coneection Status: 
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 ------------------------------------------------------
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.42.0.2:6783 true pending encrypted   none   86:18:61:24:76:59(mesh-67b85b9b58-drjh5) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.40.0.2:43998 false pending encrypted   none   6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.42.0.3:35531 false pending encrypted   none   5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.40.0.3:6783 true pending encrypted   none   16:60:99:23:0f:3d(mesh-67b85b9b58-kfdvk) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.40.0.4:6783 true pending encrypted   none   36:47:42:2b:d4:66(mesh-67b85b9b58-5qcdw) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.42.0.3:6783 true failed Multiple connections to 5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:22:07.48739891 +0000 UTC m=+623.863663917 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:13 {10.40.0.2:6783 true failed Multiple connections to 6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:23:21.705455842 +0000 UTC m=+698.081720842 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:18 OnGossip map[] => delta <nil>
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 Gossip => complete map[]
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 Coneection Status: 
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 ------------------------------------------------------
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.42.0.2:6783 true pending encrypted   none   86:18:61:24:76:59(mesh-67b85b9b58-drjh5) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.40.0.2:43998 false pending encrypted   none   6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.42.0.3:35531 false pending encrypted   none   5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.40.0.3:6783 true pending encrypted   none   16:60:99:23:0f:3d(mesh-67b85b9b58-kfdvk) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.40.0.4:6783 true pending encrypted   none   36:47:42:2b:d4:66(mesh-67b85b9b58-5qcdw) map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.42.0.3:6783 true failed Multiple connections to 5a:68:0d:57:e1:56(mesh-67b85b9b58-t654r) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:22:07.48739891 +0000 UTC m=+623.863663917 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:43 {10.40.0.2:6783 true failed Multiple connections to 6a:f3:5d:15:f3:9b(mesh-67b85b9b58-s94vr) added to 12:75:4d:16:bf:24(mesh-67b85b9b58-6zx79), retry: 2019-02-14 12:23:21.705455842 +0000 UTC m=+698.081720842 map[]}
mesh-67b85b9b58-6zx79> 2019/02/14 12:21:54 OnGossip map[] => delta <nil>

```
