// సంకటనాశన గణేశస్తోత్రమ్
// నారదౌవాచ :
// ప్రణమ్య శిరసా దేవం , గౌరీపుత్రం వినాయకమ్,
// భక్తావాసం స్మరేన్నిత్యం, ఆయుఃకామార్థసిద్ధయే.
//
// ప్రథమం వక్రతుండం చ, ఏకదంతం ద్వితీయకమ్,
// తృతీయం కృష్ణపింగాక్షం, గజవక్త్రం చతుర్థకమ్.
//
// లంబోదరం పంచమం చ, షష్ఠం వికటమేవ చ,
// సప్తమం విఘ్నరాజం చ, ధూమ్రవర్ణం తథాష్టమమ్.
//
// నవమం ఫాలచంద్రం చ, దశమం తు వినాయకమ్,
// ఏకాదశం గణపతిం, ద్వాదశం తు గజాననమ్.
//
// ద్వాదశ ఈతాని నామాని, త్రిసంధ్యం యః పఠేన్నరః,
// న చ విఘ్నభయం తస్య, సర్వసిద్ధికారకం ప్రభో !
//
// విద్యార్థీ లభతే విద్యాం, దనార్థీ లభతే ధనమ్,
// పుత్రార్థీ లభతే పుత్రాన్, మోక్షార్థీ లభతే గతిమ్.
//
// జపేత్ గణపతిస్తోత్రం, షడ్భిర్మాసైః ఫలం లభేత్,
// సంవత్సరేణ సిద్ధిం చ, లభతే నాత్ర సంశయః.
//
// అష్టభ్యో బ్రాహ్మణేభ్యశ్చ, లిఖిత్వా యః సమర్పయేత్,
// తస్య విద్యా భవేత్ సర్వా, గణేశస్య ప్రసాదతః
//
// ఇతి శ్రీ నారదపురాణే సంకటనాశన గణేశస్తోత్రం సంపూర్ణమ్.

library panchangam;

import 'package:flutter/material.dart';
import 'package:panchangam/widgets/month_with_days_view.dart';

class PanchangamView extends StatefulWidget {
  const PanchangamView({DateTime? selectedDate, super.key});

  @override
  State<StatefulWidget> createState() => _PanchangamState();
}

class _PanchangamState extends State<PanchangamView> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final dateTime = DateTime.now();
        return Container(
          color: Colors.orange,
          constraints: const BoxConstraints.tightFor(width: double.infinity),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Arunachala Shiva!"),
              MonthWithDaysView(dateTime.year, dateTime.month),
            ],
          ),
        );
      },
    );
  }
}
