import 'package:flutter/material.dart';
import 'package:summaries_app/ui/styles/app_colors.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blue,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const Text(
              "Perfil",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0, 10))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://img2.gratispng.com/20180331/eow/kisspng-computer-icons-user-clip-art-user-5abf13db298934.2968784715224718991702.jpg",
                            ))),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          color: AppColors.blue,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            _buildForm(),
          ],
        ),
      ),
    );
  }

  _buildForm() {
    bool enabledName = false;
    bool enabledPhone = false;
    bool enabledEmail = false;
    return Column(
      children: [
        TextFormField(
          enabled: enabledName,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person_outline,
              color: AppColors.blue,
              size: 40,
            ),
            labelText: 'Nome',
            suffixIcon: GestureDetector(
              onTap: () {
                enabledName ? enabledName = false : enabledName = true;
              },
              child: Icon(
                Icons.edit,
              ),
            ),
            labelStyle: TextStyle(
              color: AppColors.blue,
            ),
          ),
          keyboardType: TextInputType.name,
          initialValue: 'Maria Antonella',
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          enabled: enabledPhone,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.phone_android_outlined,
              color: AppColors.blue,
              size: 40,
            ),
            labelText: 'Telefone',
            suffixIcon: GestureDetector(
              onTap: () {
                enabledPhone ? enabledPhone = false : enabledPhone = true;
              },
              child: Icon(
                Icons.edit,
              ),
            ),
            labelStyle: TextStyle(
              color: AppColors.blue,
            ),
          ),
          keyboardType: TextInputType.phone,
          initialValue: '(82) 99975-0801',
        ),
        const SizedBox(
          height: 20,
        ),
        TextFormField(
          enabled: enabledEmail,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: AppColors.blue,
              size: 40,
            ),
            labelText: 'E-mail',
            suffixIcon: GestureDetector(
              onTap: () {
                enabledEmail ? enabledEmail = false : enabledEmail = true;
              },
              child: Icon(
                Icons.edit,
              ),
            ),
            labelStyle: TextStyle(
              color: AppColors.blue,
            ),
          ),
          keyboardType: TextInputType.emailAddress,
          initialValue: 'Antonella@gmail.com',
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  //primary: AppColors.lilas,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text("CANCELAR",
                    style: TextStyle(
                        fontSize: 14, letterSpacing: 2.2, color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "SALVAR",
                  style: TextStyle(
                      fontSize: 14, letterSpacing: 2.2, color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
