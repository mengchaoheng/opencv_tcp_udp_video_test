//!2017.12.19 19:19:01 CST
//!2017.12.19 22:19:38 CST
//!2017.12.19 22:39:37 CST
// 客户端
// 使用 OpenCV 读取视频（并处理），然后使用 SOCKET 上传到服务器。

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
    int sock;
    struct sockaddr_in addr;

    sock = socket(AF_INET, SOCK_STREAM, 0);
    if(sock < 0){
        perror("socket");
        exit(1);
    }

    addr.sin_family = AF_INET;
    addr.sin_port = htons(3425);
    addr.sin_addr.s_addr = htonl(INADDR_LOOPBACK);

    if(connect(sock, (struct sockaddr *)&addr, sizeof(addr)) < 0){
        perror("connect");
        exit(2);
    }

    int bbytee;
    cout << "before open the cam" << endl;

    VideoCapture cap(0);
    cap.set(CAP_PROP_FRAME_WIDTH, 640);
    cap.set(CAP_PROP_FRAME_HEIGHT, 480);

    if(!cap.isOpened()) {
        cout<< "Could not open the camera" <<  endl;
        close(sock);
        return -1;
    }

    Mat frame;
    frame = Mat::zeros(640, 480, CV_8UC3);
    int imgSize = frame.cols*frame.rows*3;

    int cnt=0;
    //Mat frame;
    while(1) {
        cap >> frame;
        if(frame.empty()) {
            cerr<<"[client] VideoCapture(0) error!"<<endl;
        }

        cout<< ++cnt << ":"<< frame.isContinuous()<<"," <<frame.size()<<endl;;

        if( (bbytee = send(sock, frame.data, imgSize, 0)) < 0 ) {
            cerr<< "bytes = " << bbytee << endl;
            break;
        }

        cv::imshow("client", frame);
        if(cv::waitKey(100) == 'q') {
            break;
        }
    }
    close(sock);
    return 0;
}
