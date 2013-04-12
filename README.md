# sunaba #

This is my play ground. 'sunaba' means sandbox in Japanese.

## gen_server_pool example ##

This is a gen_server_pool tryout


## example usage of gen_server_pool ##

    localhost [/home/hirotnk/repo/github/sunaba/rel%]                                                                                                                                                                                      *[feature/gen_server_pool]
    localhost [/home/hirotnk/repo/github/sunaba/rel%] ./sunaba/bin/sunaba console                                                                                                                                                          *[feature/gen_server_pool]
    Exec: /home/hirotnk/repo/github/sunaba/rel/sunaba/erts-5.9.2/bin/erlexec -boot /home/hirotnk/repo/github/sunaba/rel/sunaba/releases/1/sunaba -mode embedded -config /home/hirotnk/repo/github/sunaba/rel/sunaba/releases/1/sys.config -args_file /home/hirotnk/repo/github/sunaba/rel/sunaba/releases/1/vm.args -- console
    Root: /home/hirotnk/repo/github/sunaba/rel/sunaba
    Erlang R15B02 (erts-5.9.2) [source] [64-bit] [smp:2:2] [async-threads:0] [hipe] [kernel-poll:false]

    starting sunaba_sup
    sunaba init
    sunaba init:<0.58.0>
    sunaba init:<0.59.0>
    sunaba init:<0.60.0>
    sunaba init:<0.61.0>
    sunaba init:<0.62.0>
    Eshell V5.9.2  (abort with ^G)
    (sunaba@127.0.0.1)1> Pid = self ().
    <0.65.0>
    (sunaba@127.0.0.1)2> [ spawn_link (fun () -> Res = sunaba_fib_pool:get_fib (N), Pid ! Res end) || N <- lists:seq (1, 30)].
    process:<0.62.0> 1th fib:1 elapsed:0 ms
    process:<0.62.0> 2th fib:1 elapsed:0 ms
    process:<0.62.0> 3th fib:2 elapsed:0 ms
    process:<0.61.0> 4th fib:3 elapsed:0 ms
    process:<0.61.0> 5th fib:5 elapsed:0 ms
    process:<0.62.0> 6th fib:8 elapsed:0 ms
    process:<0.61.0> 7th fib:13 elapsed:0 ms
    process:<0.60.0> 8th fib:21 elapsed:0 ms
    process:<0.62.0> 9th fib:34 elapsed:0 ms
    process:<0.59.0> 10th fib:55 elapsed:0 ms
    process:<0.60.0> 11th fib:89 elapsed:0 ms
    process:<0.61.0> 12th fib:144 elapsed:0 ms
    process:<0.58.0> 13th fib:233 elapsed:0 ms
    sunaba init:<0.84.0>
    process:<0.62.0> 14th fib:377 elapsed:0 ms
    process:<0.59.0> 15th fib:610 elapsed:0 ms
    sunaba init:<0.89.0>
    process:<0.60.0> 16th fib:987 elapsed:0 ms
    sunaba init:<0.95.0>
    [<0.68.0>,<0.69.0>,<0.70.0>,<0.71.0>,<0.72.0>,<0.73.0>,
     <0.74.0>,<0.75.0>,<0.76.0>,<0.77.0>,<0.78.0>,<0.79.0>,
     <0.80.0>,<0.81.0>,<0.82.0>,<0.83.0>,<0.85.0>,<0.86.0>,
     <0.87.0>,<0.88.0>,<0.90.0>,<0.91.0>,<0.92.0>,<0.93.0>,
     <0.94.0>,<0.96.0>,<0.97.0>,<0.98.0>,<0.99.0>|...]
    (sunaba@127.0.0.1)3> sunaba init:<0.102.0>
    sunaba init:<0.103.0>
    sunaba init:<0.104.0>
    sunaba init:<0.105.0>
    sunaba init:<0.106.0>
    sunaba init:<0.107.0>
    sunaba init:<0.108.0>
    sunaba init:<0.109.0>
    sunaba init:<0.110.0>
    sunaba init:<0.111.0>
    sunaba init:<0.112.0>
    process:<0.61.0> 17th fib:1597 elapsed:1 ms
    process:<0.58.0> 18th fib:2584 elapsed:3 ms
    process:<0.84.0> 19th fib:4181 elapsed:3 ms
    process:<0.62.0> 20th fib:6765 elapsed:3 ms
    process:<0.59.0> 21th fib:10946 elapsed:4 ms
    process:<0.89.0> 22th fib:17711 elapsed:6 ms
    process:<0.60.0> 23th fib:28657 elapsed:9 ms
    process:<0.95.0> 24th fib:46368 elapsed:11 ms
    process:<0.102.0> 25th fib:75025 elapsed:27 ms
    process:<0.103.0> 26th fib:121393 elapsed:43 ms
    process:<0.104.0> 27th fib:196418 elapsed:65 ms
    process:<0.107.0> 30th fib:832040 elapsed:70 ms
    process:<0.105.0> 28th fib:317811 elapsed:92 ms
    process:<0.106.0> 29th fib:514229 elapsed:128 ms

    (sunaba@127.0.0.1)3> flush ().
    Shell got 1
    Shell got 1
    Shell got 2
    Shell got 3
    Shell got 5
    Shell got 8
    Shell got 13
    Shell got 21
    Shell got 34
    Shell got 55
    Shell got 89
    Shell got 144
    Shell got 233
    Shell got 377
    Shell got 610
    Shell got 987
    Shell got 1597
    Shell got 2584
    Shell got 4181
    Shell got 6765
    Shell got 10946
    Shell got 17711
    Shell got 28657
    Shell got 46368
    Shell got 75025
    Shell got 121393
    Shell got 196418
    Shell got 832040
    Shell got 317811
    Shell got 514229
    ok
    (sunaba@127.0.0.1)4>

