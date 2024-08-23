defmodule Joewalker.FileWriter do
  def write_to_file(content) do
    file_path = "./output.txt"
    case File.write(file_path, content) do
      :ok ->
        IO.puts("Successfully wrote to #{file_path}")
      {:error, reason} ->
        IO.puts("Failed to write to file: #{reason}")
    end
  end
end
