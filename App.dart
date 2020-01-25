import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'dart:math' as math;

//import '../models/theme_attribute.dart';
//import '../models/utility.dart';


class App extends StatefulWidget {
  /*[Attributes]*/

  /*[Constructors]*/
  App()
  {

  }

  @override
  State<StatefulWidget> createState() {
    return _App();
  }
}

class _App extends State<App>{
    /*[Attributes]*/
    int _state_id = 2;
    int mainDisplayState = 2;
    Widget _view = Container();
    //ThemeAttribute theme_attribute = ThemeAttribute();
    //Utility utility = Utility();
    bool _page_isLoading = true;
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    String _emailValue = "";
    bool _emailValue_isValid = false;
    Widget _emailField = Container();
    Widget _passwordField = Container();
    String _passwordValue = "";
    bool _passwordValue_isValid = false;

    ThemeData buildDarkTheme() {
        final ThemeData base = ThemeData();
        return base.copyWith(
        primaryColor: Colors.grey,
        accentColor: Colors.grey,
        scaffoldBackgroundColor: Colors.grey,
        primaryTextTheme: buildTextTheme(base.primaryTextTheme, Colors.grey),
              primaryIconTheme: base.iconTheme.copyWith(color: Colors.grey),
              buttonColor: Colors.grey,
              hintColor: Colors.grey,
              textTheme: buildTextTheme(base.textTheme, Colors.grey),    
              inputDecorationTheme: InputDecorationTheme(
                border: OutlineInputBorder(borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                                    gapPadding: 20.0,
                                    borderSide: const BorderSide(color: Colors.yellow, width: 4.0)),
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 24.0
                ),
            ),
        );
    }
    buildTextTheme(TextTheme primaryTextTheme, MaterialColor grey) {}
    


    /*[Constructors]*/

    /*
    * @Description: Constructor
    *
    * @param:
    *
    * @return: void
    */
    _CarRentalSignInApp()
    {

    }


    /*[Live Cycle methods]*/

    @override
    void initState(){

        this._emailField = this._buildEmailTextField();
        this._passwordField = this._buildPasswordTextField();

        super.initState();
    }


    /*
    * @Description: 
    *
    * @param:
    *
    * @return: void
    */
    @override
    Widget build(BuildContext context) {
        //Variables
        //final ThemeAttribute theme_attribute = ThemeAttribute();
        final double deviceHeight = MediaQuery.of(context).size.height;
        final double deviceWidth = MediaQuery.of(context).size.width;

        //Set view
        switch(this._state_id)
        {
            case 0:
            {
                this._view = SafeArea(
                    child: Scaffold(
                        key: _scaffoldKey,
                            /*appBar: AppBar(
                                title: Row(
                                    children: <Widget>[
                                        //Image.asset('assets/icon.png'),
                                        SizedBox(width: 20),
                                        Text('Home', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0, color: Colors.grey))
                                    ]
                                ),
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                            ),*/
                            body: Container(
                                color: Colors.red,
                            ),
                            /*floatingActionButton:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                    FloatingActionButton(
                                            onPressed: () {
                                                this._search_isLoading = true;
                                                callShowModalBottomSheet(context);
                                                //_showModalBottomSheetCustom(context);
                                            },
                                            child: Icon(Icons.search),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.blue,
                                      ),
                                  ],
                            )*/
                    )
                );
                break;
            }

            case 1:
            {
                break;
            }

            case 2:
            {
                this._view = SafeArea(
                    child: Scaffold(
                        key: _scaffoldKey,
                            /*appBar: AppBar(
                                title: Row(
                                    children: <Widget>[
                                        //Image.asset('assets/icon.png'),
                                        SizedBox(width: 20),
                                        Text('Home', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0, color: Colors.grey))
                                    ]
                                ),
                                backgroundColor: Colors.white,
                                elevation: 0.0,
                            ),*/
                            body: SingleChildScrollView(
                                child: _mainDisplay(),
                            ),
                            /*floatingActionButton:Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                    FloatingActionButton(
                                            onPressed: () {
                                                this._search_isLoading = true;
                                                callShowModalBottomSheet(context);
                                                //_showModalBottomSheetCustom(context);
                                            },
                                            child: Icon(Icons.search),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.blue,
                                      ),
                                  ],
                            )*/
                    )
                );
                break;
            }


            default:
            {
                this._view = SafeArea(
                    child: Scaffold(
                        key: _scaffoldKey,
                        appBar: AppBar(
                          title: Row(
                              children: <Widget>[
                                  //Image.asset('assets/icon.png'),
                                  SizedBox(width: 20),
                                  Text('Home', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0, color: Colors.grey))
                              ]
                          ),
                          backgroundColor: Colors.white,
                          elevation: 0.0,
                        ),
                        body: Container(),
                          /*floatingActionButton:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FloatingActionButton(
                                        onPressed: () {
                                            this._search_isLoading = true;
                                            callShowModalBottomSheet(context);
                                            //_showModalBottomSheetCustom(context);
                                        },
                                        child: Icon(Icons.search),
                                        foregroundColor: Colors.white,
                                        backgroundColor: Colors.blue,
                                  ),
                              ],
                          )*/
                    )
                );
                break;
            }
        }


        return this._view;
    }
    


    @override
    void dispose() {

        super.dispose();
    }


    /*[Methods]*/

    /*
    * @Description: 
    *
    * @param:
    *
    * @return: void
    */
    Widget _mainDisplay() {
        //Variables
        final double deviceHeight = MediaQuery.of(context).size.height;
        final double deviceWidth = MediaQuery.of(context).size.width;

        

        switch(this.mainDisplayState)
        {
            case 0:
            {
                return Container();
                break;
            }

            case 1:
            {
                return Container();
                break;
            }

            case 2:
            {
                return Container(
                    width: deviceWidth,
                    height: deviceHeight,
                    child: Stack(
                        children: <Widget>[
                            Container(
                                color: Colors.blue,
                                height: deviceHeight,
                                width: deviceWidth,
                                child: Image.asset('lib/Projects/Car_Rental_SignIn/Images/city_1127x1920.png',
                                    //width: 150,
                                    //height: deviceHeight,
                                    //scale: 1.0,
                                    fit: BoxFit.fitHeight,
                                ),
                            ),
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                    padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                                    height: deviceHeight * 0.75,
                                    width: deviceWidth,
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: new BorderRadius.only(
                                            topLeft: const Radius.circular(20.0),
                                            topRight: const Radius.circular(20.0)
                                        )
                                    ),
                                    child: Column(
                                        children: <Widget>[
                                            this._emailField,
                                            SizedBox(
                                                height: 20.0,
                                            ),
                                            this._passwordField,
                                            SizedBox(
                                                height: 20.0,
                                            ),
                                            this._buildSignInButton(),             
                                            SizedBox(
                                                height: 30.0,
                                            ),
                                            Text('Forgot password?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.grey[600]), textAlign: TextAlign.left,),
                                            SizedBox(
                                                height: 60.0,
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                    Container(
                                                        child: Row(
                                                            children: <Widget>[
                                                                Image.asset('lib/Projects/Car_Rental_SignIn/Images/facebook.png', width: 25, height: 25, scale: 1.0,),
                                                                SizedBox(
                                                                    width: 15.0,
                                                                ),
                                                                Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.grey[600]), textAlign: TextAlign.left,),
                                                            ],
                                                        ),
                                                    ),
                                                    SizedBox(
                                                        width: 60.0,
                                                    ),
                                                    Container(
                                                        child: Row(
                                                            children: <Widget>[
                                                                Image.asset('lib/Projects/Car_Rental_SignIn/Images/gmail.png', width: 25, height: 25, scale: 1.0,),
                                                                SizedBox(
                                                                    width: 15.0,
                                                                ),
                                                                Text('Sign In', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.grey[600]), textAlign: TextAlign.left,),
                                                            ],
                                                        ),
                                                    )
                                                ],
                                            ),
                                            SizedBox(
                                                height: 60.0,
                                            ),
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                    Text('Don\'t have an account? ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.grey[400]), textAlign: TextAlign.left,),

                                                    Text('Sign Up', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0, color: Colors.grey[600]), textAlign: TextAlign.left,),
                                                ],
                                            ),
                                            SizedBox(
                                                height: 10.0,
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                            Positioned(
                                bottom: (deviceHeight * 0.75) - 25,
                                left: 30.0,
                                child: Container(
                                    //color: Colors.yellow,
                                    height: 75,
                                    width: 150,
                                    child: Image.asset('lib/Projects/Car_Rental_SignIn/Images/Car_900x450.png', width: 150, height: 75, scale: 1.0,),
                                ),
                            )
                        ],
                    ),
                );
                break;
            }

            default:
            {
                return Container();
                break;
            }

        }
    }

    /*
    * @Description: 
    *
    * @param:
    *
    * @return: void
    */
    Widget _pageLoader()
    {
        final double deviceHeight = MediaQuery.of(context).size.height;
        final double deviceWidth = MediaQuery.of(context).size.width;

        if(_page_isLoading)
        {
            return Container(
                height: 2,
                margin: EdgeInsets.only(bottom: 5),
                child: LinearProgressIndicator(
                    backgroundColor: Colors.black,
                ),
            );
        }
        else
        {
            return Container(
                height: 2,
                margin: EdgeInsets.only(bottom: 5)
            );
        }
    }


    Widget _buildEmailTextField()
    {
        //Variables
                    
            
        if(_emailValue==""){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Email',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.grey                 
                    ),
                    //helperText: "*Required",
                    //helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                        gapPadding: 20.0,
                        borderSide: const BorderSide(color: Colors.yellow, width: 4.0),
                    ),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    this._emailValue = value;
                });
            });
        }
        else if(_emailValue!="" && this._emailValue_isValid==false){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                validator: (value){

                },
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Email address',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.red                
                    ),
                    helperText: "A valid email is required",
                    helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.red),
                    //filled: true,
                    //fillColor: Colors.white 
                    border: OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 1.0),
                    ),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    _emailValue = value;
                });
            });
        }
        else if(_emailValue!="" && this._emailValue_isValid==true){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Email address',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.grey                 
                    ),
                    helperText: "*Required",
                    helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.grey),
                    //filled: true,
                    //fillColor: Colors.white 
                    border: OutlineInputBorder(),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    _emailValue = value;
                });
            });
        }
        
    }

    Widget _buildPasswordTextField()
    {
        //Variables
        

        if(_emailValue==""){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Password',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.grey                 
                    ),
                    //helperText: "*Required",
                    //helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    focusedErrorBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                        gapPadding: 20.0,
                        borderSide: const BorderSide(color: Colors.yellow, width: 4.0),
                    ),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    this._emailValue = value;
                });
            });
        }
        else if(_emailValue!="" && this._emailValue_isValid==false){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                validator: (value){

                },
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Email address',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.red                
                    ),
                    helperText: "A valid email is required",
                    helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.red),
                    //filled: true,
                    //fillColor: Colors.white 
                    border: OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red, width: 1.0),
                    ),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    _emailValue = value;
                });
            });
        }
        else if(_emailValue!="" && this._emailValue_isValid==true){
            return TextFormField(
                initialValue: this._emailValue,
                style: new TextStyle(
                  fontSize: 14.0,
                  height: 0.7,
                  color: Colors.grey                  
                ),
                decoration: InputDecoration(
                    //contentPadding: const EdgeInsets.all(20.0),
                    labelText: 'Email address',
                    labelStyle: new TextStyle(
                      fontSize: 14.0,
                      height: 0.7,
                      color: Colors.grey                 
                    ),
                    helperText: "*Required",
                    helperStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 12.0, color: Colors.grey),
                    //filled: true,
                    //fillColor: Colors.white 
                    border: OutlineInputBorder(),
                    //icon: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    /*suffixIcon: GestureDetector(
                        child: Icon(Icons.account_circle, color: theme_attribute.primaryColor),
                    ),*/
                ),
                onChanged: (String value) {
                    setState(() {
                    _emailValue = value;
                });
            });
        }
        
    }
            
            
    Widget _buildSignInButton()
    {
        //Variables
        final double deviceHeight = MediaQuery.of(context).size.height;
        final double deviceWidth = MediaQuery.of(context).size.width;

        return ButtonTheme(
            minWidth: deviceWidth-80,
            height: 50.0,
            child: RaisedButton(
                color: Colors.indigo,
                textColor: Colors.white,
                child: Text("Sign In"),
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(25.0)),
                onPressed: () => (){},
            ),
        );
    }
}
