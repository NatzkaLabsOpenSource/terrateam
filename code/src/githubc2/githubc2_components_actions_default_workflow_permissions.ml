let t_of_yojson = function
  | `String "read" -> Ok "read"
  | `String "write" -> Ok "write"
  | json -> Error ("Unknown value: " ^ Yojson.Safe.pretty_to_string json)

type t = (string[@of_yojson t_of_yojson])
[@@deriving yojson { strict = false; meta = true }, show, eq]
