#include <stdio.h>
#include <string.h>
#include <stdint.h>

void vuln(char *str) {
  char str2[] = "beef";
  char overflowme[OVERFLOWME_SIZE];
  /*
  printf("%p: str2\n", (void *)str2);
  printf("%p: overflowme[%lu]\n", (void *)overflowme, sizeof(overflowme));
  printf("%ld: str2 - overflowme\n", (uint8_t *)str2 - (uint8_t *)overflowme);
  */
  printf("%d, %ld\n", OVERFLOWME_SIZE, (uint8_t *)str2 - (uint8_t *)overflowme);
}

int main(){
  char string[] = "fish";
  vuln(string);
}
