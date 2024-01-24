import 'package:flutter/material.dart';

class CreatePromptScreen extends StatefulWidget {
  const CreatePromptScreen({super.key});

  @override
  State<CreatePromptScreen> createState() => _CreatePromptScreenState();
}

class _CreatePromptScreenState extends State<CreatePromptScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        title: const Center(
          child: Text(
            'Generate Images 🚀',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
            ),
          ),
          Container(
            
            height: 200,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter your image description",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  cursorColor: Colors.red.shade400,
                  controller: controller,
                  decoration: InputDecoration(
                    
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red.shade400),
                    borderRadius: BorderRadius.circular(15),
                  ) ,
                      border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
                ),
                const SizedBox(
                  height: 20,
                ),
               SizedBox(
                height: 40,
                width: double.maxFinite,
                 child: ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.generating_tokens_outlined), label: Text("GENERATE"),
                 style:ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red.shade400)
                 ),),
               )
              ],
            ),
          )
        ],
      )),
    );
  }
}
