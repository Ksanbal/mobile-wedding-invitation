import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:mobile_wedding_invitation/core/theme/app_palette.dart';
import 'package:mobile_wedding_invitation/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MoneyCard extends StatelessWidget {
  final String title;
  final String bankName;
  final String bankAccount;
  final String? kakaoCode;

  const MoneyCard({
    super.key,
    required this.title,
    required this.bankName,
    required this.bankAccount,
    required this.kakaoCode,
  });

  Widget _buildButton({
    required VoidCallback onPressed,
    required Color color,
    required Widget child,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 35,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: color),
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 10,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$bankName $bankAccount',
                      style: TextStyle(color: Colors.white, fontSize: 16.0),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () async {
                  await Clipboard.setData(ClipboardData(text: '$bankName $bankAccount'));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('복사되었습니다!')));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.copy, color: AppPalette.black, size: 14),
                      Text("복사하기", style: TextStyle(fontSize: 14)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              _buildButton(
                onPressed: () {
                  launchUrlString(
                    'supertoss://send?amount=0만&bank=$bankName&accountNo=$bankAccount',
                  );
                },
                color: Colors.white,
                child: Assets.icons.tossPng.image(),
              ),
              if (kakaoCode != null) ...[
                Gap(10),
                _buildButton(
                  onPressed: () {
                    launchUrlString('https://qr.kakaopay.com/$kakaoCode');
                  },
                  color: Color(0xffFFE000),
                  child: Assets.icons.kakaopay.svg(),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
