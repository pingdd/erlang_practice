%%%-------------------------------------------------------------------
%%% @author dp
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. 十二月 2019 23:42
%%%-------------------------------------------------------------------
-module(afile_client).
-author("15553").

%% API
-export([ls/1, get_file/2]).


ls(Server) ->
  Server ! {self(), list_dir},
  receive
    {Server, FileList} -> FileList
  end.

get_file(Server, File) ->
  Server ! {self(), {get_file, File}},
  receive
    {Server, Content} -> Content
  end.