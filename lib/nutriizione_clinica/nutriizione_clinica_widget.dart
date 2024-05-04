import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nutriizione_clinica_model.dart';
export 'nutriizione_clinica_model.dart';

class NutriizioneClinicaWidget extends StatefulWidget {
  const NutriizioneClinicaWidget({super.key});

  @override
  State<NutriizioneClinicaWidget> createState() =>
      _NutriizioneClinicaWidgetState();
}

class _NutriizioneClinicaWidgetState extends State<NutriizioneClinicaWidget> {
  late NutriizioneClinicaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NutriizioneClinicaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.chevron_left_sharp,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/Opera_logo.png',
                    height: 38.0,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment(0.0, 0.0),
                  ),
                ),
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
            titlePadding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          ),
          elevation: 2.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              'assets/images/AdobeStock_737634603_Preview.jpeg',
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 230.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nutrizione Clinica',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'Lipodim+ | Melito | Colesolv | Cardepat',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              Text(
                                '#sindromemetabolica #ipercolesterolemia #insulinoresistenza #diabetegestazionale #ipertrigliceridemia',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Inter',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                              Divider(
                                height: 32.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: FlutterFlowPdfViewer(
                    assetPath: 'assets/pdfs/MELITO_-_Scheda_ISF_ed._2024.pdf',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    horizontalScroll: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
