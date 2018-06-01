#include<iostream>
#include<vector>

using namespace std;

const int NUM = 8192;

const int BINSIZE = 10;

vector<double> data(NUM);

int main(){
	
	for(int i=0;i<NUM;i++){
		cin>> data[i];
	}
	
	int BINS = (NUM+BINSIZE-1)/BINSIZE;
	
	for(int i=0;i<BINS;i++){
		double sum = 0;
		for(int j=0;j<BINSIZE && i*BINSIZE+j<NUM;j++){
			sum += data[i*BINSIZE+j];
		}
		cout << sum / BINSIZE << endl;
	}
	
	return 0;
}
