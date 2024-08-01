programa {
	inclua biblioteca Util --> u
    	cadeia menuOpt
    	inteiro skipPlayer=0, i=1 // Flags para pular a vez do jogador
    	inteiro totaldado1 = 1, totaldado2 = 1
    	inteiro player1[21], player2[21] //Vetores que marcarão as posições
    	funcao inicio() {
    		escreva("  _   _ ____  _____ ____    _____    _  _____ ____   __     ______\n")
	    	escreva(" | | | | __ )| ____|  _ \\  | ____|  / \\|_   _/ ___|  \\ \\   / / ___|\n")
	    	escreva(" | | | |  _ \\|  _| | |_) | |  _|   / _ \\ | | \\___ \\   \\ \\ / /\\___ \\ \n")
	    	escreva(" | |_| | |_) | |___|  _ <  | |___ / ___ \\| |  ___) |   \\ V /  ___) |\n")
	    	escreva("  \\___/|____/|_____|_| \\_\\_|_____/_/   \\_\\_| |____/     \\_/  |____/ \n")
		
	    	escreva(" |_ _|___/ / _ \\ / _ \\|  _ \\ \n")
	    	escreva("   || |_  | | | | | | | | | |  \n")
	    	escreva("   ||  _| | |_| | |_| | |_| | \n")
	    	escreva(" |___|_|   \\___/ \\___/|____/\n")

	   	escreva("\n")
	   	enquanto (i==1){
        		escreva("Seja bem-vindo ao DeliveryMan \n")
       	 		escreva("Digite 1  para Jogar \n")
        		escreva("Digite 2 para mostrar o Placar \n")
        		escreva("Digite outro valor para fechar o jogo\n")
        		leia(menuOpt)
        		limpa()
        		se(menuOpt == "1") {
        			escreva("Em um belo dia em Patrocinio...\n")
          			escreva("Um cliente teve a ideia de fazer um pedido")
          			jogo()
          			i++
        		}
			se(menuOpt== "2"){
        			escreva ("Mostrar placar\n") 
        		} senao {
            			escreva("\nJogo finalizado!!")
        	  		i++
        		}
   		}
   	}

    	funcao jogo() {
        	cadeia playerN1 = "Ifood", playerN2 = "UberEats"
        	inteiro winner = 1
        	inteiro switch = 1 // flag para ligar e desligar todo o looping aonde o jogo acontece
        	inteiro orderPlayer1 = 0, orderPlayer2 = 0
        	inteiro choice, personagem=0, jogador1=0, jogador2=0, p=0, c=0
        	inteiro invalid = 1
        	inteiro optPlayer
        	inteiro dado1, dado2
        
        	para(inteiro contador= 0; contador < 20; contador++) { //enchendo todas as posiçoes do array com 0
            		player1[i] = 0
            		player2[i] = 0
        	}
        	player1 [1]=1 //"Dois jogadores estarão na posição 1 do tabuleiro, sem qualquer benefício ou penalidade".
        	player2 [1]=1//"Dois jogadores estarão na posição 1 do tabuleiro, sem qualquer benefício ou penalidade."

        	escreva("-------------------------------------------------------------------------- \n")
        	escreva ("Vocês agora são entregadores, onde tempo é dinheiro.\nSejam rápidos e aproveitem as oportunidades!\nO jogador que chegar primeiro à posição 20, ponto de entrega da encomenda, vence o jogo.\n")
        	enquanto(personagem==0){
			escreva("Para escolher os personagens, Ifood ou UberEats, cada jogador lançará o dado uma vez.\nQuem obter o maior número escolhe o personagem e começa jogando.\n")
        		escreva("\nJogador 1, digite 1 para jogar o dado ou outro valor para passar a vez para o Jogador 2: " )
			leia(choice)
			
			se(choice==1){
				jogador1=u.sorteia(1, 6)
				escreva("\nSeu resultador foi: ", jogador1)
			}senao{
				skipPlayer=2//define quem começa jogando após a escolha dos personagens
				escreva ("\nO Jogador 1 optou por deixar você começar jogando e escolher seu personagem. Aproveite!")
				escreva ("\nJogador 2, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
				leia (p)
				enquanto (c==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 1 está com o entregador da  UberEats.")
							c++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 1 está com o entregador da Ifood.")
							c++
							personagem++
							pare 
						caso contrario: 
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
						}
					}	
				}
			
			se(personagem==0){
				escreva ("\nJogador 2. Digite 1 para jogar o dado ou qualquer outro valor para deixar o Jogador 1 escolher. ")
				leia (choice)
			}

			se(choice==1){
				jogador2= u.sorteia(1, 6)
				escreva ("\nSeu resultado foi: ", jogador2)
			}

			se(choice!=1 e personagem==0){
				skipPlayer=1
				escreva ("\nO Jogador 2 optou por deixar você jogar primeiro e escolher seu personagem. Aproveite!")
				escreva ("\nJogador 1, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
				leia (p)
				enquanto (c==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 2 está com o entregador da  UberEats.")
							c++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 2 está com o entregador da Ifood.")
							c++
							personagem++
							pare
						caso contrario:
							escreva ("Escolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}
			}

			se(jogador1 > jogador2 e personagem == 0){
				skipPlayer=1
				escreva ("\nO maior resultado foi do jogador 1, portando ele começará jogando e poderá realizar a escolha do personagem.\nJogador 1, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória. ")
				leia (p)
				enquanto (c==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 2 está com o entregador da UberEats")
							c++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da  UberEats e o jogador 2 está com o entregador da Ifood")
							c++
							personagem++
							pare
						caso contrario:
							escreva ("\nEscolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}			
			}

			se(jogador2 > jogador1 e personagem == 0){
				skipPlayer=2
				escreva ("\nO maior resultado foi do jogador 2, portando ele poderá realizar a escolha do personagem.\nJogador 2, pressione 1 para escolher o personagem Ifood, 2 para escolher UberEats ou outro valor para que a escolha seja aletória. ")
				leia (p)
				enquanto(c==0){
					escolha (p){
						caso 1:
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 1 está com o entregador da UberEats")
							c++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 1 está com o entregador da Ifood")
							c++
							personagem++
							pare 
						caso contrario: 
							escreva ("\nEscolha aleatória! Boa sorte!")
							p=u.sorteia(1, 2)
							pare
					}
				}		
			}

			se(jogador1 == jogador2 e personagem == 0){
				escreva ("\nEmpate! Vamos jogar os dados novamente\n")	
			}
        	}
		//FIM DA ESCOLHA DOS PERSONAGENS
		
        	escreva("\n", playerN1, " X ", playerN2, "\n")
        	escreva("-------------------------------------------------------------------------- \n")
        	escreva("O Jogador ",skipPlayer ," começará\n")
        
        	enquanto(switch == 1) {
        		se (skipPlayer== 1){
                	//Jogador1         
                		escreva("-------------------------------------------------------------------------- \n")
                		escreva("Jogador ", skipPlayer ," digite '1' para jogar, '2' para ver a posição atual ou outro valor para desistir: ")
                		leia(optPlayer)      
                		se(optPlayer == 1){
                    			se(totaldado1 < 20) {
                        			player1[totaldado1] = 0 // Zera a posição anterior
                    			}
                   			dado1 = u.sorteia(1, 6)
                    			escreva("-------------------------------------------------------------------------- \n")
                    			escreva("O jogador 1 tirou: ", dado1, "\n")
                    			totaldado1 = totaldado1 + dado1

                    			se(totaldado1 >20){
                        			totaldado1 = 20 // limita ao tamanho do array não deixando passar de 20
                    			}
	
	                    		totaldado1 = aplicaCondicao(totaldado1, 1) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
        	            		player1[totaldado1] = 1

                    			se(totaldado1 == 20) {
                        			winner = 1 //casa do vencedor
                        			pare
                    			}
                    			skipPlayer=2
                		} senao se (optPlayer == 2){
                    			escreva("Posição atual: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n")
                    			escreva("Jogador ", skipPlayer ," digite '1' para jogar ou outro valor para desistir: ")
               				leia(optPlayer)
               				se(totaldado1 < 20) {
                        			player1[totaldado1] = 0 // Zera a posição anterior
                    			}
                   			dado1 = u.sorteia(1, 6)
		                	escreva("-------------------------------------------------------------------------- \n")
                    			escreva("O jogador 1 tirou: ", dado1, "\n")
                    			totaldado1 = totaldado1 + dado1

                    			se(totaldado1 >20){
                        			totaldado1 = 20 // limita ao tamanho do array não deixando passar de 20
                    			}
                    			totaldado1 = aplicaCondicao(totaldado1, 1) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    			player1[totaldado1] = 1
                    			se(totaldado1 == 20) {
                        			winner = 1 //casa do vencedor
                        			pare
                    			}
               	 			skipPlayer=2
                		}senao {
                    			escreva("-------------------------------------------------------------------------- \n")
                    			escreva("O Jogador 2 ganhou pois o jogador 1 desistiu")
                    			player2 [20]=1 //Ativa a vitória do jogador 2
                    			winner = 2
                    			pare
                		}
            		} 
            		// Jogador 2
            		se (skipPlayer== 2){
            			escreva("-------------------------------------------------------------------------- \n")
               			escreva("Jogador ", skipPlayer ," digite '1' para jogar, '2' para ver a posição atual ou outro valor para desistir: ")
               			leia(optPlayer)
               			se(optPlayer == 1){
                    			se(totaldado2 < 20){
                        			player2[totaldado2] = 0 // Zera a posição anterior
                    			}
                    			dado2 = u.sorteia(1, 6)
                    			escreva("-------------------------------------------------------------------------- \n")
                    			escreva("O jogador 2 tirou: ", dado2, "\n")
                    			totaldado2 = totaldado2 + dado2
                    			se(totaldado2 > 20){
                        			totaldado2 = 20 // limita ao tamanho do array
                    			}
                    			totaldado2 = aplicaCondicao(totaldado2, 2) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    			player2[totaldado2] = 1
                    			se(totaldado2 == 20) {
                        			winner = 2
                        			pare
                    			}
                    			skipPlayer=1
                		}senao se (optPlayer == 2){
                    			escreva("Placar: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n") //mostra as posições atuais
                    			escreva("Jogador 2 - digite '1' para jogar ou outro valor para desistir: ") //Volta na opção de escolha
               				leia(optPlayer)
               				se(optPlayer == 1){
                    				se(totaldado2 < 20) {
                        				player2[totaldado2] = 0 // Zera a posição anterior
                    				}
                    				dado2 = u.sorteia(1, 6)
                    				escreva("-------------------------------------------------------------------------- \n")
                    				escreva("O jogador 2 tirou: ", dado2, "\n")
                    				totaldado2 = totaldado2 + dado2

                    				se(totaldado2 > 20){
                        				totaldado2 = 20 // limita ao tamanho do array
                    				}

	                    			totaldado2 = aplicaCondicao(totaldado2, 2) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
        	            			player2[totaldado2] = 1
                	    			se(totaldado2 == 20) {
                        				winner = 2
                        				pare
                    				}
                    				skipPlayer=1
                			}senao{
                    				escreva("-------------------------------------------------------------------------- \n")
                    				escreva("o Jogador 1 ganhou pois o jogador 2 desistiu")
                    				winner = 1
                    				pare
                			}
            			}senao{
                    			escreva("-------------------------------------------------------------------------- \n")
                    			escreva("Jogo finalizado, jogador 1 ganhou pois o jogador 2 desistiu")
                    			winner = 1
                    			pare
            			}
       			}
   		}
  	}
    	//funcao para aplicar as condicoes de cada casa
    	funcao inteiro aplicaCondicao(inteiro posicao, inteiro jogador) {
        	// Define as condições especiais
        	cadeia placebo
        	se(posicao == 2) {
        		escreva("Você caiu na casa 2! Vá para a casa 5.\n")
        		retorne 5
        	}
        	se(posicao == 3) {
        		escreva("Você caiu na casa 3! Jogue um dado adicional de 3 lados.\n")
            		escreva("Digite algo para jogar o dado")
            		leia(placebo)
            		inteiro dadoExtra = u.sorteia(1, 3)
            		posicao = posicao + dadoExtra
            		escreva("Dado adicional tirou: ", dadoExtra, "\n")
        	}
        	se(posicao == 7) {
            		escreva("Você caiu na casa 7! Você não jogará na próxima rodada.\n")
            		se(jogador == 1) {
                		skipPlayer = 2
            		} senao {
                		skipPlayer = 1
            		}		
        	}
        	se(posicao == 10) {
            		escreva("Você caiu na casa 10! Os jogadores trocarão de lugar.\n")
           		player2 [totaldado1]=1
           		player1 [totaldado2]=1
           		escreva("Jogador 1 está agora na casa ", totaldado2, " e Jogador 2 está agora na casa ", totaldado1, "\n")
        	}
        	se(posicao == 12) {
            		escreva("Você caiu na casa 12! Volte uma casa.\n")
            		posicao = posicao - 1
        	}
        	se(posicao == 15) {
            		escreva("Você caiu na casa 15! Cante um trecho de uma música ou volte 2 casas.\n")
            		cadeia resposta
            		escreva("Digite '1' se quiser cantar, qualquer outra coisa para voltar 2 casas: ")
            		leia(resposta)
            		se(resposta != "1") {
                		posicao = posicao - 2
                		escreva("Você escolheu não cantar. Volte 2 casas.\n")
            		}
        	}	
        	se(posicao == 19) {
            		escreva("Você caiu na casa 19! Volte para a casa 1.\n")
            		retorne 1
        	}
        	se(posicao == 20) {
            		escreva("Você caiu na casa 20! Parabéns, você venceu a partida!\n")
        	}
        	retorne posicao
    	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {player1, 6, 12, 7}-{player2, 6, 25, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
