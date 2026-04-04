import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/themes/radius.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/call_to_action.dart';

const Reasons foodPhilosophyReasons = Reasons(
  title: "Our food philosophy",
  items: [
    Reason(
      title: "Whole ingredients first.",
      description:
          "Fresh produce, grains, legumes, herbs, and quality fats form the backbone of every recipe.",
    ),
    Reason(
      title: "Flavor without compromise.",
      description:
          "Spices, citrus, and natural sweetness replace excess salt, sugar, and additives.",
    ),
    Reason(
      title: "Respect for time.",
      description:
          "Weeknight meals should slot into real schedules; weekend cooking can be leisurely but never wasteful.",
    ),
    Reason(
      title: "Sustainable choices.",
      description:
          "Short ingredient lists cut down on food waste and carbon footprint, while plant-forward dishes keep things planet-friendly.",
    ),
  ],
);

const Reasons whyWeExistReasons = Reasons(
  title: "Why we exist",
  items: [
    Reason(
      title: "Cut through the noise.",
      description:
          "The internet is bursting with recipes, yet most busy cooks still default to take-away or packaged foods. We curate a tight collection of fool-proof dishes so you can skip the scrolling and start cooking.",
    ),
    Reason(
      title: "Empower home kitchens.",
      description:
          "When you control what goes into your meals, you control how you feel. Every recipe is built around unrefined ingredients and ready in about half an hour of active prep.",
    ),
    Reason(
      title: "Make healthy look good.",
      description:
          "High-resolution imagery shows you exactly what success looks like—because we eat with our eyes first, and confidence matters.",
    ),
  ],
);

const BeyondPlateSection beyondPlateSection = BeyondPlateSection(
  title: "Beyond the plate",
  intro:
      "We believe food is a catalyst for community and well-being. By sharing approachable recipes, we hope to:",
  points: [
    "Encourage family dinners and social cooking.",
    "Reduce reliance on single-use packaging and delivery waste.",
    "Spark curiosity about seasonal produce and local agriculture.",
  ],
  imagePath: "assets/images/front-view-family-having-fun-while-preparing-food.png",
);

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing600, left: AppSpacing.spacing200, right: AppSpacing.spacing200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.spacing200),
                child: Text(
                  "Help more people cook nourishing meals, more often.",
                  style: AppTypography.preset1Mobile,
                ),
              ),
              Text(
                "Healthy Recipe Finder was created to prove that healthy eating can be convenient, affordable, and genuinely delicious.",
                style: AppTypography.preset6,
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing200),
                child: Text(
                  "We showcase quick, whole-food dishes that anyone can master—no fancy equipment, no ultra-processed shortcuts—just honest ingredients and straightforward steps.",
                  style: AppTypography.preset6,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing500, bottom: AppSpacing.spacing800),
                child: Image.asset("assets/images/woman-cutting-carrots.png"),
              ),
              whyWeExistReasons,
              foodPhilosophyReasons,
              beyondPlateSection,
              CallToAction(),
          ],
        ),
        ),

      ),
    );
  }
}

class Reason extends StatelessWidget {
  final String _title;
  final String _description;

  const Reason({super.key, required String title, required String description}) : _title = title, _description = description;

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: AppSpacing.spacing250),
            child: SvgPicture.asset("assets/images/icons/Arrow - Right.svg"),
          ),
          Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_title, style: AppTypography.preset4,),
                Padding(padding: EdgeInsets.only(top: AppSpacing.spacing150)),
                Text(_description, style: AppTypography.preset6),
              ],
            )
          )
        ],  
      );
  }
}

class Reasons extends StatelessWidget {
  final List<Reason> items;
  final String _title;

  const Reasons({super.key, required this.items, required String title}) : _title = title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.spacing600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            style: AppTypography.preset2Mobile,
            textAlign: TextAlign.left,
          ),

          ...items.map(
            (reason) => Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing300),
              child: reason,
            ),
          ),
        ],
      ),
    );
  }
}

class BeyondPlateSection extends StatelessWidget {
  final String _title;
  final String _intro;
  final List<String> _points;
  final String _imagePath;

  const BeyondPlateSection({
    super.key,
    required String title,
    required String intro,
    required List<String> points,
    required String imagePath,
  }) : _title = title,
       _intro = intro,
       _points = points,
       _imagePath = imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.spacing600),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(_title, style: AppTypography.preset2Mobile),
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.spacing300),
            child: Text(_intro, style: AppTypography.preset6),
          ),
          ..._points.map(
            (point) => Padding(
              padding: EdgeInsets.only(top: AppSpacing.spacing150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("•", style: AppTypography.preset6),
                  SizedBox(width: AppSpacing.spacing150),
                  Expanded(child: Text(point, style: AppTypography.preset6)),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: AppSpacing.spacing400),
            child: ClipRRect(
              borderRadius: BorderRadius.all(AppRadius.radius12),
              child: Image.asset(
                _imagePath,
                width: double.infinity,
                height: 260,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

