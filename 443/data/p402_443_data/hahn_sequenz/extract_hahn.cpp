#define __USE_MINGW_ANSI_STDIO 0
#include<iostream>
#include<fstream>
#include<sstream>
#include<string>
#include<math.h>

using namespace std;

double gety(string& line){
	stringstream ss;
	ss << line;
	double a,b;
	ss >> a >> b;
	return b;
}

double getx(string& line){
	stringstream ss;
	ss << line;
	double a,b;
	ss >> a >> b;
	return a;
}

void dofile(int num){
	string readfile = "print_";
	readfile += (num<100?"0":"") + to_string(num) + ".csv";
	string writefile = "edit_" + to_string(num) + ".dat";
	string plotfile = "plot_" + to_string(num) + ".png";
	ifstream fin(readfile);
	if(!fin.is_open()){
		cerr << readfile << " not found!" << endl;
		return;
	}
	ofstream fout(writefile);
		
	double y_max=-1000;
	double x_max;
	double sumyy = 0;
	double sumy = 0;
	double n = 50;
	
	string line;
	fin >> line;
	fin >> line;
	//cout << line << endl;
	int i=-1;
	do{
		i++;
		fin >> line;
		
		for(int i=0;i<line.length();i++){
			if(line[i] == ','){
				line[i] = '\t';
			}
		}
		fout << line << endl;
		double x = getx(line);
		double y = gety(line);
		if(x>0.01 && y>y_max){
			y_max = y;
			x_max = x;
		}
		if(i<n){
			sumyy+=y*y;
			sumy += y;
		}
	}while(!fin.eof());
	fin.close();
	fout.close();
	
	double my = sumy/n;
	double sy = sqrt((sumyy-my*my)/(n-1));
	
	cout << num << "\t" << (y_max-my) << "\t" << sy << "\t" << y_max << "\t" << my << endl;
	
	//cout << "set output \"" << plotfile << "\"" << endl;
	//cout << "plot \"" << writefile << "\" using 1:2 notitle lt rgb \"black\"" << endl;
}


int main(){
	for(int i=141;i<=154;i++){
		dofile(i);
	}
	
	return 0;
}
