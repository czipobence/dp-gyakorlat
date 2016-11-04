-module(orai).
-compile(export_all).

emelkedok(L) -> length(lists:filter(fun({X,Y,Z}) -> case X < Y of false -> false; true -> (case Y < Z of false -> false; true -> true end)end end, L)).
