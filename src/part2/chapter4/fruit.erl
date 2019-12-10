%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2019 23:31
%%%-------------------------------------------------------------------
-module(fruit).
-author("duping").

%% API
-export([test/0]).


test() ->
  Fruits = [apple, orange, pear],
%%  高阶函数就是返回一个函数  lists:member(X,L) X in? L
  MakeTest = fun(L) -> (fun(X) -> lists:member(X, L) end) end,
  IsFruit = MakeTest(Fruits),
  true = IsFruit(apple),
  [apple, pear] = lists:filter(IsFruit, [cat, dog, apple, pear]),
  test_worked.
