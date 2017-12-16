#include<iostream>
#include<math.h>
#include<vector>
#include<map>
#include<algorithm>
#include<cstdlib>
#include<fstream>

using namespace std;

ostream& operator<<(ostream& o, vector<double> v){
	for(int i=0;i<v.size();i++){
		o << v[i] << "\t";
	}
	return o;
}

vector<double> operator*(double a, vector<double> v){
	for(int i=0;i<v.size();i++){
		v[i]*=a;
	}
	return v;
}

vector<double> operator-(vector<double> v, vector<double> w){
	for(int i=0;i<v.size();i++){
		v[i]-=w[i];
	}
	return v;
}

double operator*(vector<double> v, vector<double> w){
	double sum = 0;
	for(int i=0;i<v.size();i++){
		sum += v[i]*w[i];
	}
	return sum;
}

int millermax = 6;

double abso(double a){
	if(a<0) return -a;
	return a; 
}

vector<vector<double> > xs;

vector<vector<double> > rezi(87,vector<double>(0));
vector<double> rezidiffsq(87,-1);
vector<double> rezialpha(87,-1);

double match(vector<double> pos, double alpha, int l){
	double best = 10000;
	int besti = 0;
	for(int i=0;i<xs.size();i++){
		vector<double> x = xs[i];
		vector<double> diff = x-(alpha*pos);
		double distsq = diff*diff;
		//cout << "\t\t\t" << i << "\t" << sqrt(distsq) << endl;
		if(distsq < best){
			best = distsq;
			besti = i;
		}
	}
	if(best > 100) return 0;
	if(best > 10) return best;
	if(rezidiffsq[besti] == -1){
		rezi[besti] = {pos[0], pos[1], l};
		rezidiffsq[besti] = best;
		rezialpha[besti] = alpha;
		cout << "set\t" << besti << "\t" << pos << "\t" << best << endl;
	}else{
		cout << "double " << besti << "\t" << pos << "\t" << best << endl;
		if(rezidiffsq[besti] > best){
			rezi[besti] = {pos[0], pos[1], l};
			rezidiffsq[besti] = best;
			rezialpha[besti] = alpha;
			cout << "update" << endl;
		}
	}
	return best;
}

double dofind(double l0){
	double sum = 0;
	for(int l=1;l<=millermax;l++){
		for(int k=-millermax+(l%2);k<=millermax;k+=2){
			for(int h=-millermax+(l%2);h<=millermax;h+=2){
				if(k*k+h*h==l*l) continue;
				double alpha = (2*l*l0)/(k*k+h*h-l*l);
				if(alpha < 0) continue;
				vector<double> pos = {h,k};
				sum += match(pos, alpha,l);
				//cout << "\t\t\t" << pos << "\t" << l << "\t" << alpha << endl;
				//cout << "\t\t\tlook\t" << (alpha*pos) << endl;
				//cin.get();
			}
		}
	}
	return sum;
}

int main(){
	string line;
	ifstream fin("laue_ratio.txt");
	fin >> line >> line >> line;
	for(int i=0;i<87;i++){
		vector<double> x(2);
		for(int i=0;i<2;i++){
			fin >> x[i];
		}
		fin >> line;
		xs.push_back(x);
	}
	/*double best = 10000000;
	for(double l = 5;l<=20;l+=0.1){
		double d = dofind(l);
		cout << l << "\t" << d << endl;
		if(best > d) best = d;
	}*/
	dofind(10);
	cout << endl;
	for(int i=0;i<xs.size();i++){
		cout << i << "\t" << rezi[i] << (rezialpha[i]*rezi[i]) << endl;
	}
	
	ofstream fout("miller.txt");
	for(int i=0;i<xs.size();i++){
		fout << i << "\t" << rezi[i] << (rezialpha[i]*rezi[i]) << endl;
	}
	fout.close();
}
