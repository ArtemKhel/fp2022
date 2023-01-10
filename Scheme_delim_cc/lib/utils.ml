open Base

let ( #% ) = Format.sprintf
let return = Result.return
let ( let* ) res f = Result.bind res ~f
