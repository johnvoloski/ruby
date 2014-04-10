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

## Gerênciadores de Versões Ruby:
  * [pik](https://github.com/vertiginous/pik) - Windows
  * [rmv](http://rvm.io/) - Unix
  * [rbenv](http://rbenv.org/) - Unix

## The Structure and Execution of Ruby Programs

### Comments:
  ![Comments](https://github.com/johnvoloski/ruby/raw/master/images/source/comments.png "Comments")

## Datatype and Objects:

### True, False and Nil
  True representa o verdadeiro, False o falso e nil representa a abstenção de valor. Qualquer valor sem ser False, Nil é True.
```ruby
  puts true.class
  puts false.class
  puts nil.class
```

### Numbers

#### Integer
  Pode ser utilizado o _ para melhor visualização.
```ruby
puts 1_000_000_00
puts 1_000_000_00.class
```

##### Fixnum
  São inteiros que se encaixam dentro de 31 bits então sua instância é um Fixnum.
```ruby
puts 999999999999999999.class
```

##### Bignum
  São inteiros que se encaixam acima de 31 bits então sua instância é um Bignum.
```ruby
puts 9999999999999999999.class
```

#### Float
  São números que utilizam pontos flutuantes, sua instância é um Float.
```ruby
99.99.class
```

#### Rational
  São números racionais, sua instância é um Rational.
```ruby
  puts Rational(8/4).class
```

### Strings
#### Aspas Simples
```ruby
  puts 'Sou uma string com aspas simples e com instância String'.class
  puts 'Sou uma string com aspas simples'
  puts 'Sou uma string \' com um "escape"'
  puts 'Sou uma string quebrada em uma linha \
        aqui esta minha continuação'
  puts 'Sou uma string quebrada' \
       'em multiplas linhas' \
       'não somente em uma'
```

#### Aspas Duplas
  puts "Sou uma string com aspas duplas e com instância String".class
  puts "Sou uma string com aspas duplas"

### Symbols
### Arrays
### Hashes
### Ranges
### Regular Expressions
### Objects

## Expressions and Operators:

### Global Variables
  `Variáveis globais começam com $. Não inicializadas seu valor padrão é nil.`
  ![Global Variables](https://github.com/johnvoloski/ruby/raw/master/images/source/global_variables.png "Global Variables")

### Instance Variables
  `Variáveis de instância começam com @. Não inicializadas seu valor padrão é nil.`
  ![Instance Variables](https://github.com/johnvoloski/ruby/raw/master/images/source/instance_variables.png "Instance Variables")

### Class Variables:
  `Variáveis de classe começam com @@. Devem ser inicializadas.`
  ![Class Variables](https://github.com/johnvoloski/ruby/raw/master/images/source/class_variables.png "Class Variables")

### Local Variables:
  `Variáveis locais começam com uma letra minúscula ou _ . O escopo de uma variável local varia de classe, módulo, método ou a abertura e fechamento de um bloco, que corresponde ao final de seu ciclo.`
  ![Local Variables](https://github.com/johnvoloski/ruby/raw/master/images/source/local_variables.png "Local Variables")

### Constants
  `Constantes começam com uma letra maiúscula. Quando definidas dentro de uma classe ou módulo podem ser acessadas somente dentro dos mesmos, e as definidas fora de uma classe ou módulo podem ser acessadas globalmente. Costantes também não podem ser definidas dentro de métodos.`
  ![Constants](https://github.com/johnvoloski/ruby/raw/master/images/source/constants.png "Constants")

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

    begin
      raise StandardError
    rescue NoMethodError => ex
      puts "NoMethodError: #{ex.message}"
    else
      puts "GenericError"
    ensure
      puts "E finalizou a exceção."
    end
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
  ```

  Utilizando o `rescue` como modificador:
  ```ruby
  puts is_squarepants?(Patrick)
  puts is_squarepants?(SpongeBob) rescue true
  ```

## Methods, Procs, Lambdas and Closures

### Defining Simple Methods
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
  ```

  Definindo um método Singleton:
  ```ruby
  bob = 'SpongeBob'
  
  def bob.is_squarepants?
    true
  end

  bob.is_squarepants?
  ```

  Indefinindo um método:
  ```ruby
  def is_squarepants?
    true
  end

  is_squarepants?

  undef is_squarepants?

  is_squarepants?
  ```

### Method Names
  Por convensão nomes de métodos começam sempre com letra minúscula, podem começar com letra maiúscula mas irão se parecer com uma constante.
  Quando o nome do método é maior que uma palavra, por convensão utiliza-se `_` para separa as palavras: `is_squarepants?`.
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
  bob.is_squarepants!
  puts bob.is_squarepants?
  ```

  Redefinindo os Métodos Operadores:
  ```ruby
  class SpongeBob
    def +(value)
      "SpongeBob is #{value}"
    end
  end

  puts SpongeBob.new + "SquarePants"
  ```

  Definindo "alias" para os Métodos: (Não é possível fazer "Overloading" em um "alias")
  ```ruby
  def is_squarepants?
    true
  end

  alias is_sp? is_squarepants?

  puts is_squarepants?
  puts is_sp?
  ```

### Methods and Parentheses
  O uso de Parenteses só é necessário caso aconteça uma precedência.

### Method Arguments
  Lista de Argumentos como Parâmetros:
  ```ruby
  def is_squarepants?(name, *args)
    puts "Name: #{name}"
    puts "Qualquer outro parâmetro informado: #{args}"
  end

  is_squarepants?('SpongeBob', true, 'Patrick')
  ```

  Hash como parâmetro:
  ```ruby
  def is_squarepants?(name = 'SpongeBob', options = { squarepants: true })
    puts name
    puts options[:squarepants]
  end

  puts is_squarepants?
  puts is_squarepants?('Patrick', squarepants: false)
  ```

  Bloco como parâmetro:
  
  Se você prefere um controle explícito sobre o bloco, adicione um parâmetro final com um `&` na frente, então esse parâmetro irá referenciar o bloco, se for passado 
  para o método, o tipo desse bloco sera um `Proc` ao invés de usar o `yield` você invocará através do método `call`.
  ```ruby
  def is_squarepants?(name, &block)
    block.call(name)
  end

  puts is_squarepants?('SpongeBob') { |name| puts "#{name} is squarepants" }
  puts is_squarepants?('Patrick')   { |name| puts "#{name} isn't squarepants" }
  ```
  
  Se você prefere um controle mais específico ainda, defina um parâmetro como sendo o do bloco, o tipo deste parâmetro será um `Proc` e será invocado através do método `call`.
  ```ruby
  def is_squarepants?(name, block)
    block.call(name)
  end
  
  puts is_squarepants?('SpongeBob',  proc { |name| puts "#{name} is squarepants" })
  puts is_squarepants?('Patrick', proc { |name| puts "#{name} isn't squarepants" })
  ```

### Procs and Lambdas
  Blocos são estruturas sintáticas em Ruby, não são objetos e não tem como os manipular como objetos.
  Então é possível criar um objeto representante de um bloco. Dependendo de como é criado o objeto,
  ele é chamado de `proc` ou `lambda`. `Procs` tem um comportamento como o de um bloco, e `Lambdas` tem
  um comportamento como um método. No entando os dois são instâncias da classe `Proc`.

  Criando Procs:
  ```ruby
  p = Proc.new { |adjective| "SpongeBob is #{adjective}" }
  p.call('SquarePants')
  
  p = proc { |adjective| "SpongeBob is #{adjective}" }
  p.call('SquarePants')
  ```

  Criando Lambdas:
  ```ruby
  l = lambda { |adjective| "SpongeBob is #{adjective}" }
  l.call('SquarePants')

  l = ->(adjective) { "SpongeBob is #{adjective}" }
  l.call('SquarePants'
  ```

  Descubrindo a quantidade de parâmetros obrigatórios de uma `Proc`:
  ```ruby
  p = proc { |adjective| "SpongeBob is #{adjective}" }
  puts p.arity

  l = ->(adjective) { "SpongeBob is #{adjective}" }
  l.arity
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

  def is_squarepants?
    p = ->{ puts 'SpongeBob is SquarePants'; return }
    p.call
    puts " and Patrick isn't"
  end
  ```

## Classes and Modules

### Defining a Simples Class

#### Creating the Class
class SpongeBob
end

#### Instantiating a Class
sb = SpongeBob.new

#### Initializing a Class
class SpongeBob
  def initialize(squarepants)
    @squarepants = squarepants
  end
end

#### Accessors and Attributes
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
sb.squarepants = false
puts sb.squarepants

### Method Visibility: Public, Protected, Private
class SpongeBob
  def is_friend?(friend_name)
    friend_name.is_a? Patrick
  end

  protected :is_friend?

  def is_squarepants?(name)
    name.is_a? SpongeBob
  end

  private :is_squarepants?
end

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
