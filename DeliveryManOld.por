programa {
	inclua biblioteca Util --> u
	cadeia menuOpt
	funcao inicio() {
		escreva("-------------------------------------------------------------------------- \n")
		escreva("Seja bame vindo ao DeliveryMan \n")
		escreva("Digite 1 para jogar \n")
		escreva("Digite outro valor para fechar o jogo\n")
		leia(menuOpt)
		se(menuOpt == "1"){
			jogo()
		} senao {
			escreva("Jogo finalizado!!")
		}
	}
	
	funcao jogo(){
		inteiro player1[20], player2[20]
		inteiro playerN1 = 0, playerN2 = 0
		inteiro winner = 1
		inteiro switch = 1 // flag para ligar e desligar todo o looping aonde o jogo acontece
		inteiro orderPlayer1 = 0, orderPlayer2 = 0
		inteiro choice
		inteiro invalid = 1
		inteiro optPlayer
		inteiro dado1, dado2, totaldado1 = 0, totaldado2 = 0
		
		para(inteiro i = 0; i < 20; i++) {
			player1[i] = 0
			player2[i] = 0
		}
		escreva("-------------------------------------------------------------------------- \n")
		escreva("Para escolher o personagem, cada jogador jogara o dado uma vez\n")
		escreva("Jogador 1, digite 1 para rodar o dado ou outra coisa pular: " )
		leia(choice)
		
		se(choice == 1) {
			orderPlayer1 = u.sorteia(1, 6)
			escreva("\n-------------------------------------------------------------------------- \n")
			escreva("Primeiro jogador tirou: ", orderPlayer1, "\n")
			escreva("-------------------------------------------------------------------------- \n")
			escreva("Jogador 2, Digite 1 para jogar ou qualquer outra coisa para desistir: ")
			leia(choice)
			
			se(choice != 1) {
				escreva("-------------------------------------------------------------------------- \n")
				escreva("Fim de jogo por desistencia do jogador 2")
			}
			
			orderPlayer2 = u.sorteia(1, 6)
			escreva("Segundo jogador tirou: ", orderPlayer2, "\n")
			escreva("-------------------------------------------------------------------------- \n")
			
		}

		se(orderPlayer1 == orderPlayer2) {
			escreva("Dados iguais, jogador 1 ira começar")
		}
		
		se(orderPlayer1 > orderPlayer2) {
			enquanto(invalid == 1) {
				escreva("-------------------------------------------------------------------------- \n")
				escreva("Jogador 1 pode escolher\n")
				escreva("1 - Ifood, 2 - UberEats\n")
				escreva("Por favor escolha: ")
				leia(playerN1)

				se(playerN1 == 1 ou playerN1 == 2) {
					invalid = 0
					se(playerN1 == 1) {
						playerN2 = 2
						escreva("-------------------------------------------------------------------------- \n")
						escreva("Jogador 1 será Ifood e Jogador 2 será UberEats")
					}
					se(playerN1 == 2) {
						playerN2 = 1
						escreva("-------------------------------------------------------------------------- \n")
						escreva("Jogador 1 será UberEats e Jogador 2 será Ifood")
					}
				} senao {
					invalid = 1
					escreva("-------------------------------------------------------------------------- \n")
					escreva("Escolha inválida, escreva novamente!\n")
				}
			}
		}
		
		se(orderPlayer1 < orderPlayer2) {
			enquanto(invalid == 1) {
				escreva("-------------------------------------------------------------------------- \n")
				escreva("Jogador 2 pode escolher\n")
				escreva("1 - Ifood, 2 - UberEats\n")
				escreva("Por favor escolha: ")
				leia(playerN2)
			
				se(playerN1 == 1 ou playerN1 == 2) {
					invalid = 0
					se(playerN2 == 1){
						playerN1 = 2
						escreva("-------------------------------------------------------------------------- \n")
						escreva("Jogador 1 será Ifood e Jogador 2 será UberEats")
						
					}
					se(playerN2 == 2){
						playerN1 = 1
						escreva("-------------------------------------------------------------------------- \n")
						escreva("Jogador 1 será UberEats e Jogador 2 será Ifood")
					}
				} senao {
					escreva("escolha invalida, escreva novamente!: ")
					leia(playerN2)
				}
			}
		}
		
		escreva("\n", playerN1, " " ,playerN2, "\n")
		escreva("-------------------------------------------------------------------------- \n")
		escreva("O jogador 1 começara\n")
		enquanto(switch == 1){
			escreva("-------------------------------------------------------------------------- \n")
			escreva("Jogador 1 - digite '1' para jogar, '2' para ver o placar ou outro valor para desistir: ")
			leia(optPlayer)
			se(optPlayer == 1){
				dado1 = u.sorteia(1, 6)
				escreva("-------------------------------------------------------------------------- \n")
				escreva("O jogador 1 tirou: ", dado1, "\n")
				totaldado1 = totaldado1 + dado1
				player1[totaldado1] = 1
			} senao se (optPlayer == 2) {
				
			} senao {
				escreva("-------------------------------------------------------------------------- \n")
				escreva("jogo finalizado, jogador 2 ganhou pois o 1 desistiu")
				pare
			}
			escreva("-------------------------------------------------------------------------- \n")
			escreva("Jogador 2 - digite '1' para jogar, '2' para ver o placar ou outro valor para desistir: ")
			leia(optPlayer)
			se(optPlayer == 1){
				dado2 = u.sorteia(1, 6)
				escreva("-------------------------------------------------------------------------- \n")
				escreva("O jogador 2 tirou: ", dado2, "\n")
				totaldado2 = totaldado2 + dado2
				player2[totaldado2] = 1
			} senao se (optPlayer == 2) {
				
			} senao {
				escreva("-------------------------------------------------------------------------- \n")
				escreva("jogo finalizado, jogador 1 ganhou pois o 2 desistiu")
				pare
			}
		}
		escreva("-------------------------------------------------------------------------- \n")
		escreva("Fim de jogo, o jogador ", winner ," ganhou")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menuOpt, 3, 8, 7}-{player1, 18, 10, 7}-{player2, 18, 23, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */