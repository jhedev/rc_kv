%%%-------------------------------------------------------------------
%% @doc rc_kv public API
%% @end
%%%-------------------------------------------------------------------

-module('rc_kv_app').

-behaviour(application).

%% Application callbacks
-export([start/2
        ,stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    'rc_kv_sup':start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
