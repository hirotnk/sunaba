-module(sunaba_fib_pool).

-export([
          start_link/0,
          get_fib/1
        ]).

-include( "sunaba.hrl" ).

start_link () ->
  { ok, MinPoolSize } = application:get_env (?APP, sunaba_fib_min_pool_size),
  { ok, MaxPoolSize } = application:get_env (?APP, sunaba_fib_max_pool_size),

  PoolOpts = [ { min_pool_size, MinPoolSize },
               { max_pool_size, MaxPoolSize },
               { idle_timeout, 60 },
               { max_queue, 20 },
               { prog_id, ?APP },
               { pool_id, ?MODULE } ],
  gen_server_pool:start_link ( { local, ?MODULE },
                                sunaba_fib, [], [], PoolOpts ).


get_fib (N) ->
  gen_server:call ( ?MODULE, {get_fib, N} ).
