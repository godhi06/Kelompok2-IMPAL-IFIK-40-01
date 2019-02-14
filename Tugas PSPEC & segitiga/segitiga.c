#include<stdio.h>

int main(){
    float a, b, c;
    float d, e, f;

    printf("Panjang sisi 1 : ");scanf("%f",&a);
    printf("Panjang sisi 2 : ");scanf("%f",&b);
    printf("Panjang sisi 3 : ");scanf("%f",&c);

    ///urutkan sisi-sisi segitiga dari besar ke kecil
    if(a>b){
        if(b>c){
            d=a;e=b;f=c;
        }else{
            if(a>c){
                d=a;e=c;f=b;
            }else{
                d=c;e=a;f=b;
            }
        }
    }else{
        if(b>c){
            if(a>c){
                d=b;e=a;f=c;
            }else{
                d=b;e=c;f=a;
            }
        }else{
            if(c>a){
                if(a>b){
                    d=c;e=a;f=b;
                }else{
                    d=c;e=b;f=a;
                }
            }
        }
    }
    printf("Sisi-sisi segitiga : %f, %f, %f\n",d,e,f);

    ///cek segitiga
    float x = d-e;
    float y = e-f;
    float z = d-f;
    if(d<=0||e<=0||f<=0) {
        printf("Segitiga tidak valid");
    } else if(d>=e+f||e>=d+f||f>=d+e) {
        printf("Segitiga tidak valid");
    } else if((x==0 && y==0 && z==0) || (x==0 && y<=0.01 && z<=0.01) || (x<=0.01 && y==0 && z<=0.01)) {
        printf("Segitiga sama sisi");
    } else if((x==0 && y>0.01 && z>0.01) || (x>0.01 && y==0 && z>0.01)) {
        printf("Segitiga sama kaki");
    } else if (d*d==e*e+f*f||e*e==d*d+f*f||f*f==d*d+e*e) {
        printf("Segitiga siku-siku");
    } else {
        printf("Segitiga sembarang");
    }
}
