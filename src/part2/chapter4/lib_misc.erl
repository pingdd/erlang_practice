%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2019 23:39
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("duping").

%% API
-export([for/1, test/0]).


for({Max, Max, F}) -> [F(Max)];
for({I, Max, F}) -> [F(I) | for({I + 1, Max, F})].


test() ->
  L = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  L = for({1, 10, fun(X) -> X end}),
  L1 = lists:map(fun(X) -> 2 * X end, L),
%%  模式匹配不支持 lists:map(fun(X) -> 2 * X end, L) = for({1, 10, fun(X) -> 2 * X end})
%%  原因应该在于比对的是语法结构 ?
  L1 = for({1, 10, fun(X) -> 2 * X end}),
  test_worked.