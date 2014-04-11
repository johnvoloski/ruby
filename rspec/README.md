# **RSpec**

# Melhores Práticas
-------------------

* Procurar manter a biblioteca/sintaxe sempre atualizadas, evitando quebra de compatibilidade, falhas de segurança, etc.
> * [Transpec](https://github.com/yujinakayama/transpec/blob/master/README.md)

* Quando for usar testes com datas, evite usar a data atual, mesmo trabalhando com uma `gem` específica. É preferível usar uma data antiga para evitar problemas com específicações falhando futuramente.
> * [Timecop](https://github.com/travisjeffery/timecop)

* Evite usar `expect_any_instance_of` e `allow_any_instance_of`.

* Evite usar variáveis de instância.

* Não teste métodos privados.

Não use                                             | Use
----------------------------------------------------|-----------------------------------------------------------
`mock`                                              | `double`
`stub`                                              | `double`
`something.should`                                  | `expect(something).to`
`something.should_not`                              | `expect(something).not_to`
`something.stub(:expected)`                         | `allow(something).to receive(:expected)`
`something.any_instance.stub(:expected)`            | `allow_any_instance_of(something).to receive(:expected)`
`something.should_receive(:expected)`               | `expect(something).to receive(:expected)`
`something.any_instance.should_receive(:expected)`  | `expect_any_instance_of(something).to receive(:expected)`
`and_return(double)`                                | `{ double }`
`before(:each) do`                                  | `before do`

* Adicionar `#` antes do nome do método quando for descrever um método de instância.
```
#!ruby
describe '#meu_metodo' do
end
```

* Adicionar `.` antes do nome do método quando for descrever um método de classe.
```
#!ruby
describe '.meu_metodo' do
end
```

* Não escrever `should` na especificação do teste.
```
#!ruby
it 'should return something' do
end

it 'returns something' do
end
```

* Utilize contextos, seu teste fica mais claro e organizado.
### RUIM
```
#!ruby
it 'has 200 status code if logged in' do
  expect(response).to respond_with(200)
end

it 'has 401 status code if not logged in' do
  expect(response).to respond_with 401
end
```

### BOM
```
#!ruby
context 'when logged in' do
  it { expect(response).to respond_with(200) }
end

context 'when logged out' do
  it { expect(response).to respond_with(401) }
end
```

* Use `let` ao invés de variáveis.
### RUIM
```
#!ruby
before do
  @something = create_something
end
```

### BOM
```
#!ruby
  let(:something) { create_something }
```

* Use `{}` em um `before`, `after` ou `it`, quando a implementação tiver uma única linha de código, com mais linhas use `do end`:
### RUIM
```
#!ruby
  before { do_one; do_two }
  after  { do_one; do_two }
  it     { expect(do_one).to eq(one); expect(do_two).to eq(two) }
```

### BOM
```
#!ruby
  before do
    do_one
    do_two
  end

  after do
    do_one
    do_two
  end

  it do
    expect(do_one).to eq(one)
    expect(do_two).to eq(two)
  end
```

* Use os comparadores pré-definidos:

## be/equal/eq/eql
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/equality-matchers)
> * `expect(something).to be(expected)     # if something.equal?(expected)`
> * `expect(something).to equal(expected)  # if something.equal?(expected)`
> * `expect(something).to eq(expected)   # if something == expected`
> * `expect(something).to eql(expected)  # if something.eql?(expected)`

## be
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/comparison-matchers)
> * `expect(something).to be > expected        # if something > expected`
> * `expect(something).to be < expected        # if something < expected`
> * `expect(something).to be >= expected       # if something >= expected`
> * `expect(something).to be <= expected       # if something <= expected`
> * `expect(something).to be match(/expected/) # if something =~ expected`

## be_truthy/be_falsey/be true/be false/be_nil
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/be-matchers)
> * `expect(something).to be_truthy  # if something is truthy (not nil or true)`
> * `expect(something).to be_falsey  # if something is falsy (nil or false)`
> * `expect(something).to be true    # if something == true`
> * `expect(something).to be false   # if something == false`
> * `expect(something).to be_nil     # if something.nil?`

## be_instance_of/be_kind_of
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/specify-types-of-objects)
> * `expect(something).to be_instance_of(expected) # if something.instance_of?(expected)`
> * `expect(something).to be_kind_of(expected)     # if something.kind_of?(expected)`

## raise_error
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher)
> * `expect { ... }.to raise_error                         # raise CustomError`
> * `expect { ... }.to raise_error(ErrorClass)             # raise ErrorClass`
> * `expect { ... }.to raise_error('Message')              # raise 'Message'`
> * `expect { ... }.to raise_error(ErrorClass, 'Message')  # raise ErrorClass, 'Message'`

## throw_symbol
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/throw-symbol-matcher)
> * `expect { ... }.to throw_symbol                      # throw :something`
> * `expect { ... }.to throw_symbol(:something)          # throw :something`
> * `expect { ... }.to throw_symbol(:something, 'value') # throw :something, 'value'`

## be_xxx/have_xxx
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/predicate-matchers)
> * `expect(Something).to be_valid                # if Something.valid?`
> * `expect(Something).to have_license(:expected) # if Something.has_license?(:expected)`

```
#!ruby
class Something
  def valid?
    ...
  end

  def has_license?(expected)
    ...
  end
end
```

## include
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/include-matcher)
> * `expect(something).to include(expected)`
> * `expect([1, 2, 3]).to include(1)`
> * `expect([1, 2, 3]).to include(1, 2)`
> * `expect(something: 'expected').to include(something: 'expected')`
> * `expect('something').to include('thing')`

## match
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/match-matcher)
> * `expect(something).to match(/expected/)`
> * `expect("something").to match(/som/)`
> * `expect(/som/).to match("something")`

## exist
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/exist-matcher)
> * `expect(Something).to exist  # if Something.exist?`

```
#!ruby
class Something
  def exist?
    ...
  end
end
```

## change
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/change-matcher)
> * `expect(Something.increment).to change{ Something.count }.from(0).to(1)`
> * `expect(Something.increment).to change{ Something.count }.by(1)`

```
#!ruby
class Something
  class << self
    def increment
      @count ||= 0
      @count += 1
    end

    def count
      @count ||= 0
    end
  end
end
```

## respond_to
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/respond-to-matcher)
> * `expect(Something).to respond_to(:expected, :expected_two)`

```
#!ruby
class Something
  class << self
    def expected
      ...
    end

    def expected_two
      ...
    end
  end
end
```

## satisfy
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/satisfy-matcher)
> * `expect(10).to satisfy { |s|  s > 5 }`

## contain_exactly
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/contain-exactly-matcher)
> * `expect([1, 2, 3]).to contain_exactly(2, 3, 1)`

## start_with
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/start-with-matcher)
> * `expect('something').to start_with('som')`
> * `expect([1, 2, 3]).to start_with(1, 2)`

## end_with
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/end-with-matcher)
> * `expect('something').to end_with('thing')`
> * `expect([1, 2, 3]).to end_with(1, 2)`

## cover
> * [Documentação Oficial](https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/cover-matcher)
> * `expect(1..10).to cover(1, 9)`
