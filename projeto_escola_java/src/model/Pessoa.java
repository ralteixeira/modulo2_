package model;

public abstract class Pessoa {

    // criar atributos genericos e entra o diretor e aluno
    private int matricula;
    private String nome;

    public Pessoa(int matricula, String nome) {
        this.matricula = matricula;
        this.nome = nome;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


    public void visualizar() {
        System.out.println("\n Matricula: " + this.matricula);
        System.out.println("\n Nome: " + this.nome);

    }


}
