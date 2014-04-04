class Gato
  @objeto = nil

  def atirar(objeto)
    @objeto = objeto
  end

  def morto?
    !@objeto == :pau
  end

  def berrou?
    @objeto == :pau
  end
end
