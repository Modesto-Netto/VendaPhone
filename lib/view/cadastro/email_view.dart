import 'package:flutter/material.dart';
import 'package:vendaphone/view/Cadastro/nome_view.dart';
import 'package:vendaphone/view/cadastro/senha_view.dart';
import 'package:vendaphone/view/cadastro/telefone_view.dart';

class EmailView extends StatefulWidget {
  @override
  State<EmailView> createState() => _EmailViewState();



}
class _EmailViewState extends State<EmailView> {
  void continuar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SenhaView())
    );
  }
  void cancelar(){
    Navigator.pop(context,
        MaterialPageRoute(builder: (context)=>TelefoneView() )
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: const Text('Email', style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
              ),
              backgroundColor:  const Color(0xFF025AD5),
              centerTitle: true,
            ),
            const SizedBox(height: 23 ),
            Container(
                width: 310,
                child: RichText(
                  text: const TextSpan(
                    text: 'Chegou a hora de você digitar o seu ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'melhor email',
                        style: TextStyle(
                            color: Color(0xFF0E14B6),
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                )

            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: 310,
              child: const Text('O email vai servir para você conseguir logar com sua conta, digite o email que você mais utiliza.',style:
              TextStyle(fontSize: 12,
                  color:Color(0xFF847F7F)),),
            ),

            const SizedBox(height: 17),

            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Center(
                child: TextField(
                  style: TextStyle(fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Digite seu email aqui',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Color(0xFF6D6969),
                        fontWeight: FontWeight.bold,fontSize: 20),
                    contentPadding: EdgeInsets.symmetric(horizontal: -25, vertical: 5),
                  ),
                ),

              ),
            ),
            const SizedBox(height: 400 ,),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextButton.icon(
                        onPressed: (){
                          cancelar();
                        },
                        label: const Text('Voltar',
                          style: TextStyle(color: Color(0xFF3F3737),),
                        ),
                        icon: const Icon(Icons.arrow_back, color: Color(0xFF3F3737),),
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFFD9D9D9),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      )

                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextButton.icon(
                      onPressed: (){
                        continuar();
                      },
                      label: const Text('Continuar',
                          style: TextStyle(color: Colors.white,)
                      ),

                      icon: const Icon(Icons.arrow_forward, color: Colors.white,),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFF025AD5),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

