import 'package:flutter/material.dart';
import 'package:ta_rides_final/screens/map_screen.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/Christian.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const TextFieldWidget(textFieldName: 'First Name'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Last Name'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Birth Date'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Gender'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Phone Number'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Email Address'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Location'),
                const SizedBox(
                  height: 10,
                ),
                const TextFieldWidget(textFieldName: 'Current Weight'),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      primary: const Color(0xFF35B73A),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String textFieldName;
  const TextFieldWidget({
    Key? key,
    required this.textFieldName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(bottom: 10),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: textFieldName,
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
