%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2019 23:10
%%%-------------------------------------------------------------------
-module(shop).
-author("duping").

%% API
-export([cost/1, total/1, test/0]).


cost(orange) -> 5;
cost(newspager) -> 8;
cost(apples) -> 2;
cost(pears) -> 9;
cost(milk) -> 7.

total([{What, N} | T]) -> cost(What) * N + total(T);
total([]) -> 0.

test() ->
  All = [{orange, 3}, {newspager, 2}],
  15 + 8 * 2 = total(All),
  test_worked.

