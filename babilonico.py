li = float(input("Digite o limite inferior (Li): "))
ls = float(input("Digite o limite superior (Ls): "))

# Verifica se o intervalo contC)m uma raiz
if (li * li - 2) * (ls * ls - 2) > 0:
    print("Erro: O intervalo fornecido nC#o contC)m uma raiz.")
    exit()

ate = 1e-8  # PrecisC#o
it = 0

print(f"{'Iteração':<10}{'Li':<12}{'Ls':<12}{'Pm':<12}{'H':<12}{'f(H)':<15}{'Condição':<12}{'Decisão':<12}")

# Exibe os valores iniciais antes do loop
pm = (li + ls) / 2
h = pm
fh = (h * h) - 2
print(
    f"{it:<10}{li:<12.6f}{ls:<12.6f}{pm:<12.6f}{h:<12.6f}{fh:<15.8f}{'---':<12}{'---':<12}"
)

while abs(fh) > ate:  # Parada para caso de 10^-8
    it += 1
    pm = (li + ls) / 2
    h = pm
    fh = (h * h) - 2

    if fh > 0:
        condicao = "f(H) > 0"
        decisao = "Ls = Pm"
        ls = pm
    elif fh < 0:
        condicao = "f(H) < 0"
        decisao = "Li = Pm"
        li = pm
    else:
        condicao = "f(H) = 0"
        decisao = "Raiz encontrada"
        print(f"\nA raiz exata foi encontrada: {pm:.8f}")
        exit()

    print(
        f"{it:<10}{li:<12.6f}{ls:<12.6f}{pm:<12.6f}{h:<12.6f}{fh:<15.8f}{condicao:<12}{decisao:<12}"
    )

print(f"\nA raiz aproximada: {pm:.8f}")

print(f"\nFeito por:\n Lucas Fernandes 10419400\n Caio Henrique Santos Carvalho 10425408\n Rafael de Souza Alves de Lima 10425819")
