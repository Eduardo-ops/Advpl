#include 'protheus.ch'
#include 'parmtype.ch'

/* 
    Rotina personalizada

    AxCadastro() - Permite, por meio de uma interface simples e com poucas opções de customização, que o
                   usuário manipule as informações de um arquivo de dados, conforme a necessidade da aplicação.

    Sintaxe: AxCadastro( <cAlias>, <cTitulo>, <cVldExc>, <cVldAlt>)

    <cAlias>    -  Alias do arquivo de dados cujas informações serão manipuladas. Esse arquivo está cadastrado no 
                   Dicionário de Tabelas do Protheus (SX2).

    <cTitulo>   - Título da janela que aparecerá na tela.

    < cVldExc > - Nome da função responsável por validar o registro após a confirmação da sua exclusão.

    < cVldAlt > - Nome da função responsável por validar o registro após a confirmação das alterações.
*/

User Function PROGATUADA()

    Local cAlias := "SB1"
    Local cTitulo := "Tela de Cadastro - AXCadastro - Rotina Personalizada"
    Local cVldExc := ".T."
    Local cVldAlt := ".T."

    AxCadastro(cAlias, cTitulo, cVldExc, cVldAlt)

RETURN
