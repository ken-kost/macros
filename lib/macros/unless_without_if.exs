defmodule ControlFlow do
  defmacro unless(expression, do: block) do
    quote do
      cond do
        !unquote(expression) -> unquote(block)
      end
    end
  end
end
