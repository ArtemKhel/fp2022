open Base
open Utils

module Env = struct
  include Map

  let pp_env env pp_val =
    Map.iteri env ~f:(fun ~key ~data -> print_endline ("%s = %s" #% key (pp_val data)))
  ;;

  let merge_envs first second =
    Map.merge first second ~f:(fun ~key data ->
      match data with
      | `Left x | `Right x | `Both (x, _) -> Some x)
  ;;
end
