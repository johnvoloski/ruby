require 'minitest/spec'
require 'minitest/autorun'
require_relative 'gato'
require_relative 'dona_chica'

describe Gato do
  let(:gato)  { Gato.new }

  it 'nao morre quando atiram o pau nele' do
    gato.atirar(:pau)
    (gato.morto?).must_equal false
  end

  it 'berra quando atiram o pau nele' do
    gato.atirar(:pau)
    (gato.berrou?).must_equal true
  end

  it 'nao berra quando nao atiram o pau nele' do
    gato.atirar(:pedra)
    (gato.berrou?).must_equal false
  end
end

describe DonaChica do
  let(:gato)        { Gato.new }
  let(:dona_chica)  { DonaChica.new }

  it 'se admira quando o gato berra' do
    gato.atirar(:pau)
    (dona_chica.admirada?(gato)).must_equal true
  end

  it 'nao se admira quando o gato nao berra' do
    gato.atirar(:pedra)
    (dona_chica.admirada?(gato)).must_equal false
  end
end
