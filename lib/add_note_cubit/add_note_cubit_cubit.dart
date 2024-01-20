import 'package:bloc/bloc.dart';
import 'package:easy_note/constans.dart';
import 'package:easy_note/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  addNote(NoteModeel note) async {
    emit(AddNoteCubitLoading());

    try {
      emit(AddNoteCubitSucces());
      var noteBox = Hive.box(knotebox);
      await noteBox.add(note);
    } catch (e) {
      AddNoteCubitFailure(reeMessafe: e.toString());
    }
  }
}
