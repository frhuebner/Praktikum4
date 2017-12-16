#include<iostream>
#include<math.h>
#include<vector>
#include<map>
#include<algorithm>

using namespace std;

int millermax = 8;

double abso(double a){
	if(a<0) return -a;
	return a; 
}

vector<vector<double> > xs;


double dofind(double l, bool print){
	double sumdiff=0;
	for(int i=0;i<87;i++){
		vector<double> x = xs[i];
		
		x[2] = sqrt(x[0]*x[0] + x[1]*x[1] + l*l)-l;
		
		for(int j=0;j<3;j++){
			x[j] = abso(x[j]);
		}
		vector<double> xcopy = x;
		vector<int> newpos(3,-1);
		sort(x.begin(),x.end());
		for(int j=0;j<3;j++){
			for(int k=0;k<3;k++){
				//if(i==38) cout << "\t" << x[j] << "\t" << xcopy[k] << endl;
				if(abso(x[j]-xcopy[k])<0.0001){
					newpos[k] = j;
					break;
				}
			}
		}
		double mindiff = 1000;
		vector<int> minh(3);
		vector<int> h(3);
		for(h[0] = 0;h[0]<millermax;h[0]+=1){
			for(h[1] = (h[0]==0?2:h[0]);h[1]<millermax;h[1]+=2){
				for(h[2] = h[1];h[2]<millermax;h[2]+=2){
					double diff = pow((x[0]/x[1]-(h[0]+0.0)/h[1])/*/(x[0]/x[1]+(h[0]+0.0)/h[1])*/,2) + pow((x[1]/x[2]-(h[1]+0.0)/h[2])/*/(x[1]/x[2]+(h[1]+0.0)/h[2])*/,2) + pow((x[0]/x[2]-(h[0]+0.0)/h[2])/*/(x[0]/x[2]+(h[0]+0.0)/h[2])*/,2);
					/*if(h[0] == 0){
						double x_ = sqrt(x[1]*x[1] + l*l)-l;
						if(i==35) cout << "x_ \t " << x_ << endl;
						diff = pow((x[0]/x_-(h[0]+0.0)/h[1])/(x[0]/x_+(h[0]+0.0)/h[1]),2) + pow((x_/x[2]-(h[1]+0.0)/h[2])/(x_/x[2]+(h[1]+0.0)/h[2]),2) + pow((x[0]/x[2]-(h[0]+0.0)/h[2])/(x[0]/x[2]+(h[0]+0.0)/h[2]),2);
					}*/
					if(diff < mindiff){
						mindiff = diff;
						minh = h;
					}
					/*if(i==38){
						cout << "diff\t" << h[0] << "\t" << h[1] << "\t" << h[2] << "\t" << diff << endl;
					}*/	
				}	
			}
		}
		/*if(i==38){
			cout << "orig\t" <<  newpos[0] << "\t" << newpos[1] << "\t" << newpos[2] << endl;
			cout << "\t" << minh[0] << "\t" << minh[1] << "\t" << minh[2] << endl;
		}*/
		cin.get();
		sumdiff += mindiff;
		if(print){
			cout << (i+1) << "\t" << minh[newpos[0]] << "\t" << minh[newpos[1]] << "\t" << minh[newpos[2]] << "\t" << mindiff << endl;
		}
	}
	return sumdiff;
}

int main(){
	string line;
	cin >> line >> line >> line;
	for(int i=0;i<87;i++){
		vector<double> x(3);
		for(int i=0;i<3;i++){
			cin >> x[i];
		}
		xs.push_back(x);
	}
	/*double best = 10000000;
	for(double l = 0;l<=20;l+=0.1){
		double d = dofind(l,false);
		cout << l << "\t" << d << endl;
		if(best > d) best = d;
	}*/
	dofind(15,true);
}
