Feature: Comprar curso Web
  Como usuario de la plataforma Automation Practice Test
  Quiero comprar cualquier curso que desee
  Para aplicar la informacion adquirida en mi lugar de trabajo

  Scenario Outline: Comprar cursos y modificar los articulos de compra en carrito
    Given Dado que añadi al carrito de comprar los cursos <primerCurso> y <segundoCurso>
    When Cuando elimine el curso <cursoEliminado> del carrito de compras
    Then Entonces Verefico que el precio total en el carrito es menor a <precio>
    Examples:
      | primerCurso   | segundoCurso         | cursoEliminado | precio |
      | Selenium Ruby | Mastering JavaScript | Selenium Ruby  | 400    |