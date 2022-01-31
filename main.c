/*
** main.c
*/

#include "lib.h"

int main(void)
{
    CURL *handle;
    CURLcode res;

    handle = curl_easy_init();
    if (handle) {
        curl_easy_setopt(handle, CURLOPT_URL, "https://bourse.boursorama.com/bourse/action/graph/ws/GetTicksEOD?symbol=1rPCAC&length=1&period=0&guid=");
        curl_easy_setopt(handle, CURLOPT_FOLLOWLOCATION, 1L);
        res = curl_easy_perform(handle);
        if (res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n", curl_easy_strerror(res));
        curl_easy_cleanup(handle);
    }
    return 0;
}
