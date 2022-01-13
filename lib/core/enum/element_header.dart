enum ElementHeader {
  BarElements,
  OverlayElements,
  ControlElements,
  ViewElements,
  ImageElements
}

extension ElementHeaderStrings on ElementHeader{
  String get headerString {

    switch(this){
  
      case ElementHeader.BarElements:
        return "barElements";
        
      case ElementHeader.OverlayElements:
        return "overlayElements";
        
      case ElementHeader.ControlElements:
        return "controlElements";
        
      case ElementHeader.ViewElements:
        return "viewElements";
        
      case ElementHeader.ImageElements:
        return "imageElements";
        
    }}
}