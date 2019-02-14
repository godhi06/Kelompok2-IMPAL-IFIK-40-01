#include <stdio.h>
#include <conio.h>
#include <stdlib.h>
main()

{
int nomor,jumlahBeli;
char *nama_barang;
int harga,total;

printf("\t\t\tELON\n");
printf("LIST BARANG :\n\n");
printf("1.Kulkas toshiba\n");
printf("2.Kulkas polytron\n");
printf("3.Televisi samsung\n");
printf("4.Televisi LG");

printf ("\n \nMasukan nomor barang yang akan dibeli: ");
scanf ("%d",&nomor);

while (nomor < 1 || nomor  > 4){
            printf("barang tidak ada silakan masukkan nomor barang dengan benar\n\n");
            printf("Nomor Barang:  ");
            scanf("%d",&nomor);
            }
switch (nomor){
    case 1:
        nama_barang="kulkas Toshiba \n ";
        harga=3500000;
        printf("Nama Barang: %s",nama_barang);
        printf("\nHarga : Rp %d",harga);
        printf("\nMasukan jumlah beli : "); scanf("%d",&jumlahBeli);
        total=harga*jumlahBeli;
        printf("Total Harga yang harus dibayar : Rp %d",total);
        break;
    case 2:
        nama_barang="Kulkas polytron \n ";
        harga=1500000;
        printf("Nama Barang: %s",nama_barang);
        printf("\nHarga : Rp %d",harga);
        printf("\nMasukan jumlah beli : "); scanf("%d",&jumlahBeli);
        total=harga*jumlahBeli;
        printf("Total Harga yang harus dibayar : Rp %d",total);
        break;
    case 3:
        nama_barang="Televisi samsung smart TV\n ";
        harga=2000000;
        printf("Nama Barang: %s",nama_barang);
        printf("\nHarga : Rp %d",harga);
        printf("\nMasukan jumlah beli : "); scanf("%d",&jumlahBeli);
        total=harga*jumlahBeli;
        printf("Total Harga yang harus dibayar : Rp %d",total);
        break;
     case 4:
        nama_barang="Televisi LG\n ";harga=1250000;
        printf("Nama Barang: %s",nama_barang);
        printf("\nHarga : Rp %d",harga);
        printf("\nMasukan jumlah beli : "); scanf("%d",&jumlahBeli);
        total=harga*jumlahBeli;
        printf("Total Harga yang harus dibayar : Rp %d",total);
        break;
        }
}
