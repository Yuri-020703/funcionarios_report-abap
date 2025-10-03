*&---------------------------------------------------------------------*
*& Report  YTESTES2_YURI
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

report  ytestes2_yuri.

types: begin of ty_funcionario,

      matricula(10) type c,
      nome(40) type c ,
      salario(8) type p decimals 2,

       end of ty_funcionario.

data: wa_funcionario    type ty_funcionario,
      it_funcionarios   type table of ty_funcionario,
      total_salario(8)  type p decimals 2,
      media_salario(8)  type p decimals 2,
      num_funcionarios  type i,
      salario(8)        type p decimals 2,
      quantidade        type i.



types:  begin of ty_agrupamento,

      salario(8) type p decimals 2,
      quantidade type i,

        end of ty_agrupamento.


data: wa_agrupamento type ty_agrupamento,
      lt_agrupamento type table of ty_agrupamento.



wa_funcionario-matricula = '111'.
wa_funcionario-nome = 'Yuri'.
wa_funcionario-salario = '3500.00'.

append wa_funcionario to it_funcionarios.

wa_funcionario-matricula = '222'.
wa_funcionario-nome = 'João'.
wa_funcionario-salario = '1200.00'.

append wa_funcionario to it_funcionarios.

wa_funcionario-matricula = '333'.
wa_funcionario-nome = 'Maria'.
wa_funcionario-salario = '16000.00'.

append wa_funcionario to it_funcionarios.

describe table it_funcionarios lines num_funcionarios.


loop at it_funcionarios into wa_funcionario.

  total_salario = total_salario + wa_funcionario-salario.

  write: / 'Matrícula: ', wa_funcionario-matricula, 'Nome :',wa_funcionario-nome,'Salário: ', wa_funcionario-salario.

endloop.

write: /.

media_salario = total_salario / num_funcionarios.

write: / 'Número de funcionários: ', num_funcionarios.
write: / 'Média salarial: ', media_salario.

write: /.

write: / 'Funcionários que ganham acima de R$ 2.000: '.

loop at it_funcionarios into wa_funcionario.

  if wa_funcionario-salario > 1500.
      write: / 'Matrícula: ', wa_funcionario-matricula, 'Nome :',wa_funcionario-nome,'Salário: ', wa_funcionario-salario.
  endif.

endloop.

write: /.
