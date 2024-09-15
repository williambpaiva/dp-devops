def calc():
    while True:
        try:
            var1 = float(input("Digite um numero: "))
            var2 = float(input("Digite outro numero: "))
            soma = var1 + var2
            subtracao = var1 - var2
            mult = var1 * var2
            div = var1 / var2
            expo = var1 ** var2
            resto = var1 % var2

            # Imprimindo tudo
            print('Soma:             ', var1, '+', var2, ' = ', soma)
            print('Subtração:        ', var1, '-', var2, ' = ', subtracao)
            print('Multiplicação:    ', var1, '*', var2, ' = ', mult)
            print('Divisão:          ', var1, '/', var2, ' = ', div)
            print('Exponenciação:    ', var1, '**', var2, ' = ', expo)
            print('Resto da divisão: ', var1, '%', var2, ' = ', resto)
        except EOFError:
            return
        print("FIM")

calc()