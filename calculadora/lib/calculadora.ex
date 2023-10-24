defmodule Calculadora do
  def solve_equacao_segundo_grau(a, b, c) when a != 0 do
    discriminante = b * b - 4 * a * c

    if discriminante < 0 do
      IO.puts("A equação não tem soluções reais.")
    else
      x1 = (-b + :math.sqrt(discriminante)) / (2 * a)
      x2 = (-b - :math.sqrt(discriminante)) / (2 * a)

      IO.puts("Soluções da equação:")
      IO.puts("x1 = #{x1}")
      IO.puts("x2 = #{x2}")
    end
  end

  def solve_equacao_segundo_grau(_, _, _) do
    IO.puts("O coeficiente 'a' não pode ser igual a zero.")
  end
end

# Teste a função com uma equação do segundo grau
a = 1
b = -3
c = 2

Calculadora.solve_equacao_segundo_grau(a, b, c)


