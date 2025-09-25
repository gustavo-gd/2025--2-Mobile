import 'dart.io';
import 'produto.dart';
import 'item_compra.dart';
import 'carrinho _compra.dart';

class PDVApp{
    CarrinhoCompra carrinho = CarrinhoCompra();

    void iniciar(){
        print('\n== SISTEMA DE PDV\n');
        print('Bem-Vindo ao sistema! ');
       
        bool continuar = true;

        while(continuar){
            print('Deseja adicionar um produto ao carrinho? (S/N)');
            String resposta = stdin.readLineSync()?.toUpperCase() ?? 'N'
            
            if(resposta == 'S'){
                ItemCompra item = LerDadosCompra();
                carrinho.adicionarItem(item);
                print('\nProduto adicionado com sucesso!');
            }else {
                continuar = false;
            }

        }
        if(carrinho.estaVazio()){
            print('\nNenhum produto foi adicionado ao carrinho.');
            print('\nObrigado por usar o sistema PDV.');
        }else {
            exibirResultado();
        }
    }


}