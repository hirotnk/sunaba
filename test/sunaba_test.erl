-module(sunaba_test).

-include_lib("eunit/include/eunit.hrl").

%
% to run this test:
% ./rebar eunit suite=sunaba_test

hello_test_() ->
  {foreach,
   fun()  -> {ok, Pid} = sunaba_server:start_link (), Pid end,
   fun(_) -> ok end,
   [
    {"normal case",
     fun() ->
       Output = {hey, "Erlang"},
       ?assertEqual(Output,
                    sunaba_server:hello ("Erlang"))
     end} ]
  }.

