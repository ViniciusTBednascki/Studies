require_relative "estoque"
require_relative "livros"
require_relative "revistas"
require_relative "ebooks"

chthulhu = Livro.new("Chthulhu",100.00,2005,false,"Darkside",true)
agile = Livro.new("Agile developer",100.00,1998,true,"Cultura",false)
algoritmos = Livro.new("Algoritmos", 100, 1998, true, "editora", true)
arquitetura = Livro.new("Introdução À Arquitetura e Design de Software", 70, 2011, true, "editora", false)
programmer = Livro.new("The Pragmatic Programmer", 100, 1999, true, "editora", false)
ruby = Livro.new("Programming Ruby", 100, 2004, true, "editora", true)
revistona = Revista.new("Revista de Ruby", 10, 2012, true, "Revistas", 3)
online_arquitetura = Ebook.new("Introdução a Arquitetura e Design de Software", 50, 2012, "editora")

estoque  = Estoque.new
estoque << chthulhu
estoque << agile
estoque << algoritmos << algoritmos << ruby << programmer << arquitetura << ruby << ruby << revistona << revistona
estoque.vende chthulhu
estoque.vende ruby
estoque.vende ruby
estoque.vende ruby
estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende revistona
estoque.vende revistona
estoque.vende online_arquitetura
estoque.exporta_csv
estoque.livros_vendidos
puts estoque.contador_maximo
puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo