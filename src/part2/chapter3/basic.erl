%%%-------------------------------------------------------------------
%%% @author duping
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. 十二月 2019 23:21
%%%-------------------------------------------------------------------
-module(basic).
-author("duping").

%% API
-export([atom/0, city/0]).


atom() ->
%%  atom a = ‘a’
  a = 'a'.

city() ->
  House = {house, {width, 144}, {height, 180}},
  Street = [House, House],
  H1 = {house, {a, 1}},
  H2 = {house, {a, 2}},
%%  数组添加新数据后返回新数组才能使用
  Street1 = [H1, H2 | Street],
  Street1.
