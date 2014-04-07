RUBY
============================================

## Introduction:

### John Voloski:
  * johnvoloski
    * github
    * bitbucket
    * gmail.com
    * cwi.com.br
  * Projeto Atual ( Fábrica RoR )

### História do Ruby:
  * Yukihiro "Matz" Matsumoto
  * Se tornou pública em 1995
  * Ganhou muita popularidade com o Rails

### Características:
  * Open Source
  * Orientada a Objetos
  * Blocos de Código
  * Mixins
  * RubyGems
  * Linguagem Interpretada

### Interpretadores:
  * MRI
  * YARV
  * JRuby
  * Rubinius
  * MagLev
  * MacRuby

### Console:
  * irb

### Links:
  * [Ruby Lang](https://www.ruby-lang.org) - Site Oficial do Ruby
  * [TryRuby](http://tryruby.org) - Console Online de Ruby
  * [Ruby ToolBox](https://www.ruby-toolbox.com/) - Pesquisa da gem melhor conceituada para algum propósito
  * [RoR Brasil](http://www.rubyonrails.com.br/) - Ruby on Rails Brasil
  * [RoR](http://rubyonrails.org/) - Ruby on Rails
  * [RubyGems](http://rubygems.org/) - Gems disponíveis para o Ruby
  * [Rails for Zombies](http://railsforzombies.org/) - Site para aprendizado de Rails
  * [Rails Casts](http://www.railscasts.com/) - Vídeo aula de Rails

### O que é uma Gem?
  Uma "RubyGem" ou simplesmente "Gem" é uma biblioteca, um conjunto de arquivos Ruby reusáveis, etiquetada com um nome e uma versão (via um arquivo chamado de "gemspec").

### Gems "Famosas":
  * [Bundler](https://github.com/bundler/bundler/)
  * [Rake](https://github.com/jimweirich/rake)
  * [Rails](https://github.com/rails/rails)
  * [Sinatra](https://github.com/sinatra/sinatra)
  * [SimpleForm](https://github.com/plataformatec/simple_form)
  * [Devise](https://github.com/plataformatec/devise)
  * [RSpec](https://github.com/rspec/rspec/)
  * [Cucumber](https://github.com/cucumber/cucumber)

### Quem usa:
  * [Basecamp](http://basecamp.com/)
  * [Github](http://github.com/)
  * [Groupon](http://www.groupon.com/)
  * [SlideShare](http://www.slideshare.com/)
  * [iba](http://iba.com.br/)

## RubyGems:
  * [RubyGems Commands](http://guides.rubygems.org/command-reference/)
  * `gem dependency GEMNAME` - Mostra as dependências da gem instalada.
  * `gem fetch GEMNAME` - Baixa a gem e coloca no diretório atual.
  * `gem help` - Ajuda
  * `gem install GEMNAME` - Instala uma gem.
  * `gem list GEMNAME` - Lista as gems que começam com a GEMNAME
  * `gem outdated` - Exibe todas as gems que necessitam de update.
  * `gem push` - Sobe uma gem para o `rubygems`
  * `gem search GEMNAME` - Pesquisa uma gem no `rubygems` com a GEMNAME.
  * `gem uninstall GEMNAME` - Desinstala uma gem.
  * `gem update GEMNAME` - Atualiza a gem para a última versão.
  * `gem yank GEMNAME -v VERSION` - Remove uma versão da gem no `rubygems`.

## Bundler:
  É um gerenciador de `gems` da aplicação. Gerando uma lista de `gems` ele se encarrega de instalar, verificar versões e compatibilidades, após instaladas
  o `bundler` ajuda a atualizar quando tiver versões novas disponíveis, e registra as versões instaladas pra que se possa replicar exatamente as mesmas versões em diversas máquinas.

  ![Gemfile](https://github.com/johnvoloski/ruby/raw/master/images/gemfile.png "Gemfile")
  ![Gemfile.lock](https://github.com/johnvoloski/ruby/raw/master/images/gemfile_lock.png "Gemfile.lock")

## Rake:
É um automatizador de tarefas, você consegue criar tarefas utilizando a sintaxe do `ruby` como por exemplo publicar algo em um ssh ou ftp automaticamente.
```ruby
# Rakefile
task :ftp do
  ...
end
```

## Instalação: (Pra quem quer começar)
  * [Vagrant](https://github.com/johnvoloski/ruby-vagrant)

## Gerênciadores de Versões Ruby:
  * [pik](https://github.com/vertiginous/pik) - Windows
  * [rmv](http://rvm.io/) - Unix
  * [rbenv](http://rbenv.org/) - Unix

## The Structure and Execution of Ruby Programs

### Comments:
`# I am a comment. Just ignore me.`

```ruby
=begin
I am a first comment.
I am a second comment.
=end
```

## Datatype and Objects:

### Booleans and nil
### Numbers
### Strings
### Symbols
### Arrays
### Hashes
### Ranges
### Regular Expressions
### Objects

## Expressions and Operators:

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

### Operators:

#### Aritimético
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

#### Comparação
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

#### Atribuição
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

#### Atribuição Múltipla
```ruby
# Atribui paralelizadamente valores à variáveis seguindo sua ordem de definição.

a, b, c = 10, 20, 30
```

#### Lógico
* `and` ou `&&`
```ruby
# Se o valor da variável a e o valor da variável b forem verdadeiros, a condição é verdadeira.

a = true
b = true

puts 'True' if a and b
puts 'True' if a && b
```

* `or` ou `||`
```ruby
# Se o valor da variável a ou o valor da variável b forem verdadeiros, a condição é verdadeira.

a = true
b = false

puts 'True' if a or b
puts 'True' if a || b
```

* `!` ou `not`
```ruby
# Se o valor da variável a e o valor da variável b forem falsos, a condição é verdadeira.

a = false
b = false

puts 'True' if !(a && b)
puts 'True' if not(a && b)
```

#### Ternário
* `?:`
```ruby
# Cria uma expressão condicional.

condition = false

puts conditidion ? true : false
```

#### Intervalo
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

## Statements and Control Structures

### Conditionals

#### if, else statement:
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

#### if modifier:
```ruby
conditional = true

puts 'Is true.' if conditional
```

#### unless statement:
```ruby
conditional = 1

unless conditional > 2
  puts 'conditional is less than 2'
else
  puts 'conditional is greater than 2'
end
```

#### unless modifier:
```ruby
conditional = false

puts 'Is false.' unless conditional
```

#### case statement:
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

### Loops

#### While statement:
```ruby
a = 0
b = 5

while a < b do
  puts a
  a += 1
end
```

#### While modifier:
```ruby
a = 0
b = 5

begin
  puts a
  a += 1
end while a < b
```

#### Until Statement
```ruby
a = 0
b = 5

until a > b do
  puts a
  a += 1
end
```

#### Until modifier:
```ruby
a = 0
b = 5

begin
  puts a
  a += 1
end until a > b
```

#### For:
```ruby
for a in 0..5
  puts a
end
```

### Iterators and Enumerable Objects

### Blocks

### Altering Control Flow

#### Return
```ruby
for a in 0..5
  return a if a > 2
  puts a
end
```

#### Break:
```ruby
for a in 0..5
  break if a > 2
  puts a
end
```

#### Next:
```ruby
for a in 0..5
  next if a < 2
  puts a
end
```

#### Redo:
```ruby
for a in 0..5
  puts a
  redo if a < 2
end
```

#### Retry:
```ruby
# Ruby 1.8 funcionava também como o redo

a = 0

begin
  a += 1
  raise NoMethodError
rescue
  puts a
  retry
end
```

### Exception and Exception Handling

### begin and end

### Threads, Fibers and Continuations

## Methods, Procs, Lambdas and Closures

### Defining Simple Methods

### Method Names

### Methods and Parentheses

### Method Arguments

### Procs and Lambdas

### Closures

### Method Objects

### Funcional Programming

## Classes and Modules

### Defining a Simples Class

### Method Visibility: Public, Protected, Private

### Subclassing and Inheritance

### Object Creation and Initialization

### Modules

### Loading and Requiring Modules

### Singleton Methods and the Eigenclass

### Method Lookup

### Constant Lookup

Perguntas?
============================================

Problema!
============================================
```
Um dos serviços mais utilizados pelos usuários de aparelhos celulares são os SMS (Short Message Service), que permite o envio de mensagens curtas (até 255 caracteres em redes GSM e 160 caracteres em redes CDMA).
Para digitar uma mensagem em um aparelho que não possui um teclado QWERTY embutido é necessário fazer algumas combinações das 10 teclas numéricas do aparelho para conseguir digitar. Cada número é associado a um conjunto de letras como a seguir:
Letras -> Número
ABC    -> 2
DEF    -> 3
GHI    -> 4
JKL    -> 5
MNO    -> 6
PQRS   -> 7
TUV    -> 8
WXYZ   -> 9
Espaço -> 0
Desenvolva um programa que, dada uma mensagem de texto limitada a 255 caracteres, retorne a seqüência de números que precisa ser digitada. Uma pausa, para ser possível obter duas letras referenciadas pelo mesmo número, deve ser indicada como _.
Por exemplo, para digitar "RUBY E LEGAL", você precisa digitar:
777882299903305553342555
```
