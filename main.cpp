// #include<opencv2/opencv.hpp>
// #include<opencv2/imgproc/imgproc.hpp>
// #include<opencv2/highgui/highgui.hpp>
// #include <iostream>
// using namespace std;
// using namespace cv;
// int main()
// {
//     Mat srcImage = imread("/home/parallels/Downloads/FIgure-1.jpeg",1);  
//     imshow("Origin",srcImage);
//     waitKey(0);
//     return 0;
// }

// #include <iostream>
// #include <opencv2/opencv.hpp>
// using namespace std;
// using namespace cv;

// void camera_in()
// {
	
//     // VideoCapture cap;
// 	VideoCapture cap(0);
//     cap.set(CAP_PROP_FRAME_WIDTH, 1920);
//     cap.set(CAP_PROP_FRAME_HEIGHT, 1080);
//     cap.set(CAP_PROP_FOURCC, VideoWriter::fourcc('M', 'J', 'P', 'G'));
//     // cap.open(0);

//     if (!cap.isOpened())
//     {
//         cerr << "Camera open failed!" << endl;
//         return;
//     }

//     // cout << "Frame width: " << cvRound(cap.get(CAP_PROP_FRAME_WIDTH)) << endl;
//     // cout << "Frame height: " << cvRound(cap.get(CAP_PROP_FRAME_HEIGHT)) << endl;

//     Mat frame, inversed;
//     while (true)
//     {
//         cap >> frame;
//         if (frame.empty())
//             break;
        
//         inversed = ~frame;

//         imshow("frame", frame);
// //        imshow("inversed", inversed);
        
//         if (waitKey(10) == 27)
//             break;
//     }
//     destroyAllWindows();
// }

// int main()
// {
//     camera_in();
// }


// #include <opencv2/opencv.hpp>
// #include <iostream>
// #include <time.h>
// using namespace cv;
// using namespace std;
 
// int main()
// {
 
//     VideoCapture capture(-1);
//     capture.set(CAP_PROP_FRAME_WIDTH, 1920);
//     capture.set(CAP_PROP_FRAME_HEIGHT, 1080);
//     capture.set(CAP_PROP_FOURCC, VideoWriter::fourcc('M', 'J', 'P', 'G'));
//     // capture.set(CAP_PROP_FPS, 30);//帧数
 
//     //capture.set(CAP_PROP_BRIGHTNESS, 1);//亮度 50
//     //capture.set(CAP_PROP_CONTRAST, 40);//对比度 50
//     //capture.set(CAP_PROP_SATURATION, 50);//饱和度 50
//     //capture.set(CAP_PROP_HUE, 50);//色调 0
//     //capture.set(CAP_PROP_EXPOSURE, 50);//曝光 -12
//     //打印摄像头参数
//     printf("width = %.2f\n", capture.get(CAP_PROP_FRAME_WIDTH));
//     printf("height = %.2f\n", capture.get(CAP_PROP_FRAME_HEIGHT));
//     printf("fbs = %.2f\n", capture.get(CAP_PROP_FPS));
//     printf("brightness = %.2f\n", capture.get(CAP_PROP_BRIGHTNESS));
//     printf("contrast = %.2f\n", capture.get(CAP_PROP_CONTRAST));
//     printf("saturation = %.2f\n", capture.get(CAP_PROP_SATURATION));
//     printf("hue = %.2f\n", capture.get(CAP_PROP_HUE));
//     printf("exposure = %.2f\n", capture.get(CAP_PROP_EXPOSURE));
//     while (1)
//     {
//         Mat frame;
//         capture >> frame;
//         imshow("读取视频", frame);
//         waitKey(1);
//         printf("%ld\n", time(NULL));
//     }
//     return 0;
// }
#include<iostream>
#include<string>
#include<sstream>
#include<opencv2/core.hpp>
#include<opencv2/highgui.hpp>
#include<opencv2/videoio.hpp>
#include<opencv2/opencv.hpp>
 
using namespace std;
using namespace cv;
const char* keys =
{
  "{help h usage ? | | print this message}"
  "{@video | | Video file, if not defined try to use webcamera}"
};
int main(int argc, const char** argv) //程序主函数
{
    CommandLineParser parser(argc, argv, keys);
    parser.about("Video Capture");
 
    if (parser.has("help")) //帮助信息
    {
        parser.printMessage();
        return 0;
    }
    String videoFile = parser.get<String>(0);
    if (!parser.check())
    {
        parser.printErrors();
        return 0;
    }
 
 
    VideoCapture cap0; //定义摄像头对象，准备对每一帧进行处理
    
    cap0.open(0); //打开相机，电脑自带摄像头一般编号为0，外接摄像头编号为1，主要是在设备管理器中查看自己摄像头的编号。
	cap0.set(CAP_PROP_FRAME_WIDTH, 1920);
    cap0.set(CAP_PROP_FRAME_HEIGHT, 1080);
    cap0.set(CAP_PROP_FOURCC, VideoWriter::fourcc('M', 'J', 'P', 'G'));
 
   
    if (!cap0.isOpened()) //判断是否成功打开相机
    {
        cout << "摄像头打开失败!" << endl;
        return -1;
    }
 
 
    Mat frame0, frame_L;
    cap0 >> frame0; //从相机捕获一帧图像

    Mat grayImage; //用于存放灰度数据
   // double fScale = 0.25; //定义缩放系数，对2560*720图像进行缩放显示（2560*720图像过大，液晶屏分辨率较小时，需要缩放才可完整显示在屏幕） 
   // Size dsize0 = Size(frame0.cols * fScale, frame0.rows * fScale);
   /// Size dsize1 = Size(frame1.cols * fScale, frame1.rows * fScale);
 
    Mat imagedst0;
 
  //  resize(frame0, imagedst0, dsize0);
  //  resize(frame1, imagedst1, dsize1);
 
    char key;
    char image_left[200];
    int count1 = 0;
    namedWindow("图片1", 1);
    while (1)
    {
        key = waitKey(50);
        cap0 >> frame0; //从相机捕获一帧图像
       // resize(frame0, imagedst0, dsize0); //对捕捉的图像进行缩放操作
      //  resize(frame1, imagedst1, dsize1);
 
        frame_L = frame0;  //获取缩放后左Camera的图像 640*360
        namedWindow("Video_L", 1);
        imshow("Video_L", frame_L); //显示左摄像头拍摄的图像
  
    }
    return 0;
}
 