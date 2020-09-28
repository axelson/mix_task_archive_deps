##
## The contents of this file are subject to the Mozilla Public License
## Version 1.1 (the "License"); you may not use this file except in
## compliance with the License. You may obtain a copy of the License
## at https://www.mozilla.org/MPL/
##
## Software distributed under the License is distributed on an "AS IS"
## basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
## the License for the specific language governing rights and
## limitations under the License.
##
## The Original Code is mix_task_archive_deps.
##
## The Initial Developer of the Original Code is Daniil Fedotov.
## Copyright (c) 2017 Daniil Fedotov.  All rights reserved.
##

defmodule Mix.Archive.Build.Helpers do
  def destination(opts) do
    opts[:destination] || Path.join(Mix.Project.build_path, "archives")
  end
  def skipped_apps(opts) do
    (opts[:skip] || "") |> String.split(" ") |> Enum.map(&String.to_atom/1)
  end
end