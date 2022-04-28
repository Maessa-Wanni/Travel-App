import 'package:equatable/equatable.dart';
import 'package:travel_app/model/data_model.dart';
import 'package:travel_app/services/data_services.dart';

abstract class CubitStates extends Equatable{

}

class InitialState extends CubitStates{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}

class WelcomeState extends CubitStates{
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates{
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class LoadedState extends CubitStates{

  final List<DataModel> places;
  LoadedState(this.places);

  @override
  // TODO: implement props
  List<Object> get props => [places];

}


class DetailState extends CubitStates{

  final DataModel place;
  DetailState(this.place);

  @override
  // TODO: implement props
  List<Object> get props => [place];

}