import 'package:flutter/material.dart';

class Boat {
  final String name;
  final String boatBest;
  final Color color;

  Boat({required this.name, required this.boatBest, required this.color});

  String getHash() => name + boatBest;
}

List<Boat> listBoat = [
  //BLU
  Boat(name: '1XSM', boatBest: '06:33', color: Colors.blue.shade500),
  Boat(name: '2XSM', boatBest: '06:01', color: Colors.blue.shade500),
  Boat(name: '4XSM', boatBest: '05:33', color: Colors.blue.shade500),
  Boat(name: '2-SM', boatBest: '06:11', color: Colors.blue.shade500),
  Boat(name: '4-SM', boatBest: '05:40', color: Colors.blue.shade500),
  Boat(name: '8+SM', boatBest: '05:21', color: Colors.blue.shade500),
  //BLU CHIARO
  Boat(name: '1XPLM', boatBest: '06:43', color: Colors.blue.shade200),
  Boat(name: '2XPLM', boatBest: '06:07', color: Colors.blue.shade200),
  Boat(name: '4XPLM', boatBest: '05:42', color: Colors.blue.shade200),
  Boat(name: '2-PLM', boatBest: '06:23', color: Colors.blue.shade200),
  //ROSA
  Boat(name: '1XSF', boatBest: '07:10', color: Colors.pink.shade400),
  Boat(name: '2XSF', boatBest: '06:39', color: Colors.pink.shade400),
  Boat(name: '4XSF', boatBest: '06:07', color: Colors.pink.shade400),
  Boat(name: '2-SF', boatBest: '06:49', color: Colors.pink.shade400),
  Boat(name: '4-SF', boatBest: '06:16', color: Colors.pink.shade400),
  Boat(name: '8+SF', boatBest: '05:55', color: Colors.pink.shade400),
  //ROSA CHIARO
  Boat(name: '1XPLF', boatBest: '07:26', color: Colors.pink.shade200),
  Boat(name: '2XPLF', boatBest: '06:44', color: Colors.pink.shade200),
  Boat(name: '4XPLF', boatBest: '06:15', color: Colors.pink.shade200),
  Boat(name: '2-PLF', boatBest: '07:17', color: Colors.pink.shade200),
  //ARC
  Boat(name: 'RSM', boatBest: '05:37', color: Colors.blue.shade500),
  Boat(name: 'RPLM', boatBest: '05:56', color: Colors.blue.shade200),
  Boat(name: 'RSF', boatBest: '06:28', color: Colors.pink.shade400),
  Boat(name: 'RPLF', boatBest: '06:54', color: Colors.pink.shade200),
];
