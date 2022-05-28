// ignore_for_file: file_names

import 'dart:developer';

import 'package:counterapp/darktheme.dart';
import 'package:flutter/material.dart';

class Controller{

int counter = 0; 
void increment(){
counter++;

}
void decrement(){
 counter--;
}
void reset(){
  counter=0;
}



}
