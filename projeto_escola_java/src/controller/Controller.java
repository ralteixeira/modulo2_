package controller;

import model.Aluno;
import model.Diretor;
import model.Pessoa;
import repository.Repository;

import java.util.ArrayList;

public class Controller implements Repository {

    private ArrayList<Aluno> listaAluno = new ArrayList<Aluno>();
    //private ArrayList<Diretor> listaDiretor = new Diretor (1,"Willian","Creche");
    // ArrayList(new Diretor[]{1,"Willian","Crech"});


    @Override
    public void pesquisarMatricula(int numero) {
        var pesquisa = buscarNaCollection(numero);

        if (pesquisa != null)
            pesquisa.visualizar();
        else
            System.out.println("------  Conta não encontrada  -------");
        System.out.println("_____________________________________");

    }

    @Override
    public void cadastrar(Pessoa nome) {

    }

    @Override
    public void atualizar(Pessoa nome) {

    }

    public Aluno buscarNaCollection(int numero) { // retornar pessoa
        for (var aluno : listaAluno) {
            if (aluno.getMatricula() == numero)
                return aluno;
        }

        return null;
    }


    public void cadastrar(Aluno nome) {// riando numeros automaticmos
        nome.setMatricula(gerarNumero());

        // criar conta
        listaAluno.add(nome);
        System.out.println("--  Aluno cadastrado com sucesso!  --");
        System.out.println("_____________________________________");

    }

    private int gerarNumero() {
        return listaAluno.size() + 1; /// metodo vai retornar numero de lista etcs
    }


    public void atualizar(Aluno nome) {

        var buscaAluno = buscarNaCollection(nome.getMatricula());

        if (buscaAluno != null) {
            listaAluno.set(listaAluno.indexOf(buscaAluno), nome);
            System.out.println("\nA matricula: " + nome.getMatricula() + " foi atualizada com sucesso!");
        } else
            System.out.println("\nA matricula: " + nome.getMatricula() + " não foi encontrado!");

    }

    @Override
    public void deletar(int numero) {

        var pesquisa = buscarNaCollection(numero);
        if (pesquisa != null) {
            if (listaAluno.remove(pesquisa))
                System.out.println("----------  Aluno apagado  ----------");
            System.out.println("----------  " + pesquisa.getNome()+"  ----------");
            System.out.println("_____________________________________");

        } else
            System.out.println("------  Aluno não encontrado!  ------");
        System.out.println("_____________________________________");


    }


    @Override
    public void listarTodas() {
        for (var aluno : listaAluno) {
            aluno.visualizar();
        }
    }

    public void listarRelatorio() {
        for (var aluno : listaAluno) {
            aluno.visualizar();
            aluno.visualizarNotas();
        }

    }


    /// diretoria atualizar e visualizar


}
