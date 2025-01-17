programa {
	inclua biblioteca Util --> u
    	inclua biblioteca Sons -->s
    	cadeia menuOpt
    	inteiro skipPlayer=0, i=1 // Flags para pular a vez do jogador
    	inteiro totaldado1 = 1, totaldado2 = 1
    	inteiro player1[21], player2[21] //Vetores que marcarão as posições
    	inteiro dado1, dado2 
    	inteiro somdado= s.carregar_som("./audios/dados.mp3")//localização do som dos dados no computador
    	inteiro placar= s.carregar_som("./audios/placar.mp3")
    	inteiro desistiu= s.carregar_som("./audios/desistiu.mp3")
    	inteiro vencedor1 = 0, vencedor2 = 0
    
    	funcao inicio() {
    		inteiro som= s.carregar_som("./audios/trilhasonora.mp3")
    		inteiro intro= s.carregar_som("./audios/introducao.mp3")
    		cadeia continuar
    		inteiro tempo = 50000
    		
    		s.reproduzir_som(som, verdadeiro)
    		s.definir_volume_reproducao(som, 60)
    		limpa()
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
	   		para(inteiro resetar = 0; resetar <= 20; resetar++) {
               		player1[resetar] = 0
               		player2[resetar] = 0
          	}
	   		s.reproduzir_som(intro, falso)
	   		s.definir_volume_reproducao(intro, 100)
	   		s.definir_volume_reproducao(som, 0)
        		escreva("Bem-vindos ao 'Delivery Man', onde vocês se tornam os heróis das entregas na cidade! Preparem-se para uma corrida cheia de desafios e surpresas enquanto fazem suas entregas e ganham pontos.\n")
        		escreva("--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n")
        		escreva ("Vocês são entregadores dedicados, prontos para enfrentar sinais vermelhos, pneus furados, clientes confusos e até shows de talentos!\nCada jogada traz uma nova aventura, desde encontrar atalhos secretos até trocar de posição com outros entregadores.\n")
        		escreva("---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n")
        		escreva ("Então, afivelem seus capacetes, liguem o GPS e preparem-se para a corrida de entregas mais empolgante de todas. O primeiro a chegar ao destino final vence, mas cada entrega concluída é uma vitória.\nProntos para começar? Vamos lá, entregadores! O destino final espera por vocês!\n")
        		escreva("Digite algo para pular... ")
        		leia(continuar)
        		se(continuar != "textoImpossivel") {
        			tempo = 0
        			s.interromper_som(intro)
        		}
        		u.aguarde(tempo)
        		limpa()
        		
        		escreva("   __o \n")
        		escreva(" _ \\<_ \n")
        		escreva("(_)/(_) \n")
        		escreva("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n")
        		
        		escreva("Digite 1 para Jogar \n")
        		escreva("Digite 2 para mostrar o Placar \n")
        		escreva("Digite outro valor para fechar o jogo\n")
        		leia(menuOpt)
        		limpa()
        		
        		se(menuOpt == "1") {
        			inteiro partida= s.carregar_som("./audios/Motorcycle.mp3")
    				s.reproduzir_som(partida, falso)
    				s.definir_volume_reproducao(partida, 70)
          		jogo()//jogo comeca
          		i++
          		escreva("Digite 4 para Jogar Novamente \n")
        			escreva("Digite 2 para mostrar o Placar \n")
        			escreva("Digite outro valor para fechar o jogo\n")
          		leia(continuar)
          		se(continuar == "4") {
          			enquanto(continuar == "4") {
          				totaldado1 = 0
          				totaldado2 = 0
          				jogo()
          				escreva("\nDeseja jogar novamente? 4-sim, 5-placar, 6-fechar\n")
          				leia(continuar)
          				se(continuar == "4") {
          					jogo()
          				} senao se(continuar == "5") {
          					escreva("O placar é:\n")
          					escreva("Jogador 1: ", vencedor1, " Vitoria(s)")
          					escreva("\nJogador 2: ", vencedor2, " Vitoria(s)")
          					escreva("\nDeseja jogar novamente? 1- sim, 2- nao\n")
          					leia(continuar)
          					se(continuar == "4") {
          						inicio()
          					} senao {
          						escreva("Obrigado Por Jogar!!")
          						escreva("\nJogo finalizado!!")
          					}
          				} senao {
          					escreva("Obrigado Por Jogar!!")
          					escreva("\nJogo finalizado!!")
          				}
          				
          			}
          		} senao se (continuar == "2") {
          			escreva("O placar é:\n")
          			escreva("Jogador 1: ", vencedor1, " Vitoria(s)")
          			escreva("\nJogador 2: ", vencedor2, " Vitoria(s)")
          			escreva("\nDeseja jogar novamente? 1- sim, 2- nao\n")
          			leia(continuar)
          			se(continuar == "1") {
          				inicio()
          			} senao {
          				escreva("Obrigado Por Jogar!!")
          				escreva("\nJogo finalizado!!")
          			}
          		} senao {
          			escreva("Obrigado Por Jogar!!")
          		}
          		
        		}
        		se(menuOpt== "2"){
        			escreva("O placar é:\n")
          			escreva("Jogador 1: ", vencedor1, " Vitoria(s)")
          			escreva("\nJogador 2: ", vencedor2, " Vitoria(s)")
          			escreva("\nDeseja jogar agora? 1- sim, 2- nao\n")
          			leia(continuar)
          			se(continuar == "1") {
          				inicio()
          			} senao {
          				escreva("Obrigado Por Jogar!!")
          				escreva("\nJogo finalizado!!")
          			}
        			s.reproduzir_som(placar, falso)
        			s.definir_volume_reproducao(placar, 100)
        		} senao {
            		s.reproduzir_som(desistiu, falso)
            		escreva("\nJogo finalizado!!")
            		s.definir_volume_reproducao(desistiu, 100)
        	  		i++
        		}
   		}
   	}
    
	funcao jogo(){
		cadeia playerN1 = "Ifood", playerN2 = "UberEats"
        	inteiro winner = 1
        	inteiro switch = 1 // flag para ligar e desligar todo o looping aonde o jogo acontece
        	inteiro orderPlayer1 = 0, orderPlayer2 = 0
        	inteiro choice, personagem=0, jogador1=0, jogador2=0, p=0, c=0
        	inteiro invalid = 1
        	inteiro optPlayer
        	inteiro UberEats= s.carregar_som("./audios/UberEats.mp3")
        	inteiro Ifood= s.carregar_som("./audios/ifood.mp3")
        	inteiro passa= s.carregar_som("./audios/passaavez.mp3")
        	inteiro totalAntes
        
        	para(inteiro contador= 0; contador <= 20; contador++) { //enchendo todas as posiçoes do array com 0
          		player1[contador] = 0
            		player2[contador] = 0
        	}
        	player1 [1]=1 //"Dois jogadores estarão na posição 1 do tabuleiro, sem qualquer benefício ou penalidade".
        	player2 [1]=1//"Dois jogadores estarão na posição 1 do tabuleiro, sem qualquer benefício ou penalidade."

        	escreva("-------------------------------------------------------------------------- \n")
        	escreva ("Vocês agora são entregadores, onde tempo é dinheiro.\nSejam rápidos e aproveitem as oportunidades!\nO jogador que chegar primeiro à posição 20, ponto de entrega da encomenda, vence o jogo.\n")
 		enquanto(personagem==0){
			escreva("Para escolher os personagens, Ifood ou UberEats, cada jogador lançará o dado uma vez.\nQuem obter o maior número escolhe o personagem e começa jogando.\n")
        		escreva("\nJogador 1, digite 1 para jogar o dado ou outro valor para passar a vez para o Jogador 2: " )
			leia(choice)
			limpa()
			se(choice==1){
				s.reproduzir_som(somdado, falso)
				s.definir_volume_reproducao(somdado, 100)
				jogador1=u.sorteia(1, 6)
				numeroDado(jogador1)
				escreva("\nSeu resultador foi: ", jogador1)
				s.reproduzir_som(somdado, falso)
				s.definir_volume_reproducao(somdado, 100)
			}senao{
				skipPlayer=2//define quem começa jogando após a escolha dos personagens
				escreva ("\nO Jogador 1 optou por deixar você começar jogando e escolher seu personagem. Aproveite!")
				s.reproduzir_som(passa, falso)
				s.definir_volume_reproducao(passa, 100)
				escreva ("\nJogador 2, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
				leia (p)
				enquanto (c==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 1 está com o entregador da  UberEats.")
							s.reproduzir_som(Ifood, falso)
							s.definir_volume_reproducao(Ifood, 100)
							c++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 1 está com o entregador da Ifood.")
							s.reproduzir_som(UberEats, falso)
							s.definir_volume_reproducao(UberEats, 100)
							c++
							personagem++
							pare
						caso contrario: 
							escreva ("Escolha aleatória! Boa sorte!")
							s.reproduzir_som(somdado, falso)
							s.definir_volume_reproducao(somdado,100)
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
				s.reproduzir_som(somdado, falso)
				s.definir_volume_reproducao(somdado, 100)
				jogador2= u.sorteia(1, 6)
				numeroDado(jogador2)
				escreva ("\nSeu resultado foi: ", jogador2)
				s.reproduzir_som(somdado, falso)
				s.definir_volume_reproducao(somdado, 100)
			}

			se(choice!=1 e personagem==0){
				skipPlayer=1
				escreva ("\nO Jogador 2 optou por deixar você jogar primeiro e escolher seu personagem. Aproveite!")
				s.reproduzir_som(passa, falso)
				s.definir_volume_reproducao(passa, 100)
				escreva ("\nJogador 1, pressione 1 para escolher Ifood, 2 para escolher UberEats ou qualquer outro valor para escolha aleatória: ")
				leia (p)
				enquanto (c==0){
					escolha (p){
						caso 1: 
							escreva ("\nVocê escolheu o entregador da Ifood e o jogador 2 está com o entregador da  UberEats.")
							s.reproduzir_som(Ifood, falso)
							s.definir_volume_reproducao(Ifood, 70)
							c++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 2 está com o entregador da Ifood.")
							s.reproduzir_som(UberEats, falso)
							s.definir_volume_reproducao(UberEats, 70)
							c++
							personagem++
							pare
						caso contrario:
							escreva ("Escolha aleatória! Boa sorte!")
							s.reproduzir_som(somdado, falso)
							s.definir_volume_reproducao(somdado, 100)
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
							s.reproduzir_som(Ifood, falso)
							s.definir_volume_reproducao(Ifood, 70)
							c++
							personagem++
							pare
						caso 2:
							escreva ("\nVocê escolheu o entregador da  UberEats e o jogador 2 está com o entregador da Ifood")
							s.reproduzir_som(UberEats, falso)
							s.definir_volume_reproducao(UberEats, 70)
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
							s.reproduzir_som(Ifood, falso)
							s.definir_volume_reproducao(Ifood, 70)
							c++
							personagem++
							pare
						caso 2: 
							escreva ("\nVocê escolheu o entregador da UberEats e o jogador 1 está com o entregador da Ifood")
							s.reproduzir_som(UberEats, falso)
							s.definir_volume_reproducao(UberEats, 70)
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
        	limpa()
		enquanto(switch == 1) {
        		se(skipPlayer== 1){
                //Jogador1         
              		escreva("-------------------------------------------------------------------------- \n")
               	para(inteiro resetar = 0; i<= 21; i++) {
               			player1[resetar] = 0
               			player2[resetar] = 0
               	}
               	
               	escreva("Jogador ", skipPlayer ," digite '1' para jogar, '2' para ver a posição atual ou outro valor para desistir: ")
               	leia(optPlayer)      
              	 	se(optPlayer == 1){
               			s.reproduzir_som(somdado, falso)
						s.definir_volume_reproducao(somdado, 100)
                    		se(totaldado1 < 20) {
                        			player1[totaldado1] = 0 // Zera a posição anterior
                    		}
                    		dado1 = u.sorteia(1, 6)
                    		numeroDado(dado1)
                    		escreva("-------------------------------------------------------------------------- \n")
                    		escreva("O jogador 1 tirou: ", dado1, "\n")
                    		totalAntes = totaldado1
                    		totaldado1 = totaldado1 + dado1
                    		se(totaldado1 >20){
                        			totaldado1 = 20 // limita ao tamanho do array não deixando passar de 20
                    		}
                    		totaldado1 = aplicaCondicao(totaldado1, 1, totalAntes) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    		player1[totaldado1] = 1
                    		se(totaldado1 == 20) {
                        			winner = 1 //casa do vencedor
                        			pare
                    		}
                    		skipPlayer=2
                	} senao se (optPlayer == 2){
                    		escreva("Posição atual: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n")
                    		s.reproduzir_som(placar, falso)
                    		s.definir_volume_reproducao(placar, 100)
                    		escreva("Jogador ", skipPlayer ," digite '1' para jogar ou outro valor para desistir: ")
               			leia(optPlayer)
               			se(totaldado1 < 20) {
                        			player1[totaldado1] = 0 // Zera a posição anterior
                    		}
                    		dado1 = u.sorteia(1, 6)
                    		numeroDado(dado1)
                    		escreva("-------------------------------------------------------------------------- \n")
                    		escreva("O jogador 1 tirou: ", dado1, "\n")
                    		totalAntes = totaldado1
                    		totaldado1 = totaldado1 + dado1
                    		se(totaldado1 >20){
                        			totaldado1 = 20 // limita ao tamanho do array não deixando passar de 20
                    		}
                    		totaldado1 = aplicaCondicao(totaldado1, 1, totalAntes) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    		player1[totaldado1] = 1
                    		se(totaldado1 == 20) {
                        			winner = 1 //casa do vencedor
                        			pare
                    		}
               	 		skipPlayer=2
                		
                	} senao {
                    		escreva("-------------------------------------------------------------------------- \n")
                    		vencedor2++
                    		escreva("O Jogador 2 ganhou pois o jogador 1 desistiu")
                    		s.reproduzir_som(desistiu, falso)
                    		s.definir_volume_reproducao(desistiu, 100)
                    		player2 [20]=1 //Ativa a vitória do jogador 2
                    		winner = 2
                    		pare
                	}
            	} 
            // Jogador 2
			se(skipPlayer== 2){
				escreva("-------------------------------------------------------------------------- \n")
               		para(inteiro resetar = 0; i<= 21; i++) {
               			player1[resetar] = 0
               			player2[resetar] = 0
               		}
               		escreva("Jogador ", skipPlayer ," digite '1' para jogar, '2' para ver a posição atual ou outro valor para desistir: ")
               		leia(optPlayer)
               		se(optPlayer == 1){
               			s.reproduzir_som(somdado, falso)
						s.definir_volume_reproducao(somdado, 100)
                    		se(totaldado2 < 20){
                        			player2[totaldado2] = 0 // Zera a posição anterior
                    		}
                    		dado2 = u.sorteia(1, 6)
                    		numeroDado(dado2)
                    		escreva("-------------------------------------------------------------------------- \n")
                    		escreva("O jogador 2 tirou: ", dado2, "\n")
                    		totalAntes = totaldado2
                    		totaldado2 = totaldado2 + dado2
                    		
                    		se(totaldado2 > 20){
                        			totaldado2 = 20 // limita ao tamanho do array
                    		}
                    		totaldado2 = aplicaCondicao(totaldado2, 2, totalAntes) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    		player2[totaldado2] = 1
                    		se(totaldado2 == 20) {
                        			winner = 2
                        			pare
                    		}
                    		skipPlayer=1
                		}senao se (optPlayer == 2){
                    		escreva("Placar: Jogador 1 - ", totaldado1, " | Jogador 2 - ", totaldado2, "\n") //mostra as posições atuais
                    		s.reproduzir_som(placar, falso)
                    		s.definir_volume_reproducao(placar, 100)
                    		escreva("Jogador 2 - digite '1' para jogar ou outro valor para desistir: ") //Volta na opção de escolha
               			leia(optPlayer)
               			se(optPlayer == 1){
               				s.reproduzir_som(somdado, falso)
							s.definir_volume_reproducao(somdado, 100)
                    			se(totaldado2 < 20) {
                        				player2[totaldado2] = 0 // Zera a posição anterior
                    			}
                    			dado2 = u.sorteia(1, 6)
                    			numeroDado(dado2)
                    			escreva("-------------------------------------------------------------------------- \n")
                    			escreva("O jogador 2 tirou: ", dado2, "\n")
                    			totalAntes = totaldado2
                    			totaldado2 = totaldado2 + dado2
                    			se(totaldado2 > 20){
                        				totaldado2 = 20 // limita ao tamanho do array
                    			}
                    			totaldado2 = aplicaCondicao(totaldado2, 2, totalAntes) // chama a funçao para ver qual a casa, se houver uma casa especial ele executa a açao
                    			player2[totaldado2] = 1
                    			se(totaldado2 == 20) {
                        				winner = 2
                        				pare
                    			}
                    			skipPlayer=1
                			}senao{
                    			escreva("-------------------------------------------------------------------------- \n")
                    			vencedor1++
                    			escreva("o Jogador 1 ganhou pois o jogador 2 desistiu")
                    			s.reproduzir_som(desistiu, falso)
                    			winner = 1
                    			pare
                			}
            			}senao{
                    		escreva("-------------------------------------------------------------------------- \n")
                    		vencedor1++
                    		escreva("Jogo finalizado, jogador 1 ganhou pois o jogador 2 desistiu")
                    		winner = 1
                    		pare
            			}
       		}
   		}
	}
    //funcao para aplicar as condicoes de cada casa
    	funcao inteiro aplicaCondicao(inteiro posicao, inteiro jogador, inteiro totalAntes) {
		// Define as condições especiais
		// retornar 5 = ir para a casa de posicao 5
        	cadeia continuar
        	inteiro sirene= s.carregar_som("./audios/sirene.mp3")
    	   	inteiro troca= s.carregar_som("./audios/aplicaCondicao.mp3")
    	   	inteiro pitstop= s.carregar_som("./audios/pitstop.mp3")
    	   	inteiro telefone= s.carregar_som("./audios/telefone.mp3")
    	   	inteiro abastecer= s.carregar_som("./audios/abastecer.mp3")
    	   	inteiro evidencias= s.carregar_som("./audios/evidencias.mp3")
    	   	inteiro voltar= s.carregar_som("./audios/voltar.mp3")
    	   	inteiro campeao= s.carregar_som("./audios/campeao.mp3")
    	   	inteiro trilhasonora= s.carregar_som("./audios/trilhasonora.mp3")
        	se(posicao == 2) {
            	escreva("Casa 2: Você furou o sinal vermelho, fugiu da polícia e encontrou um atalho. Acelere até a casa 5!\n")
            	escreva(" ______,-,___        _         -       _     \n")
			escreva("||______][___\\____      __              __o \n")
        		escreva("|o   _   |-  | _ o)    -              _ \\<_ \n")
        		escreva("'---(_)-------(_)´         (   ( (   (_)/(_) \n")
        		escreva("----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- \n")
        		
            	s.reproduzir_som(sirene, falso)
            	retorne 5 
        	}
        	se(posicao == 3) {
            	escreva("Casa 3: Um pedido urgente chegou! Lance um dado de 3 lados para acelerar a entrega.\n")
            	s.reproduzir_som(telefone, falso)
            	escreva("Digite algo para jogar o dado: ")
            	s.definir_volume_reproducao(telefone, 80)
            	leia(continuar)
          	s.reproduzir_som(somdado, falso)
		  	s.definir_volume_reproducao(somdado, 100)
            	inteiro dadoExtra = u.sorteia(1, 3)
            	numeroDado(dadoExtra)
            	posicao = posicao + dadoExtra
            	escreva("Dado adicional tirou: ", dadoExtra, "\n")
            	aplicaCondicao(posicao, jogador, posicao) // recursvidade caso caia em alguma casa especial
        	}
        	se(posicao == 7) {
            	escreva("Casa 7: Seu pneu furou! Procure um borracheiro para trocar o pneu e espere a próxima rodada.\n")
            	escreva("  ___  \n")
            	escreva(" /   \\ \n")
            	escreva("| (O) |  \n")
            	escreva(" \\___/  \n")
            	s.reproduzir_som(pitstop, falso)
            	retorne totalAntes
        	}
        	se(posicao == 10) {
           	escreva("Casa 10: Os clientes trocaram os endereços! Os jogadores devem trocar de posição para corrigir as entregas.\n")
           	s.reproduzir_som(troca, falso)
           	s.definir_volume_reproducao(troca, 100)
           	//invertendo posiçoes
           	inteiro temp
           	
           	se(jogador == 1) {
           		temp = totaldado2
           		totaldado2 = totaldado1
           		totaldado1 = temp
           	} senao {
           		temp = totaldado1
           		totaldado1 = totaldado2
           		totaldado2 = temp
           	}
           	escreva("Jogador 1 está agora na casa ", totaldado2, " e Jogador 2 está agora na casa ", totaldado1, "\n")
        	}
        	se(posicao == 12) {
            	escreva("Casa 12: A gasolina está acabando! Volte à casa anterior para reabastecer no posto Ipiranga e espere a próxima rodada.\n")
            	s.reproduzir_som(abastecer, falso)
            	s.definir_volume_reproducao(abastecer, 100)
            	posicao = posicao - 1
        	}
        	se(posicao == 15) {
        		escreva(" __ \n") 
   			escreva("/__\\ \n")
   			escreva("\\__/ \n")
   			escreva(" || \n")
   			escreva(" || \n")
   			escreva(" || \n")
			escreva("  \\__ \n")
			escreva("     \\ \n")
            		escreva("É o show de talentos sertanejos da comunidade! Cante Evidências e avance, ou opte por mudar a rota voltando duas casas.\n")
            		cadeia resposta
           		escreva("\nDigite '1' se quiser cantar, qualquer outra coisa para voltar 2 casas: ")
            		leia(resposta)
            		se(resposta == "1") {
            			s.reproduzir_som(evidencias, falso)
            			s.definir_volume_reproducao(evidencias, 100)
               		escreva ("\nE nessa loucura de dizer que não te quero\nVou negando as aparências\nDisfarçando as evidências\nMas pra que viver fingindo\nSe eu não posso enganar meu coração?\nEu sei que te amo!")
               		escreva ("\nChega de mentiras\nDe negar o meu desejo\nEu te quero mais que tudo\nEu preciso do seu beijo\nEu entrego a minha vida\nPra você fazer o que quiser de mim\nSó quero ouvir você dizer que sim!")
            			u.aguarde(40000)
            			
            		}senao{
            			escreva("Você escolheu não cantar. Volte 2 casas.\n")
            			s.reproduzir_som(voltar, falso)
            			s.definir_volume_reproducao(voltar, 100)
            			posicao = posicao - 2
            		}
        	}
        	se(posicao == 19) {
            		escreva("Casa 19: Você quase chegou ao destino, mas esqueceu a máquina de cartão! Volte para a casa 1 para buscá-la.\n")
            		s.reproduzir_som(voltar, falso)
            		s.definir_volume_reproducao(voltar, 100)
            		retorne 1
        	}
        	se(posicao == 20) {
            		escreva("Casa 20: Bom trabalho, entregador! Você chegou ao destino e concluiu a entrega. Você soma +1 ponto no placar.!\n")
            		s.reproduzir_som(campeao, falso)
            		s.definir_volume_reproducao(campeao, 100)
            		s.definir_volume_reproducao(trilhasonora, 100)
            		se(jogador == 1) {
            			vencedor1++
            		} senao {
            			vencedor2++
            		}
        	}
        	retorne posicao
	}

	funcao numeroDado(inteiro numero) {
		escreva("+-----+\n")
		se(numero == 1) {
			escreva("|     |\n")
			escreva("|  *  |\n")
			escreva("|     |\n")
		}
		se(numero == 2) {
			escreva("|*    |\n")
			escreva("|     |\n")
			escreva("|    *|\n")
		}
		se(numero == 3) {
			escreva("|*    |\n")
			escreva("|  *  |\n")
			escreva("|    *|\n")
		}
		se(numero == 4) {
			escreva("|*   *|\n")
			escreva("|     |\n")
			escreva("|*   *|\n")
			
		}
		se(numero == 5) {
			escreva("|*   *|\n")
			escreva("|  *  |\n")
			escreva("|*   *|\n")
		}
		se(numero == 6) {
			escreva("|*   *|\n")
			escreva("|*   *|\n")
			escreva("|*   *|\n")
		}
		escreva("+-----+\n")
		escreva("\n")
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5229; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */