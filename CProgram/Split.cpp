#include <iostream>
using namespace std;
char str[111];
int main() {
	freopen("Index2.txt","r",stdin); 
	freopen("Index2Temp.txt","w",stdout); 
	while(scanf("%s",str)>0){
		for(int i=0,j=1;j<=4;i+=2,j+=1) printf("%c%c ",str[i],str[i+1]);
		printf("\n");
	}
	return 0;
}          
