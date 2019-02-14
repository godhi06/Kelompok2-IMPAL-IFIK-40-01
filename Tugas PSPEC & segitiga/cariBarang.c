#include<stdio.h>
#include<conio.h>

main(){
    char username[4];
    char password[4];
    char productName[50];
    char merk[256];
    int numbKul;
    int numbTV;

    printf("Input username: ");
    scanf("%s",username);

    printf("Input password: ");
    scanf("%s",password);

    if(strcmp(username, "aqua")==0 && strcmp(password, "abc")==0){
        printf("\nWelcome\n");
        system("cls");

            printf("Choose your product: ");
            scanf("%s",&productName);
            if(strcmp(productName, "Kulkas")==0){
                printf("Choose your merk\n");
                printf("1. Toshiba\n");
                printf("2. Polytron\n");

                printf("\nYour Number: ");
                scanf("%d",&numbKul);

                switch(numbKul){
                    case 1:
                        printf("Toshiba 2 pintu\n");
                        printf("Rp 1.455.000\n");
                        break;

                    case 2:
                        printf("Polytron banyak pintu\n");
                        printf("Rp 1.300.000\n");
                        break;

                    default:
                        printf("Maap gak ada");
                        break;
                }
            } else if(strcmp(productName, "Televisi")==0){
                printf("Choose your merk\n");
                printf("1. Samsung\n");
                printf("2. LG\n");

                printf("Your Number: ");
                scanf("%d",&numbTV);

                switch(numbTV){
                    case 1:
                        printf("Samsung Smart TV\n");
                        printf("Rp 2.505.000\n");
                        break;

                    case 2:
                        printf("LG Series\n");
                        printf("Rp 1.300.000\n");
                        break;

                    default:
                        printf("Maap gak ada");
                        break;

                }
            } else
            printf("????????????????????????");
    }
    return 0;
}

