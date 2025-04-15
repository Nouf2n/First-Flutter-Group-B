import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.pink, 
                ),
                Expanded(
                  child: Text(
                    'Country Selection',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), 
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Find yours',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.pink),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  CountryTile(
                    country: 'Ukraine',
                    flagUrl: 'images/ukraine.png',
                    isSelected: selectedCountry == 'Ukraine',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Ukraine';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Australia',
                    flagUrl: 'images/australia.png',
                    isSelected: selectedCountry == 'Australia',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Australia';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Kazakhstan',
                    flagUrl: 'images/kazakhstan.png',
                    isSelected: selectedCountry == 'Kazakhstan',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Kazakhstan';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Europe',
                    flagUrl: 'images/europe.png',
                    isSelected: selectedCountry == 'Europe',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Europe';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Slovenia',
                    flagUrl: 'images/slovenia.png',
                    isSelected: selectedCountry == 'Slovenia',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Slovenia';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Czech',
                    flagUrl: 'images/czech.png',
                    isSelected: selectedCountry == 'Czech',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Czech';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Netherlands',
                    flagUrl: 'images/netherlands.png',
                    isSelected: selectedCountry == 'Netherlands',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Netherlands';
                      });
                    },
                  ),
                  Divider(color: Colors.grey[300]), 
                  CountryTile(
                    country: 'Poland',
                    flagUrl: 'images/poland.png',
                    isSelected: selectedCountry == 'Poland',
                    onTap: () {
                      setState(() {
                        selectedCountry = 'Poland';
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFC0CB),
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('SAVE'),
            ),
          ],
        ),
      ),
    );
  }
}

class CountryTile extends StatelessWidget {
  final String country;
  final String flagUrl;
  final bool isSelected;
  final VoidCallback onTap;

  const CountryTile({
    super.key,
    required this.country,
    required this.flagUrl,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(country),
      leading: Image.asset(
        flagUrl,
        width: 40, 
        height: 30, 
      ),
      trailing: Radio(
        value: country,
        groupValue: isSelected ? country : null,
        onChanged: (value) {
          onTap();
        },
        activeColor: Colors.pink[100],
        fillColor: MaterialStateProperty.all(Colors.pink[100]!),
      ),
      onTap: onTap, 
    );
  }
}