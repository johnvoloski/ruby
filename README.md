RUBY
============================================

## Introdução:

### John Voloski:
  * @johnvoloski
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

### Editores:
  * [Vim](https://github.com/johnvoloski/dotvim) - Usem este :D
  * [TextMate](http://macromates.com/)
  * [Emacs](http://www.gnu.org/software/emacs/)
  * [RubyMine](http://www.jetbrains.com/ruby/)
  * [SublimeText](http://www.sublimetext.com/)

### Links:
  * [Ruby Lang](https://www.ruby-lang.org) - Site Oficial do Ruby
  * [TryRuby](http://tryruby.org) - Console Online de Ruby
  * [Ruby ToolBox](https://www.ruby-toolbox.com/) - Pesquisa da gem melhor conceituada para algum propósito
  * [RoR Brasil](http://www.rubyonrails.com.br/) - Ruby on Rails Brasil
  * [RoR](http://rubyonrails.org/) - Ruby on Rails
  * [RubyGems](http://rubygems.org/) - Gems disponíveis para o Ruby
  * [Rails for Zombies](http://railsforzombies.org/) - Site para aprendizado de Rails
  * [Rails Casts](http://www.railscasts.com/) - Vídeo aula de Rails
  * [Akita on Rails](http://www.akitaonrails.com/) - Blog de Ruby

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
  
  ![Rakefile](https://github.com/johnvoloski/ruby/raw/master/images/rakefile.png "Rakefile")

## Instalação:
  * [Vagrant](https://github.com/johnvoloski/ruby-vagrant)

## Hospedagem:
  * [Heroku](https://www.heroku.com/)
  * [AppFog](https://www.appfog.com/)
  * [Amazon](https://aws.amazon.com/pt/ec2/?nc1=h_ls)
  * [Digital Ocean](https://digitalocean.com/)

## Integração Contínua:
  * [GO](http://www.thoughtworks.com/products/go-continuous-delivery)
  * [Travis](https://travis-ci.org/)

## Gerênciadores de Versões Ruby:
  * [pik](https://github.com/vertiginous/pik) - Windows
  * [rmv](http://rvm.io/) - Unix
  * [rbenv](http://rbenv.org/) - Unix

## Comentários:
```ruby
# SpongeBob SquarePants.

=begin
  SpongeBob SquarePants.
  Patrick isn't SquarePants.
=end
```

## Tipos de Dados:

### True, False e Nil:
  True representa o verdadeiro, False o falso e nil representa a abstenção de valor. Qualquer valor sem ser False e Nil é True.
```ruby
puts true.class
# TrueClass

puts false.class
# FalseClass

puts nil.class
# NilClass
```

### Numbers:

#### Integer:
  Pode ser utilizado o _ para melhor visualização.
```ruby
puts 1_000_000_00
# 100000000

puts 1_000_000_00.class
# Fixnum
```

##### Fixnum:
  São inteiros que se encaixam dentro de 31 bits então sua instância é um Fixnum.
```ruby
puts 999999999999999999.class
# Fixnum
```

##### Bignum:
  São inteiros que se encaixam acima de 31 bits então sua instância é um Bignum.
```ruby
puts 9999999999999999999.class
# Bignum
```

#### Float:
  São números que utilizam pontos flutuantes, sua instância é um Float.
```ruby
99.99.class
# Float
```

#### Rational:
  São números racionais, sua instância é um Rational.
```ruby
puts Rational(8/4).class
# Rational
```

### Strings:

#### Aspas Simples:
```ruby
puts 'Sou uma string com aspas simples e com instância String'.class
# String

puts 'Sou uma string com aspas simples'
# Sou uma string com aspas simples

puts 'Sou uma string \' com um "escape"'
# Sou uma string ' com um "escape"

puts 'Sou uma string quebrada' \
     'em multiplas linhas' \
     'não somente em uma'
# Sou uma string quebrada em multiplas linhas não somente em uma
```

#### Aspas Duplas:
```ruby
puts "Sou uma string com aspas duplas e com instância String".class
# String

puts "Sou uma string com aspas duplas"
# Sou uma string com aspas duplas
```

Interpolações em string são feitas através do `#{}`:
```ruby
adjective = 'SquarePants'
puts "SpongeBob #{adjective}"
# SpongeBob SquarePants
```

### Symbols:
Um símbolo é um identificador único no ruby. O símbolo referencia ele mesmo.
Um símbolo tem uma comparação muito mais rápida que uma string.
Símbolos são ideais para definerem uma chave dentro de um hash, pois é um valor que não será alterado.
```ruby
friends = ['SpongeBob', 'Patrick']
puts friends
# ["SpongeBob", "Patrick"]

friends = [:SpongeBob, :Patrick]
puts friends
# [:SpongeBob, :Patrick]
```

### Arrays:
Um `array` é uma sequência de valores acessíveis pela sua posição ou indíce.
Em `ruby` o valor do primeiro indíce é 0.
```ruby
puts [1, 2, 3, 4]
# [1, 2, 3, 4]

puts Array.new(4)
# [nil, nil, nil, nil]
```

### Hashes:
Um `hash` em `ruby` é composto por objetos formados por `chave` => `valor`.

```ruby
sb = { 'SpongeBob' => 'SquarePants' }
puts sb['SpongeBob']
# SquarePants

sb = { :SpongeBob => 'SquarePants' }
puts sb[:SpongeBob]
# SquarePants

sb = { SpongeBob: 'SquarePants' }
puts sb[:SpongeBob]
# SquarePants
```

### Ranges:
O `range` representa o intervalo entre um início e um final.
```ruby
# Irá gerar um intervalo de 1 à 10 incluindo o 10.
puts 1..10
# 1..10

# Irá gerar um intervalo de 1 à 10 excluíndo o 10.
puts 1...10
# 1...10

# Pode ser usado com strings também.
puts 'a'..'f'
# 'a'..'f'
```

### Expressões Regulares:
  * Em `ruby` as expressões regulares são representadas por `/`
```ruby
puts 'SpongeBob'.gsub(/[aeiou]/, '')
# SpngBb
```

## Expressões e Operadores:

### Variáveis Globais:
  * Variáveis globais começam com $. Não inicializadas seu valor padrão é nil.
  * Elas são visíveis de qualquer lugar.
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
# 1

classTwo = HelloWorldTwo.new
classOne.increment
classTwo.output
# 2
```

### Variáveis de Instância:
  * Variáveis de instância começam com @. Não inicializadas seu valor padrão é nil.
  * Elas são visíveis apenas dentro da instância, compartilhada entre os métodos de instância.
  * Elas podem ser acessadas externamente criando um `attr`.
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
# SpongeBob SquarePants

HelloWorldTwo.new("Patrick").output
# Patrick
```

### Variáveis de Classe:
  * Variáveis de classe começam com @@. Devem ser inicializadas.
  * Elas são visíveis e compartilhadas entre métodos de classe, métodos de instância e classes do mesmo tipo.
  * Elas são encapsuladas, só podem ser acessadas e usadas na implementação e não de fora.
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

one = HelloWorldOne.new
one.assign_variable("SpongeBob SquarePants")
one.output
# SpongeBob SquarePants

two = HelloWorldOne.new
two.output
# SpongeBob SquarePants
```

### Variáveis Locais:
  * Variáveis locais começam com uma letra minúscula ou _ . 
  * O escopo de uma variável local varia de classe, módulo, método ou a abertura e fechamento de um bloco, que corresponde ao final de seu ciclo.
```ruby
class HelloWorld
  def initialize(value)
    puts value
  end
end

HelloWorld.new('SpongeBob SquarePants')
# SpongeBob SquarePants
```

### Constants:
  * Constantes começam com uma letra maiúscula. 
  * Constantes podem ser visualizadas internamente de uma classe ou módulo, apenas pelo seu nome, ou externamente através do seu módulo/classe mais o seu nome.
```ruby
class HelloWorld
  HELLO_WORLD = 'Hello SpongeBob SquarePants'

  def output
    HELLO_WORLD
  end
end

puts HelloWorld.new.output
# Hello SpongeBob SquarePants

puts HelloWorld::HELLO_WORLD
# Hello SpongeBob SquarePants
```

### Operadores:

#### Aritimético:
* `+`
```ruby
# Soma o valor da variável a com o valor da variável b e returna o resultado.

a = 10
b = 20

puts a + b
# 30
```

* `-`
```ruby
# Subtrai da variável a o valor da váriavel b e returna o resultado.

a = 10
b = 20

puts a - b
# -10
```

* ```*```
```ruby
# Multiplica o valor da variável a com o valor da variável b e retorna o resultado.

a = 10
b = 20

puts a * b
# 200
```

* `/`
```ruby
# Divide o valor da variável b por o valor da variável a e retorna o resultado.

a = 10
b = 20

puts b / a
# 2
```

* `%`
```ruby
# Divide o valor da váriavel b por o valor da variável a e retorna o quociente da divisão.

a = 10
b = 20

puts b % a
# 0
```

* ```*```
```ruby
# Executa o cálculo exponencial sobre o valor da variável a quando o valor de seu expoente é o valor da variável b e retorna o resultado.

a = 10
b = 2

puts a**b
# 100
```

#### Comparação:
* `==`
```ruby
# Verifica se o valor da variável a é igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a == b)
# false
```

* `!=`
```ruby
# Verifica se o valor da váriavel a é diferente do valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a != b)
# true
```

* ```>```
```ruby
# Verifica se o valor da variável a é maior que o valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a > b)
# false
```

* ```<```
```ruby
# Verifica se o valor da variável a é menor que o valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a < b)
# true
```

* ```>=```
```ruby
# Verifica se o valor da variável a é maior ou igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a >= b)
# false
```

* ```<=```
```ruby
# Verifica se o valor da variável a é menor ou igual ao valor da variável b, se sim retorna true.

a = 10
b = 20

puts (a <= b)
# true
```

* ```<=>```
```ruby
# Verifica se o valor da variável a é igual ao valor da váriavel b, então retorna 0, verifica se o valor da variável a é maior que o valor da váriavel b, então retorna 1, e verifica se o valor da variável a é menor que o valor da variável b, então retorna -1.

a = 10
b = 20

puts (a <=> b)
# -1
```

* `===`
```ruby
a = 10
b = 20

puts (a === b)
# true
```

* `.eql?`
```ruby
# Verifica se o valor da variável a é igual ao valor da variável b, e se seus tipos são iguais, se sim retorna true.

a = 10
b = 20

puts a.eql?(b)
# false
```

* `.equal?`
```ruby
# Verifica se o object id da variável a é igual à variável b, se sim retorna true.

a = 10
b = 20

puts a.equal?(b)
# false
```

#### Atribuição:
* `=`
```ruby
# Atruibui o valor da variável a para a váriavel b.

a = 10
b = a

puts b
# 10
```

* `+=`
```ruby
# Atribui somando o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b += a

puts b
# 20
```

* `-=`
```ruby
# Atribui subtraindo o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b -= a

puts b
# 0
```

* ```*=```
```ruby
# Atribui multiplicando o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b *= a

puts b
# 100
```

* `/=`
```ruby
# Atribui dividindo o valor da variável a por o valor da váriavel b.

a = 10
b = 10
b /= a

puts b
# 1
```

* `%=`
```ruby
# Atribui o quociente da divisão do valor da variável a por o valor da váriavel b.

a = 10
b = 10
b %= a

puts b
# 0
```

* ```**=```
```ruby
# Atribui calculando o valor exponencial do valor da variável a por o valor da váriavel b.

a = 10
b = 2
b **= a

puts b
# 1024
```

#### Atribuição Múltipla:
```ruby
# Atribui paralelizadamente valores à variáveis seguindo sua ordem de definição.

a, b, c = 10, 20, 30
```

#### Lógico:
* `and` ou `&&`
```ruby
# Se o valor da variável a e o valor da variável b forem verdadeiros, a condição é verdadeira.

a = true
b = true

puts 'True' if a and b
# True

puts 'True' if a && b
# True
```

* `or` ou `||`
```ruby
# Se o valor da variável a ou o valor da variável b forem verdadeiros, a condição é verdadeira.

a = true
b = false

puts 'True' if a or b
# True

puts 'True' if a || b
# True
```

* `!` ou `not`
```ruby
# Se o valor da variável a e o valor da variável b forem falsos, a condição é verdadeira.

a = false
b = false

puts 'True' if !(a && b)
# True

puts 'True' if not(a && b)
# True
```

#### Ternário:
* `?:`
```ruby
# Cria uma expressão condicional.

condition = false

puts conditidion ? true : false
# true
```

#### Intervalo:
* `..`
```ruby
# Cria um intervalo entre o ponto de partida e o ponto de chegada incluido ele.

puts (1..10).to_a
# 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

* `...`
```ruby
# Cria um intervalo entre o ponto de partida e o ponto de chegada excluíndo ele.

puts (1...10).to_a
# 1, 2, 3, 4, 5, 6, 7, 8, 9
```

## Controle de Estruturas e Afirmação:

### Condicionais:

#### if, else afirmação:
```ruby
conditional = 1

if conditional > 2
  puts 'conditional is greater than 2'
elsif conditional <= 2 && conditional != 0
  puts 'conditional is 1'
else
  puts 'I can`t guess the number'
end
# conditional is 1
```

#### if modificador:
```ruby
conditional = true

puts 'Is true.' if conditional
# Is true
```

#### unless afirmação:
```ruby
conditional = 1

unless conditional > 2
  puts 'conditional is less than 2'
else
  puts 'conditional is greater than 2'
end
# conditional is less than 2
```

#### unless modificador:
```ruby
conditional = false

puts 'Is false.' unless conditional
# Is false
```

#### case afirmação:
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
# is 10
```

### Laços

#### While afirmação:
```ruby
a = 0
b = 5

while a < b do
  puts a
  a += 1
end
# 0, 1, 2, 3, 4
```

#### While modificador:
```ruby
a = 0
b = 5

begin
  puts a
  a += 1
end while a < b
# 0, 1, 2, 3, 4
```

#### Until afirmação:
```ruby
a = 0
b = 5

until a > b do
  puts a
  a += 1
end
# 0, 1, 2, 3, 4, 5
```

#### Until modificador:
```ruby
a = 0
b = 5

begin
  puts a
  a += 1
end until a > b
# 0, 1, 2, 3, 4, 5
```

#### For:
```ruby
for a in 0..5
  puts a
end
# 0, 1, 2, 3, 4, 5
```

### Blocos:
  Os `blocks` assim como é definido são blocos de códigos formados por delimitadores `{ ... }` ou `do ... end`,
  a convensão que usamos é `{ ... }` para uma linha e `do ... end` para mais de uma linha.
  O bloco serve para armazenar uma implementação que for desejada, e será executada em um certo momento, com
  seu pŕoprio escopo.
  Blocos só podem ser usados com métodos.
  Eles podem ser executados atráves do `&` chamando na implementação `block.call`, ou também através do `yield`, 
  o `yield` tem como função executar um bloco anônimo sem precisar ser especificado no método.
  
```ruby
class SpongeBob
  def is_squarepants?(&block)
    block.call
  end

  def i_live_in_ocean?
    yield
  end
end

SpongeBob.new.is_squarepants?  { puts true }
# true

SpongeBob.new.i_live_in_ocean? do 
  puts true
end
# true
```

### Alteradores de Controle de Fluxo:

#### Return
```ruby
for a in 0..5
  return a if a > 2
  puts a
end
# 0, 1, 2
```

#### Break:
```ruby
for a in 0..5
  break if a > 2
  puts a
end
# 0, 1, 2
```

#### Next:
```ruby
for a in 0..5
  next if a < 2
  puts a
end
# 2, 3, 4, 5
```

#### Redo:
```ruby
for a in 0..5
  puts a
  redo if a < 2
end

# Loop infinito
```

#### Retry:
```ruby
a = 0

begin
  a += 1
  raise NoMethodError
rescue
  puts a
  retry
end

# Retry infinito
```

### Exceções e Tratamentos:
  Hierarquia da Classe de Exceção do Ruby:

  * Object
    * Exception
      * NoMemoryError
      * ScriptError
        * LoadError
        * NotImplementedError
        * SyntaxError
      * SecurityError
      * SignalException
        * Interrupt
      * SystemExit
      * SystemStackError
      * StandardError
        * ArgumentError
        * FiberError
        * IOError
          * EOFError
        * IndexError
          * KeyError
          * StopIteration
        * LocalJumpError
        * NameError
          * NoMethodError
        * RangeError
          * FloatDomainError
        * RegexpError
        * RuntimeError
        * SystemCallError
        * ThreadError
        * TypeError
        * ZeroDivisionError

  Definindo uma exception class:
```ruby
class MyError < StandardError; end
```
  
  Levantando uma exception:
```ruby
  class MyError < StandardError; end

  raise MyError
  raise MyError, 'Exception'
```

  Tratando exception com `rescue`:
```ruby
class MyError < StandardError; end

begin
  # Minha implementação aqui.
  raise MyError if true
rescue => ex
  # Aqui o tratamento da minha exception.
  puts "#{ex.class}: #{ex.message}"
end
# MyError: Mensagem
```

  Tratando exception com `rescue` pelo tipo:
```ruby
class MyError < ArgumentError; end

begin
  # Minha implementação aqui.
  raise MyError if true
rescue NoMethodError => ex
  # Aqui o tratamento de método não definido.
  puts "NoMethodError: #{ex.class}: #{ex.message}"
rescue ArgumentError => ex
  # Aqui o tratamento de erro nos argumentos.
  puts "ArgumentError: #{ex.class}: #{ex.message}"
end
# ArgumentError: MyError: Mensagem
```

  Quando ocorre um exceção durante um tratamento, então é propagada uma nova exceção.

  Usando o `retry` dentro de um tratamento de exceção:
```ruby
tries = 0

begin
  tries += 1
  xMethod
rescue NoMethodError => ex
  puts ex.message
  retry if tries < 4
end
# Mensagem
# Mensagem
# Mensagem
# Mensagem
```

  A cláusula `else` geralmente é utilizada para um tratamento genérico onde outros tratamentos utilizando o `rescue` não forma efetivos:
```ruby
begin
  raise StandardError
rescue NoMethodError => ex
  puts "NoMethodError: #{ex.message}"
else
  puts "GenericError"
end
# GenericError
```

  A Cláusula `ensure` é utilizada como finalização do tratamento, ela é chama sempre após executar um `rescue` e até mesmo o `else`:
```ruby
begin
  raise NoMethodError
rescue NoMethodError => ex
  puts "NoMethodError: #{ex.message}"
ensure
  puts "E finalizou a exceção."
end
# NoMethodError: Mensagem
# E finalizou a exceção.

begin
  raise StandardError
rescue NoMethodError => ex
  puts "NoMethodError: #{ex.message}"
else
  puts "GenericError"
ensure
  puts "E finalizou a exceção."
end
# GenericError
# E finalizou a exceção.
```

  Utilizando o `rescue` em um método, classe ou módulo.
```ruby
class Patrick; end
class SpongeBob; end
class Squidward; end

class NotSpongeBobError < StandardError; end
class NotPatrickError < StandardError; end

def is_squarepants?(name)
  raise NotSpongeBobError if !name.is_a? SpongeBob
rescue
  raise NotPatrickError if !name.is_a? Patrick
else
  puts "O nome da classe é: {Squidward.name}."
ensure
  puts "Ele também é um personagem."
end

is_squarepants?(Squidward)
# O nome da classe é: Squidward
# Ele também é um personagem.
```

  Utilizando o `rescue` como modificador:
```ruby
puts is_squarepants?(Patrick)
# NoMethodError

puts is_squarepants?(SpongeBob) rescue true
# true
```

## Métodos, Procs e Lambdas:

### Definindo métodos simples:
  Definindo um método:
```ruby
class SpongeBob; end

def is_squarepants?(name)
  name.is_a?(SpongeBob) ? true : false
end
```

  Invocando um método:
```ruby
class SpongeBob; end

def is_squarepants?(name)
  name.is_a?(SpongeBob) ? true : false
end
  
is_squarepants?(SpongeBob.new)
# true
```

  Definindo um método Singleton:
```ruby
bob = 'SpongeBob'

def bob.is_squarepants?
  true
end

bob.is_squarepants?
# true
```

  Indefinindo um método:
```ruby
def is_squarepants?
  true
end

is_squarepants?
# true

undef is_squarepants?

is_squarepants?
# NoMethodError
```

### Nomes de Métodos:
  Por convensão nomes de métodos começam sempre com letra minúscula, podem começar com letra maiúscula mas irão se parecer com uma constante.
  Quando o nome do método é maior que uma palavra, por convensão utiliza-se "_" para separa as palavras: "is_squarepants?".
  A convensão para métodos com `?` no final, são métodos cujo valor retornado sempre será um boleano.
  A conversão para métodos com `!` no final, são métodos cuja utilização deve ser com cautela, por exemplo, o método `sort` de um `Array`, ele copia
  o `Array` e ordena, já o método `sort!, efetua o `sort!` no mesmo array o redefinindo.
```ruby
class SpongeBob
  def is_squarepants?
    @squarepants || false
  end

  def is_squarepants!
    @squarepants = true
  end
end

bob = SpongeBob.new
puts bob.is_squarepants?
# false

bob.is_squarepants!
puts bob.is_squarepants?
# true
```

  Redefinindo os Métodos Operadores:
```ruby
class SpongeBob
  def +(value)
    "SpongeBob #{value}"
  end
end

puts SpongeBob.new + "SquarePants"
# SpongeBob SquarePants
```

  Definindo "alias" para os Métodos: (Não é possível fazer "Overloading" em um "alias")
```ruby
def is_squarepants?
  true
end

alias is_sp? is_squarepants?

puts is_squarepants?
# true

puts is_sp?
# true
```

### Argumentos em Métodos:
  Lista de Argumentos como Parâmetros:
```ruby
def is_squarepants?(name, *args)
  puts "Name: #{name}"
  puts "Qualquer outro parâmetro informado: #{args}"
end

is_squarepants?('SpongeBob', true, 'Patrick')
# Name: SpongeBob
# Qualquer outro parâmetro informado: [true, "Patrick"]
```

  Hash como parâmetro:
```ruby
def is_squarepants?(name = 'SpongeBob', options = { squarepants: true })
  puts name
  puts options[:squarepants]
end

puts is_squarepants?
# SpongeBob
# true

puts is_squarepants?('Patrick', squarepants: false)
# Patrick
# false
```

  Bloco como parâmetro:
  
  Se você prefere um controle explícito sobre o bloco, adicione um parâmetro final com um `&` na frente, então esse parâmetro irá referenciar o bloco, se for passado 
  para o método, o tipo desse bloco sera um `Proc` ao invés de usar o `yield` você invocará através do método `call`.
```ruby
def is_squarepants?(name, &block)
  block.call(name)
end

puts is_squarepants?('SpongeBob') { |name| puts "#{name} SquarePants" }
# SpongeBob SquarePants

puts is_squarepants?('Patrick')   { |name| puts "#{name} isn't SquarePants" }
# Patrick isn't SquarePants
```
  
  Se você prefere um controle mais específico ainda, defina um parâmetro como sendo o do bloco, o tipo deste parâmetro será um `Proc` e será invocado através do método `call`.
```ruby
def is_squarepants?(name, block)
  block.call(name)
end

puts is_squarepants?('SpongeBob',  proc { |name| puts "#{name} SquarePants" })
# SpongeBob SquarePants

puts is_squarepants?('Patrick', proc { |name| puts "#{name} isn't SquarePants" })
# Patrick isn't SquarePants
```

### Procs e Lambdas:
  Blocos são estruturas sintáticas em Ruby, não são objetos e não tem como os manipular como objetos.
  Então é possível criar um objeto representante de um bloco. Dependendo de como é criado o objeto,
  ele é chamado de `proc` ou `lambda`. `Procs` tem um comportamento como o de um bloco, e `Lambdas` tem
  um comportamento como um método. No entando os dois são instâncias da classe `Proc`.

  Criando Procs:
```ruby
p = Proc.new { |adjective| "SpongeBob #{adjective}" }
p.call('SquarePants')
# SpongeBob SquarePants

p = proc { |adjective| "SpongeBob #{adjective}" }
p.call('SquarePants')
# SpongeBob SquarePants
```

  Criando Lambdas:
```ruby
l = lambda { |adjective| "SpongeBob #{adjective}" }
l.call('SquarePants')
# SpongeBob SquarePants

l = ->(adjective) { "SpongeBob #{adjective}" }
l.call('SquarePants')
# SpongeBob SquarePants
```

  Descubrindo a quantidade de parâmetros obrigatórios de uma `Proc`:
```ruby
p = proc { |adjective| "SpongeBob is #{adjective}" }
puts p.arity
# 1

l = ->(adjective) { "SpongeBob is #{adjective}" }
l.arity
# 1
```

  Como diferenciar um `lambda` de um `proc`:
  O `proc` se parece como um bloco e tem um comportamento de bloco, o `lambda` é levemente modificado para parecer como um método. Para descobrir se o
  objeto é um `lambda` ou `proc` existe o método `lambda?` que retorna `true` se for um `lambda` e `false` se for um `proc`.
  O `proc` funciona como um bloco, seu retorno é propagado no contexto e não para o próprio `proc`.
  O `lambda` funciona como um método, seu retorno é propagado para o próprio `lambda`.
```ruby
def is_squarepants?
  p = proc { puts 'SpongeBob is SquarePants'; return }
  p.call
  puts ' and Patrick also'
end
# SpongeBob is SquarePants

def is_squarepants?
  p = ->{ puts 'SpongeBob is SquarePants'; return }
  p.call
  puts " and Patrick isn't"
end
# SpongeBob is SquarePants and Patrick isn't 
```

## Classes e Módulos:

### Definindo uma classe simples:

#### Criando uma classe:
```ruby
class SpongeBob; end
```

#### Instânciando a classe:
```ruby
class SpongeBob; end

sb = SpongeBob.new

puts sb.class
# SpongeBob
puts sb.is_a?(SpongeBob)
# true
```

#### Definindo o método inicializador de uma classe:
```ruby
class SpongeBob
  def initialize(squarepants)
    @squarepants = squarepants
  end
end
```

#### Acessos e Atributos:
Provendo os acessos a uma váriavel de instância de forma manual:
```ruby
class SpongeBob
  def initialize(squarepants)
    @squarepants = squarepants
  end

  def squarepants; @squarepants; end

  def squarepants=(value)
    @squarepants = value
  end
end

sb = SpongeBob.new(true)
sb.squarepants = true
puts sb.squarepants
# true
```

Para prover esses acessos de formá automática o `ruby` fornece os métodos para serem definidos:
  * attr_reader   - Cria o acesso de leitura 
```ruby
class SpongeBob
  attr_reader :squarepants

  def initialize
    @squarepants = false
  end
end

sb = SpongeBob.new
puts sb.squarepants
# false

sb.squarepants = true
# Erro
```
  
  * attr_writer   - Cria o acesso de escrita
```ruby
class SpongeBob
  attr_writer :squarepants

  def initialize
    @squarepants = false
  end
end

sb = SpongeBob.new
sb.squarepants = true

puts sb.squarepants
# Erro
```

  * attr_accessor - Cria o acesso de leitura e escrita
```ruby
class SpongeBob
  attr_accessor :squarepants

  def initialize
    @squarepants = false
  end
end

sb = SpongeBob.new
sb.squarepants = true
puts sb.squarepants
# true
```

### Definindo Operadores:
Em `ruby` você pode redefinir os operadores de uma classe:
  * Alguns operadores que podem ser definidos:
    * ` + `
    * ` - `
    * ` * `
    * ` / `
    * ` % `
    * ` -@ `
    * ` +@ `
    * ` ~ `
    * ` ! `
    * ` = `
    * ` == `
    * ` === `

```ruby
class SpongeBob
  def initialize
    @he = 'SpongeBob'
  end

  def +(value)
    "#{@he} #{value}"
  end

  def !
    "#{@he} isn't SquarePants"
  end
end

sb = SpongeBob.new
puts sb + 'SquarePants'
# SpongeBob SquarePants

puts !sb
# SpongeBob isn't SquarePants
```

### Método de classe:
Métodos de Classe são métodos dos quais não dependem de uma instância ativa da classe.

```ruby
class SpongeBob
  def Point.is_squarepants?(instance)
    instance.is_a?(SpongeBob)
  end
  
  def self.is_squarepants?(instance)
    instance.is_a?(SpongeBob)
  end

  class << self
    def is_squarepants?(instance)
      instance.is_a?(SpongeBob)
    end
  end
end

puts SpongeBob.is_squarepants?(SpongeBob.new)
# true
```

### Método de instância:
Método de Instância são os métodos dos quais dependem de uma instância ativa da classe.

```ruby
class SpongeBob
  def is_squarepants?(instance)
    instance.is_a?(SpongeBob)
  end
end

puts SpongeBob.new.is_squarepants?(SpongeBob.new)
# true
```

### Visibilidade de Métodos: Public, Protected, Private
  * Métodos de classe podem ser definidos públicos com este comando:
```ruby
public_class_method :squarepants
```
  
  * Todos métodos normalmente são públicos, exceto o `initialize` que é sempre privado. Os métodos públicos podem ser 
  invocados por qualquer um, não existe restrições.
```ruby
class SpongeBob
  def is_squarepants?
    self.is_a? SpongeBob
  end
end

sb = SpongeBob.new
sb.is_squarepants?
# true
```

  * Métodos de classe podem ser definidos privados com este comando:
```ruby
private_class_method :squarepants
```
  
  * Os métodos privados, são métodos que só podem ser acessados internamente.
```ruby
class KrustyKrab
  private
  
  def is_employee?(instance)
    instance.is_a?(SpongeBob)
  end

  # Pode ser definido privado desta maneira também:
  # private :is_employee?
end

class SpongeBob < KrustyKrab
  def job
    puts is_employee?(self)
    puts self.is_employee?(self) rescue puts 'Não pode chamar o método privado por uma referência.'
    puts SpongeBob.new.is_employee?(SpongeBob.new) rescue puts 'Não pode chamar o método privado externamente.'
  end
end

SpongeBob.new.job
# true
# Não pode chamar o método privado por uma referência.
# Não pode chamar o método privado externamente.
```
  
  * Os métodos protegidos, são métodos iguais ao privados, só difere na medida em que pode ser explicitamente chamado em qualquer instância da classe.
```ruby
class KrustyKrab
  protected
  
  def is_employee?(instance)
    instance.is_a?(SpongeBob)
  end

  # Pode ser definido protegido desta maneira também:
  # protected :is_employee?
end

class SpongeBob < KrustyKrab
  def job
    puts is_employee?(self)

    puts self.is_employee?(self)
    puts 'Pode chamar o método protegido por uma referência.'

    puts SpongeBob.new.is_employee?(SpongeBob.new)
    puts 'Pode chamar o método protegido externamente.'
  end
end

SpongeBob.new.job
# true
# Pode chamar o método protegido por uma referência
# true
# Pode chamar o método protegido externamente.
```

### Heranças:
  Herança não é muito diferente em `ruby`, quando você tem um classe `SpongeBob` que herda de `Ocean` dizemos que `SpongeBob` é uma `subclass` e `Ocean` é uma `superclass`.
  Uma classe pode ter infinitas `subclasses` mas apenas uma `superclass`. `ruby` não possui herança múltipla.
  Variáveis de instância, classe e constantes são herdadas e podem ser modificadas. O detalhes se for uma constante é que se estivermos
  criando alguma instância na `superclass` dela, a instância da `subclass` será diferente, pois sera criada uma nova.

  * Herança de métodos:
```ruby
class Ocean
  def has_squarepants_here?
    true
  end
end

class SpongeBob < Ocean; end

puts SpongeBob.new.has_squarepants_here?
# true
```

  * Sobrescrevendo métodos:
```ruby
class Ocean
  def has_squarepants_here?
    false
  end
end

class SpongeBob > Ocean
  def has_squarepants_here?
    true
  end
end

puts SpongeBob.new.has_squarepants_here?
# true
```

  * Sobrescrevendo métodos privados e protegidos:
```ruby
class Ocean
  private

  def has_squarepants_here?
    false
  end

  protected

  def whoiam?
    'Ocean'
  end
end

class SpongeBob > Ocean
  def has_squarepants_here?
    true
  end

  def whoiam?
    'SpongeBob'
  end
end

puts SpongeBob.new.has_squarepants_here?
# true

puts SpongeBob.new.whoiam?
# SpongeBob
```

  * Algumas vezes necessitamos sobrescrever um método mas continuar com a implementação antiga, então usamos o `super`: (chaining)
```ruby
class Ocean
  def initialize(whoiam = 'Ocean')
    @whoiam = "I am #{whoiam}"
  end
end

class SpongeBob < Ocean
  attr_accessor :presentation

  def initialize
    super('SpongeBob')

    @presentation = "#{@whoiam}, and I live in the ocean."
  end
end

puts SpongeBob.new.presentation
# I am SpongeBob, and I live in the ocean.
```

### Módulos:
  Módulos são um coleção de módulos, constantes, classes e variáveis de classe.
  Um módulo não é instânciavel e não possui herança.
  Módulos usam `namespaces` e `mixins`, classes podem usar `namespaces` assim como os módulos, mas classes não usam `mixins`.
```ruby
module Ocean
  def self.spongebob_live_here?
    true
  end

  def self.patrick_live_here?
    true
  end

  class SpongeBob
    def whoiam?
      'SpongeBob'
    end
  end

  class Patrick
    def whoiam?
      'Patrick'
    end
  end
end

puts Ocean::SpongeBob.new.whoiam?
# SpongeBob

puts Ocean.spongebob_live_here?
# true

puts Ocean::Patrick.new.whoiam?
# Patrick

puts Ocean.patrick_live_here?
# true
```

  A diferença de mixins e herança é apenas que quando uma classe inclui um módulo ela não se torna filha deste módulo, 
  apenas implementa os seus métodos.
  Os módulos e os mixins:
  
  O `include` implementa os métodos do módulo como um método de instância na classe.
```ruby
module Ocean
  def self.whoiam?
    'Ocean'
  end

  def i_live_in_ocean?
    true
  end
end

class SpongeBob
  include Ocean

  def whoiam?
    'SpongeBob'
  end
end

sb = SpongeBob.new
puts sb.whoiam?
# SpongeBob

puts sb.i_live_in_ocean?
# true

puts Ocean.whoiam?
# Ocean
```

  O `extend` implementa os métodos do módulo como um método de classe na classe.
```ruby
module Ocean
  def self.whoiam?
    'Ocean'
  end

  def i_live_in_ocean?
    true
  end
end

class SpongeBob
  extend Ocean

  def whoiam?
    'SpongeBob'
  end
end

sb = SpongeBob.new
puts sb.whoiam?
# SpongeBob

puts SpongeBob.i_live_in_ocean?
# true

puts Ocean.whoiam?
# Ocean
```

### Carregamento e Requerimento:
  * $LOAD_PATH ou $: 
    * Variável global que contém um array com referência dos arquivos.

  * require 
    * Faz a inclusão e a leitura do arquivo.
```ruby
require 'some_file'
```

  * require_relative 
    * É utilizando quando existe a necessidade de referênciar um diretório/arquivo. Faz a leitura do arquivo.
```ruby
require_relative 'some_path/some_file'
```

  * load
    * Tem um comportamento semelhante ao `require`, a diferença é que necessita da extensão do arquivo, e pode ser executada diversas vezes.
```ruby
load 'some_path/some_file.rb'
```

  * autoload
    * Tem um comportamento semelhante ao `require`, porém só faz a leitura do arquivo quando acessado pela primeira vez.
```ruby
autoload :SomeClass, 'some_class'
```

### Métodos Singleton em classe:
Todo objeto do Ruby está associado a duas classes: a classe que a instanciou e uma classe anônima, escondida, específica do objeto. Esta classe anônima é chamada de Singleton Class, mas antes de ter um nome oficial também era chamada de anonymous class, metaclass, eigenclass ou ghost class.
A sintaxe mais comum para acessar a classe Singleton é:
```ruby
class SpongeBob
  class << self
    def whoiam?
      'SpongeBob'
    end
  end
end

puts SpongeBob.whoiam?
# SpongeBob

puts SpongeBob.singleton_methods
# [:whoiam?]
```
Toda vez que injeta métodos em um objeto, eles são adicionados como métodos singleton. O que é realmente importante saber é que estes métodos pertecem unicamente ao objeto em que foram definidos, não afetando nenhum outro objeto da hieraquia.

## Testes:
  
  * [MiniTest](https://github.com/seattlerb/minitest)
  * [TestUnit](http://test-unit.rubyforge.org/)
  * [RSpec](https://github.com/rspec/rspec)

Problema!
============================================

  * [Pau no Gato](https://github.com/johnvoloski/ruby-problem#atirei-o-pau-no-gato)
  * [Sms](https://github.com/johnvoloski/ruby-problem#sms)
