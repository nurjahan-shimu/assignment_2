import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context)
  {

    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();


    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 100),
              Container(
                child: Text('Create An Account',
                  style: TextStyle(color: Colors.black87 ,
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              RichText(text: TextSpan(
                  text: 'Get Started!',style: TextStyle(color: Colors.black87 ,fontSize: 15)
              )
              ),

              SizedBox(height: 40,),

              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Enter your mobile number',
                    prefixIcon: Icon(Icons.phone_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: 'Enter your email address',
                    prefixIcon: Icon(Icons.email_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Enter your password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Re-enter your password',
                    prefixIcon: Icon(Icons.lock_reset_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )
                ),
              ),

              SizedBox(height: 20,),

              SizedBox(
                  height: 50,
                  width: 150,
                  child:ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        foregroundColor: Colors.teal,
                      ),
                      onPressed: (){
                        void showMessage(String message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message)),
                          );
                        }
                        if (phoneController.text.isEmpty) {
                          showMessage('Please enter your mobile number!');
                        }
                        else if (emailController.text.isEmpty) {
                          showMessage('Please enter your email address!');
                        }
                        else if (passwordController.text.isEmpty) {
                          showMessage('Please enter your password!');
                        }
                        else if (confirmPasswordController.text.isEmpty) {
                          showMessage('Please re-enter your password!');
                        }
                        else if (passwordController.text != confirmPasswordController.text) {

                          showMessage('Passwords do not match!');
                        }
                        else {

                          showMessage('Registration Successful!');
                        }{
                          print(phoneController.text);
                          print(emailController.text);
                          print(passwordController.text);
                          print(confirmPasswordController.text);
                        }
                      },
                      child: Text('Sign Up' ,
                        style: TextStyle(fontSize: 20,  color: Colors.white ),
                      )
                  )
              ),
              SizedBox(height: 20,),

              RichText(text: TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.grey , fontSize: 16),

                  children: [
                    TextSpan(
                      text: "Sign in",
                      style: TextStyle(color: Colors.black87 , fontSize: 16 ,
                          fontWeight: FontWeight.bold),
                    )
                  ]
              )
              ),
              SizedBox(height: 15,),
              Text("or" , style: TextStyle(color: Colors.grey , fontSize: 15),),
              SizedBox(height: 15,),

              SizedBox(
                  height: 50,
                  width: 320,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("asset/google.png" , height: 40,width: 40,),
                        SizedBox(width: 15,),
                        Text("Continue with Google" ,style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  )
              ),
              SizedBox(height: 15,),

              SizedBox(
                  height: 50,
                  width: 320,
                  child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("asset/apple.png" , height: 40,width: 40,),
                        SizedBox(width: 15,),
                        Text("Continue with Apple" ,style: TextStyle(fontSize: 20),)
                      ],

                    ),

                  )

              ),

            ],

          ),

        ),

      ),

    );

  }

}