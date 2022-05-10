import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CongratsWidget extends StatefulWidget {
  const CongratsWidget({Key key}) : super(key: key);

  @override
  _CongratsWidgetState createState() => _CongratsWidgetState();
}

class _CongratsWidgetState extends State<CongratsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets10.lottiefiles.com/packages/lf20_xlkxtmul.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                  frameRate: FrameRate(60),
                  repeat: false,
                  animate: true,
                ),
              ],
            ),
          ),
          Text(
            FFLocalizations.of(context).getText(
              'w048f900' /* Congrats! */,
            ),
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Text(
              FFLocalizations.of(context).getText(
                'f7qai3na' /* Thanks for your purchase. */,
              ),
              style: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: NavBarPage(initialPage: 'HomePage'),
                  ),
                );
              },
              text: FFLocalizations.of(context).getText(
                'ptyrqfjw' /* Go Home */,
              ),
              options: FFButtonOptions(
                width: 130,
                height: 50,
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
                borderRadius: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
