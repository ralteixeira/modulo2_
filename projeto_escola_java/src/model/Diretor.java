package model;

public class Diretor extends Pessoa {

    private String Categoria;

    public Diretor(int matricula, String nome, String Categoria) {
        super(matricula, nome);
        this.Categoria = Categoria;
    }

    public String getCategoria() {

        return Categoria;
    }

    public void setCategoria(String categoria) {
        Categoria = categoria;
    }


    /*public void visualizar() {
        super.visualizar();
        System.out.println("\n Diretor XXXX da Creche ");
        System.out.println("\n Diretor matriculado na Creche  ");
        System.out.println("\n Aluno matriculado na Pré-Escola  ");
        System.out.println("\n Aluno matriculado no Ensino fundamental  ");
        System.out.println("\n Aluno matriculado no Ensino média  ");
        System.out.println("\n Aluno matriculado no Ensino superior  ");

    }*/



}