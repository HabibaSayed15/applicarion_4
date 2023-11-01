import 'package:bmi/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CounterCubit extends Cubit<BmiCounter>{
  

  
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  CounterCubit(super.InitialState); 
   int counter = 63;
  int counter2 = 160;
  double result = 0;
   void add(){
    counter++;
    emit(UpdatState());
   }
    void remove(){
    counter--;
    emit(UpdatState());
   }
    void add1(){
    counter2++;
    emit(UpdatState());
   }
    void remove1(){
    counter2--;
    emit(UpdatState());
   }
   double resultcal(){
    result =((counter / (counter2 * counter2)) * 10000);
               // result=result.toStringAsFixed(2) as double;
                emit(ResultState());
    return result ;
    
   }
}


