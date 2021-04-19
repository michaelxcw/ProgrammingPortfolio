public class Pyr{
  // Member Variables
  int l, w, h;

  // Constructor
  public Pyr(int l, int w, int h){
    this.l = l;
    this.w = w;
    this.h = h;
  }

  // Member Methods
  int calcVol() {
    int v = 0;
    v = (l * w * h)/3;
    return v;
  }
}