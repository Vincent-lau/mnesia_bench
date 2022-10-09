-module(cluster_bench).

-export([start/0]).

start() ->
  io:format("~p~n", [node()]), 
  K8sServicePath = "erl-cluster-svc.resolverl.svc.cluster.local",
  bench:run(["/bench/bench.config"]).
