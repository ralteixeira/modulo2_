package escola;

import java.io.IOException;
import java.util.InputMismatchException;
import java.util.Scanner;

import controller.Controller;
import model.Aluno;

public class Menu {
    public static Scanner leia = new Scanner(System.in);

    public static void main(String[] args) {
        int matricula = 0, idade;
        String nome;
        float nota1 = 0, nota2 = 0, nota3 = 0, nota4 = 0;
        Controller aluno = new Controller();
        Controller diretor = new Controller();

        /// colection
        //____________Testando os Objetos
        // aluno.cadastrar(new Aluno(0, "Willian Lima", 5, nota1, nota2, nota3, nota4));
        // aluno.visualizar();

        //____________________________________
        boolean loop = true; // verificacao
        //Loop do menu
        int opcao;

        while (true) { // loop infinito enquanto eu nao der opcao 7

            System.out.println("_____________________________________");
            System.out.println("                                     ");
            System.out.println("              ESCOLA                 ");
            System.out.println("_____________________________________");
            System.out.println("                                     ");
            System.out.println("         1 - Cadastrar aluno	     ");
            System.out.println("         2 - Lançar notas            ");
            System.out.println("         3 - Listar alunos           ");
            System.out.println("         4 - Atualizar cadastro      ");
            System.out.println("         5 - Excluir cadastro        ");
            System.out.println("         6 - Relatório geral         ");
            System.out.println("         7 - Sair                    ");
            System.out.println("_____________________________________");
            System.out.println("     Entre com a opção desejada      ");
            System.out.println("_____________________________________");

            // exception
            try {


                opcao = leia.nextInt();

                if (opcao == 7) {
                    System.out.println("--------   Seção finalizada -------- ");
                    System.out.println("_____________________________________");


                    leia.close();
                    System.exit(0);// sai totalmente
                }

                switch (opcao) {
                    case 1: // cadastrar aluno
                        System.out.println("------  Digite o nome do aluno  -----");
                        leia.skip("\\R?"); // tudo que for string ignorar a sujeira de cima
                        nome = leia.nextLine();

                        //verificar se usuario digitou numero para idade

                        System.out.println("-----  Digite a idade do Aluno  -----");
                        idade = leia.nextInt();
                        System.out.println("_____________________________________");

                        // coloando informacoes na lista aluno, com nota 0
                        aluno.cadastrar(new Aluno(0, nome, idade, nota1, nota2, nota3, nota4));

                        keyPress();
                        break;

                    case 2: // calcular media

                        System.out.println("-------  Lançamento de Notas  -------");
                        System.out.println("_____________________________________");

                        //procurar aluno
                        System.out.println("---  Digite a matricula do aluno  ---");
                        System.out.println("_____________________________________");

                        int pesquisaMatricula = leia.nextInt();
                        leia.skip("\\R?");


                        if (aluno.buscarNaCollection(pesquisaMatricula) != null) {
                            //     System.out.println(aluno.buscaNome(Aluno nome));
                            //buscar automatico aluno
                            Aluno aluno1 = aluno.buscarNaCollection(pesquisaMatricula);
                            String nomeAluno = aluno1.getNome();
                            //  System.out.println(nomeAluno);

                            Aluno idade1 = aluno.buscarNaCollection(pesquisaMatricula);
                            int idadeAluno = idade1.getIdade();
                            // System.out.println(idadeAluno);
                            System.out.println("Lançar notas do aluno " + nomeAluno);

                            //verificando nota de 1 a 10
                            do {
                                System.out.println("--------  Digite a Nota 1:  ---------");
                                System.out.println("_____________________________________");
                                leia.skip("\\R?");
                                nota1 = leia.nextFloat();
                                if (nota1 < 0 || nota1 > 10) {
                                    System.out.println("-------------  ATENÇÃO  -------------");
                                    System.out.println("------ Digite nota entre 0 e 10 -----");
                                }
                            } while (nota1 < 0 || nota1 > 10);

                            do {
                                System.out.println("--------  Digite a Nota 2:  ---------");
                                System.out.println("_____________________________________");
                                leia.skip("\\R?");
                                nota2 = leia.nextFloat();
                                if (nota2 < 0 || nota2 > 10) {
                                    System.out.println("-------------  ATENÇÃO  -------------");
                                    System.out.println("------ Digite nota entre 0 e 10 -----");
                                }
                            } while (nota2 < 0 || nota2 > 10);

                            do {
                                System.out.println("--------  Digite a Nota 3:  ---------");
                                System.out.println("_____________________________________");
                                leia.skip("\\R?");
                                nota3 = leia.nextFloat();
                                if (nota3 < 0 || nota3 > 10) {
                                    System.out.println("-------------  ATENÇÃO  -------------");
                                    System.out.println("------ Digite nota entre 0 e 10 -----");
                                }
                            } while (nota3 < 0 || nota3 > 10);

                            do {
                                System.out.println("--------  Digite a Nota 4:  ---------");
                                System.out.println("_____________________________________");
                                leia.skip("\\R?");
                                nota4 = leia.nextFloat();

                                if (nota4 < 0 || nota4 > 10) {
                                    System.out.println("-------------  ATENÇÃO  -------------");
                                    System.out.println("------ Digite nota entre 0 e 10 -----");
                                }
                            } while (nota4 < 0 || nota4 > 10);

                            aluno.atualizar(new Aluno(pesquisaMatricula, nomeAluno, idadeAluno, nota1, nota2, nota3, nota4));
                            System.out.println("--------  Notas cadastradas, --------");
                            System.out.println("-----  para visualizar a média  -----");
                            System.out.println("-----  acesse o Relatorio Geral -----");

                        } else
                            System.out.println("\n----- Aluno não encontrado!--------");
                        System.out.println("_____________________________________");


                        keyPress();
                        break;

                    case 3: //listar alunos
                        System.out.println("Listar todos Alunos");
                        // aluno.listarTodas();
                        aluno.listarTodas();
                        keyPress();
                        break;

                    case 4: // editar cadastro
                        System.out.println("Atualizar cadastro");

                        //procurar aluno
                        System.out.println("Digite a matricula do aluno");
                        pesquisaMatricula = leia.nextInt();
                        leia.skip("\\R?");
                        //--

                        if (aluno.buscarNaCollection(pesquisaMatricula) != null) {

                            System.out.println("Digite o novo Nome do Aluno: ");
                            leia.skip("\\R?");
                            nome = leia.nextLine();
                            System.out.println("Digite a idade deste Aluno: ");
                            idade = leia.nextInt();
                            aluno.atualizar(new Aluno(pesquisaMatricula, nome, idade, 0, 0, 0, 0));
                            System.out.println("A Matricula: " + pesquisaMatricula + " foi atualizada para o nome " + nome + " e idade " + idade);
                            System.out.println("ATENÇAO AS NOTAS FORAM ZERADAS !!!");

                        } else
                            System.out.println("\nAluno não encontrado!");


                        keyPress();
                        break;

                    case 5: // excluir cadastro
                        System.out.println("Para excluir digite a matricula do aluno ");
                        int numero = leia.nextInt();
                        aluno.deletar(numero);
                        keyPress();
                        break;

                    case 6: // relatorio geral de alunos
                        System.out.println("Relatório geral");
                        aluno.listarRelatorio();
                        keyPress();
                        break;

                    default:
                        System.out.println("Opcao invalida");
                        keyPress();
                        break;
                }
            } catch (InputMismatchException e) {
                System.out.println("Digite um numero inteiro");
                leia.nextLine();// tratamento mensagem
            }
        }
    }

    //  Continuar ----
    public static void keyPress() {

        try {
            System.out.println("\n--Pressione Enter para Continuar --");
            System.out.println("_____________________________________");

            System.in.read();
        } catch (IOException e) {
            System.out.println("Você pressionou uma tecla diferente de enter!");
        }
    }
}