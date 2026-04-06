import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/themes/radius.dart';
import '/themes/spacing.dart';
import '/themes/typography.dart';
import '/widgets/call_to_action.dart';
import '/widgets/navbar.dart';
import '/widgets/footer.dart';
import '/l10n/app_localizations.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final whyWeExistReasons = Reasons(
      title: l10n.aboutWhyWeExistTitle,
      items: [
        Reason(
          title: l10n.aboutWhyWeExistReason1Title,
          description: l10n.aboutWhyWeExistReason1Description,
        ),
        Reason(
          title: l10n.aboutWhyWeExistReason2Title,
          description: l10n.aboutWhyWeExistReason2Description,
        ),
        Reason(
          title: l10n.aboutWhyWeExistReason3Title,
          description: l10n.aboutWhyWeExistReason3Description,
        ),
      ],
    );

    final foodPhilosophyReasons = Reasons(
      title: l10n.aboutFoodPhilosophyTitle,
      items: [
        Reason(
          title: l10n.aboutFoodPhilosophyReason1Title,
          description: l10n.aboutFoodPhilosophyReason1Description,
        ),
        Reason(
          title: l10n.aboutFoodPhilosophyReason2Title,
          description: l10n.aboutFoodPhilosophyReason2Description,
        ),
        Reason(
          title: l10n.aboutFoodPhilosophyReason3Title,
          description: l10n.aboutFoodPhilosophyReason3Description,
        ),
        Reason(
          title: l10n.aboutFoodPhilosophyReason4Title,
          description: l10n.aboutFoodPhilosophyReason4Description,
        ),
      ],
    );

    final beyondPlateSection = BeyondPlateSection(
      title: l10n.aboutBeyondPlateTitle,
      intro: l10n.aboutBeyondPlateIntro,
      points: [
        l10n.aboutBeyondPlatePoint1,
        l10n.aboutBeyondPlatePoint2,
        l10n.aboutBeyondPlatePoint3,
      ],
      imagePath: "assets/images/front-view-family-having-fun-while-preparing-food.png",
    );

    return Scaffold(
      appBar: const AppNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: AppSpacing.spacing600, left: AppSpacing.spacing200, right: AppSpacing.spacing200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: AppSpacing.spacing200),
                child: Text(
                  l10n.aboutHeadline,
                  style: AppTypography.preset1Mobile,
                ),
              ),
              Text(
                l10n.aboutIntro,
                style: AppTypography.preset6,
              ),
              Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing200),
                child: Text(
                  l10n.aboutIntroExtended,
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
              const Padding(
                padding: EdgeInsets.only(top: AppSpacing.spacing400),
                child: AppFooter(),
              ),
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

