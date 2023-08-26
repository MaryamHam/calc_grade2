import 'dart:io';

void main(){

List <double> degrees = [];


double total = 0;

for (var i = 0; i<5; i++){
  print("Enter your degree ");
  //null safety 
  double degree = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  degrees.add(degree);

  //calculate total degrees
  total += degree;
}

//calculate percentage
double per = total / 5;
calcGrade(per);


}

//function to determine grade
void calcGrade(double per){
if (per >=90){
  print("your grade A");
}else if ( per >= 80 && per <90){
  print("your grade B");
}
else if ( per >= 70 && per <80){
  print("your grade C");
}else if ( per >= 60 && per <70){
  print("your grade D");
}else{
    print("fail");
} 

}