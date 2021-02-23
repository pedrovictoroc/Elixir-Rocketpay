defmodule Rocketpay.Numbers do
  def sum_from_file(filename) do
    "#{filename}.csv"
    |>File.read()
    |>handle_file()
  end

  defp handle_file({:ok, content}) do
    {:ok,
    %{result:
    content
    |> String.split(",")
    |> Stream.map(fn num -> String.to_integer(num) end)
    |> Enum.sum()
    }}
  end

  defp handle_file({:error, _reason}), do: {:error, %{message: "Invalid filename!"}}
end
