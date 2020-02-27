package br.com.caelum.jdbc.teste;

import java.util.List;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class Testalista {
	public static void main(String[] args) {
		ContatoDao dao = new ContatoDao();
		
		//Listar contatos com DAO
		List<Contato> contatos = dao.getLista();
		
		//itere na lista e imprima 
		for (Contato contato : contatos) {
			System.out.println("Nome : " + contato.getNome());
			System.out.println("Email: " + contato.getEmail());
			System.out.println("Endereço: " + contato.getEndereco());
			System.out.println("Data de Nascimento: " + 
					contato.getDataNascimento().getTime() + "\n");
		}
	}
}
