Ruby Presentation
=================

* O que é Ruby?
* Como usar Ruby? ( Windows, Linux, OSX )
* Links Úteis
* Quem usar Ruby?
* Linguagem
* Gems
* Rails
* Introdução Rails
* Banco de Dados e Rails
* Projeto de Exemplo
* RSpec e Cucumber

# Ruby Syntax

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

## Classes:
```ruby
class HelloWorld
end
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
