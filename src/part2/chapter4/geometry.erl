%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 十二月 2019 22:53
%%%-------------------------------------------------------------------
-module(geometry).
-author("duping").

%% API
-export([area/1, test/0]).

%% -> 分割 函数头/函数体
area({rectangle, Width, Height}) -> Width * Height;
%% 多种条件类型 使用;
area({square, Width}) -> Width * Width;
area({circel, Radius}) -> 3.14 * Radius * Radius.

%% 顺序执行使用,
test() ->
  12 = area({rectangle, 3, 4}),
  9 = area({square, 3}),
  test_worked.
