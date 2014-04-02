RUBY
============================================

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

HelloWorldOne.new("SpongeBob SquarePants").output
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

HelloWorldOne.new.assign_variable("SpongeBob SquarePants").output
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
  HELLO_WORLD = 'Hello SpongeBob SquarePants'

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
* `+`
```ruby
# Soma o valor da variável a com o valor da variável b e returna o resultado.

a = 10
b = 20

puts a + b
```

* `-`
```ruby
# Subtrai da variável a o valor da váriavel b e returna o resultado.

a = 10
b = 20

puts a - b
```

* ```*```
```ruby
# Multiplica o valor da variável a com o valor da variável b e retorna o resultado.

a = 10
b = 20

puts a * b
```

* `/`
```ruby
# Divide o valor da variável b por o valor da variável a e retorna o resultado.

a = 10
b = 20

puts b / a
```

* `%`
```ruby
# Divide o valor da váriavel b por o valor da variável a e retorna o quociente da divisão.

a = 10
b = 20

puts b % a
```

* ```*```
```ruby
# Executa o cálculo exponencial sobre o valor da variável a quando o valor de seu expoente é o valor da variável b e retorna o resultado.

a = 10
b = 20

puts a**b
```

### Comparação
* `==`
```ruby
# Verifica se o valor da variável a é igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a == b)
```

* `!=`
```ruby
# Verifica se o valor da váriavel a é diferente do valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a != b)
```

* ```>```
```ruby
# Verifica se o valor da variável a é maior que o valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a > b)
```

* ```<```
```ruby
# Verifica se o valor da variável a é menor que o valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a < b)
```

* ```>=```
```ruby
# Verifica se o valor da variável a é maior ou igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a >= b)
```

* ```<=```
```ruby
# Verifica se o valor da variável a é menor ou igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a <= b)
```

* ```<=>```
```ruby
# Verifica se o valor da variável a é igual ao valor da váriavel b, então retorna 0, verifica se o valor da variável a é maior que o valor da váriavel b, então retorna 1, e verifica se o valor da variável a é menor que o valor da variável b, então retorna -1.

a = 10
b = 20

puts (a <=> b)
```

* `===`
```ruby
a = 10
b = 20

puts (a === b)
```

* `.eql?`
```ruby
# Verifica se o valor da variável a é igual ao valor da variável b, e se seus tipos são iguais, se sim retorna true.

a = 10
b = 20

puts a.eql?(b)
```

* `.equal?`
```ruby
# Verifica se o object id da variável a é igual à variável b, se sim retorna true.

a = 10
b = 20

puts a.equal?(b)
```

### Atribuição
* `=`
```ruby
# Atruibui o valor da variável a para a váriavel b.

a = 10
b = a

puts b
```

* `+=`
```ruby
# Atribui somando o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b += a

puts b
```

* `-=`
```ruby
# Atribui subtraindo o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b -= a

puts b
```

* ```*=```
```ruby
# Atribui multiplicando o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b *= a

puts b
```

* `/=`
```ruby
# Atribui dividindo o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b /= a

puts b
```

* `%=`
```ruby
# Atribui o quociente da divisão do valor da variável a por o valor da váriavel b.

a = 10
b = 10
b %= a

puts b
```

* ```**=```
```ruby
# Atribui calculando o valor exponencial do valor da variável a por o valor da váriavel b.

a = 10
b = 10
b **= a

puts b
```


### Atribuição Múltipla
```ruby
# Atribui paralelizadamente valores à variáveis seguindo sua ordem de definição.

a, b, c = 10, 20, 30
```

### Lógico
* `and`
```ruby
```

* `or`
```ruby
```

* `&&`
```ruby
```

* `||`
```ruby
```

* `!`
```ruby
```

* `not`
```ruby
```

### Ternário
* `?:`
```ruby
# Cria uma expressão condicional.

condition = false

puts conditidion ? true : false
```

### Intervalo
* `..`
```ruby
# Cria um intervalo entre o ponto de partida e o ponto de chegada incluido ele.

puts (1..10).to_a
```

* `...`
```ruby
# Cria um intervalo entre o ponto de partida e o ponto de chegada excluíndo ele.

puts (1...10).to_a
```

## if, else, case, unless

### if, else statement:
```ruby
conditional = 1

if conditional > 2
  puts 'conditional is greater than 2'
elsif conditional <= 2 && conditional != 0
  puts 'conditional  is 1'
else
  puts 'I can`t guess the number'
end
```

### if modifier:
```ruby
conditional = true

puts 'Is true.' if conditional
```

### unless statement:
```ruby
conditional = 1

unless conditional > 2
  puts 'conditional is less than 2'
else
  puts 'conditional is greater than 2'
end
```

### unless modifier:
```ruby
conditional = false

puts 'Is false.' unless conditional
```

### case statement:
```ruby
conditional = 10

case conditional
when 1
  puts 'Is 1.'
when 2 .. 5
  puts 'Is between 2 and 5'
when 6 .. 9
  puts 'Is between 6 and 9'
when 10
  puts 'is 10'
else
  puts 'I can`t guess the number'
end
```
