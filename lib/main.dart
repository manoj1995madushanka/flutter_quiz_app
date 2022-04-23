import 'package:flutter/material.dart';

void addNumbers(int a,int b){
  print("sum = ${a+b}");
}

void main() {
  for(int i=0;i<5;i++){
    print('hello ${i+1}');
  }
  addNumbers(2, 2);
}