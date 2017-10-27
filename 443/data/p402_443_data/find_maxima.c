#include<stdio.h>
#include<stdlib.h>

//Programm mit zwei Parametern ausführen, dem kleinsten und dem größten Dateiindex!

void print_numbers(FILE *file, FILE *wfile, double n){
  int i;
  for (i=0; i<27; i++) {
    fgetc(file);
  }
  double max[]={0,0,0};
  double tmp[3];
  fscanf(file,"%lf",&tmp[0]);
  while (fgetc(file)!=EOF) {
    fscanf(file,"%lf",&tmp[1]);
    fgetc(file);
    fscanf(file,"%lf",&tmp[2]);
    fgetc(file);
    if (tmp[1]>max[1]) {
      max[0]=tmp[0];
      max[1]=tmp[1];
      max[2]=tmp[2];
    }
    fscanf(file,"%lf",&tmp[0]);
  }
  fprintf(wfile, "%lf   %lf   %lf\n",n,max[1],max[2]);
}

int main(int argc, char *argv[]){
  char filename[]="print_000.csv";
  int i;
  FILE *file;
  FILE *wfile;
  wfile=fopen("maxima.txt","a+");
  fprintf(wfile,"A_len/mus    Ampl/V   In-Phase/V\n");
  for (i=atoi(argv[1]); i<=atoi(argv[2]); i++){
    filename[6]=0x30+i/100;
    filename[7]=0x30+i/10;
    filename[8]=0x30+i%10;
    file=fopen(filename,"r+");
    print_numbers(file,wfile,0.5*(i-atoi(argv[1])+1));
    fclose(file);
  }
  fclose(wfile);
}
