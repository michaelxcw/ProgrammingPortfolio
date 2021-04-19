public class Box{
  // Member Variables
  int l, w, h;

  // Constructor
  public Box(int l, int w, int h){
    this.l = l;
    this.w = w;
    this.h = h;
  }

  // Member Methods
  int calcVol() {
    int v = 0;
    v = l * w * h;
    return v;
  }

  int calcSurf() {
    int s = 0;
    s = (l*w + w*h + h*l) * 2;
    return s;
  }
}