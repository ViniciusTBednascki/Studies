def computador_escolhe_jogada(n,m):
    x = 0
    ganhei = False
    if n % (m+1) == 0:
        n -= 1
        x += 1
    while n % (m+1) != 0 and x < m and not ganhei:
        x += 1
        n -= 1
    return x

def usuario_escolhe_jogada(n,m):
    x = m + 1
    while x > m or x <= 0 or n - x < 0:
        x = int(input("quantas peças você retira? "))
    return x

def partida():
    n = 0
    m = 0
    while n <= 0:
        n = int(input("informe o número de peças no tabuleiro: "))
    while m <=0 :
        m = int(input("informe o número máximo de peças a serem retiradas em cada rodada: "))
    if n % (m+1) == 0:
        print("você começa")
        x = 1
        computador_ganha = False
        while not computador_ganha:
            x = usuario_escolhe_jogada(n,m)
            n -= x
            print("você retira",x,"peças")
            print("sobram",n,"peças")
            x = computador_escolhe_jogada(n,m)
            n -= x
            print("eu retirei",x,"peças")
            print("sobram",n,"peças")
            if n == 0:
                computador_ganha = True
        if computador_ganha:
            print("O computador ganhou!")
            return 1
        else:
            return 0
    else:
        print("eu começo")
        x = 1
        computador_ganha = False
        while not computador_ganha:
            x = computador_escolhe_jogada(n,m)
            n -= x
            print("eu retirei",x,"peças")
            print("sobram",n,"peças")
            if n == 0:
                computador_ganha = True
            else:
                x = usuario_escolhe_jogada(n,m)
                n -= x
                print("você retira",x,"peças")
                print("sobram",n,"peças")
        if computador_ganha:
            print("O computador ganhou!")
            return 1
        else:
            return 0
def campeonato():
    Pc = 0
    Pu = 0
    x = 1
    while x < 4:
        print("rodada",x)
        p = partida()
        x += 1
        Pc += p
    print("Placar: Você",Pu,"X",Pc,"Computador")

def escolha():
    print("escolha:")
    print("1 - partida solo")
    print("2 - campeonato")
    x = 0
    while x != 1 and x != 2:
        x = int(input())
    if x == 1:
        print("você escolheu partida solo")
        partida()
    if x == 2:
        print("você escolheu campeonato")
        campeonato()
print("você quer jogar um jogo?(S/N)")
t=input()
while t == "s" or t =="S":
    escolha()
    print("quer jogar de novo?(S/N)")
    t=input()
print("ok, até mais")
