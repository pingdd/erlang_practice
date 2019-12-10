%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2019 23:57
%%%-------------------------------------------------------------------
-module(shop2).
-author("duping").
%% API

%% -import(module_name,[fun1/1,fun2/2])
-import(shop, [cost/1]).
-import(mylists, [map/2, sum/1]).

-export([total/1, test/0]).


total(L) ->
%%  注意组合顺序  先map 后sum
%%  构建需要的pattern
  sum(map(fun({What, N}) -> cost(What) * N end, L)).


test() ->
  All = [{orange, 3}, {newspager, 2}],
  15 + 8 * 2 = total(All),
  test_worked.