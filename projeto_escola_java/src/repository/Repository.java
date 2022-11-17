package repository;


import model.Pessoa;

public interface Repository {

    // procurar por numero
    public void pesquisarMatricula (int numero);
    public void cadastrar (Pessoa nome);
    public void atualizar (Pessoa nome);
    public void deletar (int numero);
    public void listarTodas (); // motrar todas contas



}
