import './../../utils/app_urls.dart';

class ReuseableElevatedbutton extends StatelessWidget {
  const ReuseableElevatedbutton(
      {super.key, required this.buttonName, this.onPressed, this.width = double.infinity, this.color = Colors.black, this.margin, this.textColor = Colors.white, this.padding});

  final String buttonName;
  final VoidCallback? onPressed;
  final double width;
  final Color color;
  final EdgeInsets? margin;
  final Color textColor;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 35,
      padding: padding,
      margin: margin ?? const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: color,
      ),
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Center(child: Text(buttonName, style: TextStyle(fontFamily: "Manrope", fontSize: 16, fontWeight: FontWeight.w500, color: textColor),))
      ),
    );
  }
}

