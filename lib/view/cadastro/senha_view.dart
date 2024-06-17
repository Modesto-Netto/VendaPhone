import 'package:flutter/material.dart';
import 'package:vendaphone/view/Cadastro/nome_view.dart';
import 'package:vendaphone/view/cadastro/email_view.dart';



class SenhaView extends StatefulWidget {
  @override
  State<SenhaView> createState() => _SenhaViewState();


}
class _SenhaViewState extends State<SenhaView> {

  void continuar(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NomeView())
    );
  }
  void cancelar(){
    Navigator.pop(context,
        MaterialPageRoute(builder: (context)=>EmailView() )
    );
  }

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              title: const Text('Senha', style: TextStyle(
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
                    text: 'Já estamos quase finalizando! Agora defina abaixo uma',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'senha forte',
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
            const SizedBox(
              width: 310,
              child: const Text('Essa senha será utilizada para acessar o aplicativo',style:
              TextStyle(fontSize: 12,
                  color:Color(0xFF847F7F)),),
            ),

            const SizedBox(height: 17),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),


              child: Center(
                child: TextField(
                  style: const TextStyle(fontSize: 20,
                  ),
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: 'Digite sua senha aqui',
                    suffixIcon: IconButton(
                        onPressed: (){
                          if (obscureText){
                            setState(() {
                              obscureText = false;
                            }
                            );
                          }else{
                            setState(() {
                              obscureText = true;
                            });
                          }

                        },
                        icon: obscureText ? const Icon(Icons.visibility): const Icon(Icons.visibility_off)
                    ),

                    border: InputBorder.none,
                    hintStyle: const TextStyle(color: Color(0xFF6D6969),
                        fontWeight: FontWeight.bold,fontSize: 20),
                    contentPadding: const EdgeInsets.symmetric(horizontal: -25, vertical: 5),
                  ),

                ),

              ),

            ),
            const Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Para sua maior segurança, sua senha deve conter letras e números'),
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
            ),

          ],
        ),
      ),
    );
  }
}

