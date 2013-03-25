-module(sunaba).

-behaviour(application).

%% Application callbacks
-export([start/0, start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    sunaba_sup:start_link().

start() ->
    sunaba_sup:start().

stop(_State) ->
    ok.

