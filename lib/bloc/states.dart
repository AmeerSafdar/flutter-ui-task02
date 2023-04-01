class StateChanged {
  StateChanged({this.slideevalue = true, this.isColorChanged = true});

  bool slideevalue;
  bool isColorChanged;

  StateChanged copyWith({bool? slideevalue, bool? isColorChanged}) {
    return StateChanged(
      slideevalue: slideevalue ?? this.slideevalue,
      isColorChanged: isColorChanged ?? this.isColorChanged,
    );
  }
}
