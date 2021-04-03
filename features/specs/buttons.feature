#language: pt

Funcionalidade: Buttons

    @click_simples
    Cenario: Click Simples
        Dado que acesso a tela Clcik Simples
        Quando faço um clcik simples
        Então devo ver o texto: "Isso é um clique simples"

    @click_longo
    Cenario: Click Longooo
    Dado que acesso a tela Click Longo
    Quando faço um click Longooo
    Então devo ver o botão com o texto: "CLIQUE LONGO OK"