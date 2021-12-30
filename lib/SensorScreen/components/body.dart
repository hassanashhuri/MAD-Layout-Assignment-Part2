import 'package:flutter/material.dart';
import 'package:smart_home/SensorScreen/components/custom_card.dart';
import '../../constants.dart';

class SensorScreenBody_1 extends StatefulWidget {
  @override
  _SensorScreenBodyState createState() => _SensorScreenBodyState();
}

class _SensorScreenBodyState extends State<SensorScreenBody_1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: kDarkGreyColor,
                ),
                Text(
                  'My Home',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: size.height * 0.045,
                  width: size.width * 0.095,
                  decoration: BoxDecoration(
                    color: kBgColor,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.notifications_none,
                    color: kDarkGreyColor,
                  ),
                )
              ],
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.home_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "DOOR",
                  statusOn: "OPEN",
                  statusOff: "LOCKED",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.lightbulb_outline,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "LIGHTS",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.ac_unit_outlined,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "AIRCOND",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.add_alert_sharp,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "ALARM",
                  statusOn: "ACTIVE",
                  statusOff: "DEACTIVE",
                ),
              ],
            ),
            SizedBox(height: size.height * 0.025),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.tv_rounded,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "TV",
                  statusOn: "ON",
                  statusOff: "OFF",
                ),
                CustomCard(
                  size: size,
                  icon: Icon(
                    Icons.fence_sharp,
                    size: 55,
                    color: Colors.grey.shade400,
                  ),
                  title: "ENTRY GATE",
                  statusOn: "OPEN",
                  statusOff: "CLOSE",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
