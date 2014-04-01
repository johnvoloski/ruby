RUBY
============================================

## Reserved Words:
```
| --------- | ------- | ------- | -------- |
| BEGIN     | do      | next    | then     |
| END       | else    | nil     | true     |
| alias     | elsif   | not     | undef    |
| and       | end     | or      | unless   |
| begin     | ensure  | redo    | until    |
| break     | false   | rescue  | when     |
| case      | for     | retry   | while    |
| class     | if      | return  | __FILE__ |
| def       | in      | self    | __LINE__ |
| defined?  | module  | super   |          |
```

## Comments:
`# I am a comment. Just ignore me.`

```ruby
=begin
I am a first comment.
I am a second comment.
=end
```

## Variables:

### Global Variables
`Variáveis globais começam com $. Não inicializadas seu valor padrão é nil.`
```ruby
$global_variable = 0

class HelloWorldOne
  def increment
    $global_variable += 1
  end

  def output
    puts $global_variable
  end
end

class HelloWorldTwo
  def output
    puts $global_variable
  end
end

classOne = HelloWorldOne.new
classOne.increment
classOne.output
classTwo = HelloWorldTwo.new
classTwo.output
```

### Instance Variables
` Variáveis de instância começam com @. Não inicializadas seu valor padrão é nil.`
```ruby

class HelloWorldOne
  def initialize(value)
    @instance_variable = value
  end

  def output
    puts @instance_variable
  end
end

class HelloWorldTwo
  def initialize(value)
    @instance_variable = value
  end

  def output
    puts @instance_variable
  end
end

HelloWorldOne.new("Bob Esponja").output
HelloWorldTwo.new("Patrick").output
```

### Class Variables:
`Variáveis de classe começam com @@. Devem ser inicializadas.`
```ruby
class HelloWorldOne
  @@class_variable = ''

  def assign_variable(value)
    @@class_variable = value
  end

  def output
    puts @@class_variable
  end
end

HelloWorldOne.new.assign_variable("Bob Esponja").output
HelloWorldTwo.new.output
```

### Local Variables:
`Variáveis locais começam com uma letra minúscula ou _ . O escopo de uma variável local varia de classe, módulo, método ou a abertura e fechamento de um bloco, que corresponde ao final de seu ciclo.`
```ruby
class HelloWorld
  def initialize(value)
    puts value
  end
end
```

### Constants
`Constantes começam com uma letra maiúscula. Quando definidas dentro de uma classe ou módulo podem ser acessadas somente dentro dos mesmos, e as definidas fora de uma classe ou módulo podem ser acessadas globalmente. Costantes também não podem ser definidas dentro de métodos.`
```ruby
class HelloWorld
  HELLO_WORLD = 'Hello Bob Esponja'

  def output
    puts HELLO_WORLD
  end
end

HelloWorld.new.output
```

## Literals:
* `Boolean and nil`
* `Numbers`
* `Strings`
* `Symbols`
* `Arrays`
* `Hashes`
* `Ranges`
* `Regular Expressions`
* `Procs`

## Operadores:

### Aritimético
* `+ Soma`
* `- Subtração`
* `* Multiplicação`
* `/ Divisão`
* `% Módulo`
* `** Exponencial`

### Comparação
* `==`
* `!=`
* `>`
* `<`
* `>=`
* `<=`
* `<=>`
* `===`
* `.eql?`
* `.equal?`

### Atribuição
* `=`
* `+=`
* `-=`
* `*=`
* `/=`
* `%=`
* `**=`

### Atribuição Múltipla
```ruby
a, b, c = 10, 20 , 30
```

### Lógico
* `and`
* `or`
* `&&`
* `||`
* `!`
* `not`

### Ternário
* `?:`

### Intervalo
* `..`
* `...`

