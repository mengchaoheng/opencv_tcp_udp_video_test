//!2017.12.19 19:19:01 CST
//!2017.12.19 22:19:38 CST
//!2017.12.19 22:39:37 CST
// 服务器
// 监听客户端请求，读取视频流（并处理），保存。
#include <unistd.h>
#include <arpa/inet.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <string>
#include <vector>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

int main()
{
    int sock, listener;
    struct sockaddr_in addr;

    if( (listener = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        perror("[server] socket() failed");
        exit(1);
    }

    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    if(bind(listener, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
        perror("[server] binding faild!");
        exit(2);
    }

    listen(listener, 1);


    int num_of_recv_bytes;
    VideoWriter outputVideo;
    Size S = Size((int) 640,(int) 480);
    outputVideo.open("receive.avi", VideoWriter::fourcc('M','J','P','G'), 30, S, true);

    int imgSize = 480*640*3;
    Mat frame = Mat::zeros(480, 640, CV_8UC3);
    uchar *iptr = frame.data;
    int key;

    int cnt=0;
    while(1){
        cout << ++cnt<<endl;
        sock = accept(listener, NULL, NULL);
        if(sock < 0){
            perror("[server] accept() faild!");
            exit(3);
        }

        while(key != 'q') {
            if( num_of_recv_bytes = recv(sock, iptr, imgSize, MSG_WAITALL) == -1 ) {
                cerr << "recv failed, received bytes = " << num_of_recv_bytes << endl;
            }

            outputVideo<< frame;
            imshow("server", frame);
            // if (key = waitKey(100) >= 0) break;
        }
        outputVideo.release();
        close(sock);
        break;
    }
    return 0;
}
