programa
{
	
inclua biblioteca Util --> u
	
	funcao inicio()
	{
		
		
		inteiro vet[10], jogar = 1, comando, i=-509, escolhePrimeiro=0, escolheSegundo=0, entregador=0, j=1
		inteiro vet2[10], a=1, iniciar, test

		escreva("Bem-vindo ao jogo iFood vs Uber Eats\n")
		escreva("1 - Jogar\n")
		escreva("2 - Verificar Placar\n")
		escreva("3 - Fechar jogo\n")		

		enquanto(a==1){

		leia(iniciar)

			se(iniciar == 3){
			a=3
			}
		
			se(iniciar==1){
			
				enquanto(i==-509){

					escreva("\nPlayer01, para jogar o dado, digite 1: ")
					leia(comando)
		
					vet[0] = (u.sorteia (1,2))
			
						se(comando == jogar){
						i=1
						escreva("Player01, o número sorteado foi: ",vet[0],"\n")
						}senao{
							se(comando != 1 e comando !=3){
							i=-509
							}senao{
							i=0
							}
						}
		
						enquanto(i>0){ 
			
						escreva("\nPlayer02, para jogar o dado, digite 1: ")
						leia(comando)
						vet2[0] = (u.sorteia (1,2))
									
							se(comando == jogar ou comando==3){
							i=-1
								se(comando !=3){
								escreva("Player02, o número sorteado foi: ",vet2[0],"\n")
			
								se(vet[0] == vet2[0]){
								escreva("\nOs numeros sorteado foram iguais, joguem novamente")
								i=-509
			
								}senao{
								i=0
								}

									enquanto(i==0){

										se(vet[0] > vet2[0]){
										escolhePrimeiro = 1
										escolheSegundo = 2
											}senao{
											escolhePrimeiro = 2
											escolheSegundo = 1
											}
			
							enquanto(j>0){

								escreva("\nPlayer0", escolhePrimeiro, " com qual entregador deseja jogar? ")
								escreva("\n1 - iFood\n2 - Uber Eats\n")
								leia(entregador)
				
								se(entregador >2 e entregador!= 3){
									escreva("\ndigite uma opçao valida\n")
				
								}senao{
								j=0
								}

								se(entregador == 1){
									escreva("\nO Player0", escolhePrimeiro, " é: iFood")
									escreva("\nO Player0", escolheSegundo, " é: Uber Eats")
								}

								se(entregador == 2){
									escreva("\nO Player0", escolhePrimeiro, " é: Uber Eats")
									escreva("\nO Player0", escolheSegundo, " é: iFood")
								}

									se(entregador !=3){
										escreva("\ntest")
										leia(test)
									}
			
							}
								i=-11
								j=0
									}
			
								}senao{
									i=-1
								}			
							}
						}

				}a=0
			}senao{
		se(iniciar !=3){
			escreva("Opção inválida, digite novamente.\n")
			a=1
		}
	
			}		 

		}

			escreva("\n\nJogo finalizado")
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2226; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */