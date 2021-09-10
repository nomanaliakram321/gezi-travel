import 'package:flutter/material.dart';

final Color constGreen = Color(0xFF709E94);
final Color constLightgrey = Color(0xFFC6C6C6);
final Color constLighterGrey = Colors.grey.shade200;
final Color constDarkgrey = Color(0xFF757575);

final Color constDark = Color(0xFF323643);
final String description =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  ';
final String profileUrl2 =
    'https://yandex-images.clstorage.net/mF5YQ6088/9b5a59T7/QK0hSI50MF-XWKQEU5y8He2mmeFOOXkrwweijWmcjUlBkC8aF_MgKA7hhg6cn2sIUgD8ikO8M7sAck02APug3rWNEZlKAQBrlm3kgTMJee5eBQ8TjZrO-cSFoCks7FgMAAFfH2Ilw5w4ckFb2R2vXhQ0rq-GGdfM5BRNJSU7Up0QvlUOvRXR-FXYhLMgbFwsjNdPQtx7PkpV9iAYP_xKfyLHbx_R91PI-HKh-ItPf36HRU8fF2tHnZfF_cQkCIKtwa62DJyXAjtU6Tej4l_unuy3_xGe2U7pBZYCim2ce-zDBX_-g2dAC2uy8EpbfX1PtSY_3MdrNMyXN1-GFntwLaEcdW7t93LpJTiUEzDOjH09Fz_BXKpfGfQ1cdsenhtO85U9zWOnAqgYwNC7az_dLAe1zixGO8f9ZdUMVCXLMw-AD5V8H2XhCDYa5ULC_D3vzGXcc55bbasGlpCI3t-YfTGULV_jV1C42yLB2Bl_jz3UVq5-5lvkHNV1_fUlyRK-kz3mHA_V8eg2OubzwV2fjM_knqCsiM0YVCQQ6d6dGxyx9RwfYNcT6Eniw-ubLGwud5UuXSa5xM9W5Z9XNasAbtCuxo0Nl8Mrt8r0kGBc_N6uVl_irlktSBTHIqqsTFlt0rcuPQLHMvk5oMJaao3vPneHDK00CDXcFHUtx-f7QQ8zrFUvbQbBCxVK5UOBDZ19nYZeo56bn2hUNLL5nM36LEEFrZ1zpHKYWCEwmXkPfu1EFJ8-5uuW_2WWDWTk6LB_op7nzo9mMVrn2vdww47cHc3lbbPuW68aB8ewKe-uip4wBcyto3VQWmvCsHm5bs6_ZCXc7ZXpV_zEJ70mJfnDD3Ltprzv5uNZZwi0IAF8Te--pi2DnItdyeeVgJv9XHhc88f8f9LkkDk5oxO4el-9f5YlPo7UO5bcpGf_N9X64DyQfUS-TkcB2AUZxGPgXl597mV_I_w4T7j05RI4rb2Jc';
final String profileUrl =
    'https://cdn.shopify.com/s/files/1/0097/9048/8657/files/member-2_600x.png?v=1561979651';

class WidgetButton extends StatelessWidget {
  final String text;
  final Function onpress;
  final BorderRadius radius;
  final Color color;
  final Color textColor;
  final Color borderColor;
  const WidgetButton({
    Key key,
    this.borderColor,
    this.onpress,
    this.color,
    this.radius,
    this.textColor,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onpress,
          child: Container(
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(color: borderColor, width: 2),
                borderRadius: BorderRadius.circular(10),
                color: color),
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 14, color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class ButtonWidget extends StatelessWidget {
  final String text;
  final Widget container;
  final Color textColor;
  final IconData icon;
  final Function onPress;
  const ButtonWidget({
    this.icon,
    this.textColor,
    this.container,
    this.onPress,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shadowColor: Colors.grey.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.only(bottom: 8, top: 8, left: 8, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon == null
                  ? Padding(padding: EdgeInsets.zero)
                  : Icon(
                      icon,
                      color: Colors.grey.shade600,
                      size: 24,
                    ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  child: Text(
                    text,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: textColor == null ? constDark : textColor),
                  ),
                ),
              ),
              Container(
                child: container,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PasswordWidget extends StatelessWidget {
  final String text;
  final Widget container;
  final Color textColor;
  final IconData icon;
  final Function onPress;
  const PasswordWidget({
    this.icon,
    this.textColor,
    this.container,
    this.onPress,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shadowColor: Colors.grey.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.only(bottom: 2, top: 2, left: 8, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: textColor == null ? constDark : textColor),
                )),
              ),
            ),
            Container(
              child: container,
            )
          ],
        ),
      ),
    );
  }
}
