//
//  main.cpp
// /Users/hyunggeunahn/Desktop/MyGit/4-1_OpenCV/03.25/Build/Products/Debug/images 03.25
//
//  Created by Hyung Geun Ahn on 24/03/2019.
//  Copyright © 2019 None. All rights reserved.
//

#include <iostream>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;
/*
int main(){
    Mat image=imread("./images/edge_test1.jpg",IMREAD_GRAYSCALE);
    Mat dst;
    cv::Canny(image,dst,1,10);
    imshow("Canny",dst);
    waitKey(0);
    return 0;
    
}*/

/*
void differential(Mat image, Mat& dst, float data1[], float data2[]){
    Mat dst1, mask1(3,3,CV_32F,data1);
    Mat dst2, mask2(3,3,CV_32F,data2);
    
    cv::filter2D(image, dst1, CV_32F, mask1);
    cv::filter2D(image, dst2, CV_32F, mask2);
    magnitude(dst1, dst2, dst);
    dst.convertTo(dst,CV_8U);
    
    convertScaleAbs(dst1,dst1);
    convertScaleAbs(dst2,dst2);
    imshow("dst1- 수직 마스크",dst1);
    imshow("dst2- 수평 마스크",dst2);
}

int main(){
    Mat image=imread("./images/edge_test1.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    float data1[]={
        -1,0,-1,
        -2,0,2,
        -1,0,1
    };
    float data2[]={
        -1,-2,-1,
        0,0,0,
        1,2,1
    };
    Mat dst, dst3, dst4, dst5;
    differential(image,dst,data1,data2);
    Sobel(image, dst3, CV_32F,1,0,3);
    Sobel(image, dst4, CV_32F,0,1,3);
    magnitude(dst3,dst4,dst5);
    dst5.convertTo(dst5,CV_8U);
    
    imshow("image",image);
    imshow("Sobel_Edge",dst);
    imshow("dst3_수직CV",dst3), imshow("dst4_수평CV",dst4);
    imshow("dst5_Sobel_Edge",dst5);
    waitKey();
    return 0;
    
}
*/
/*
int main(){
    Mat image=imread("./images/filter_sharpen.jpg",IMREAD_GRAYSCALE);
    Mat sharpen1, sharpen2;
    CV_Assert(image.data);
    float kernel[]={
        
    }
    cv::filter2D(image, sharpen1,CV_32F,kernel);

    cv::filter2D(image, sharpen2,CV_32F,kernel2);
    imshow("image",image), imshow("sharpen1",sharpen1), imshow("sharpen2",sharpen2);
    waitKey(0);
    return 0;
}*/

/*
void filter(Mat img, Mat &dst, Mat mask){
    dst = Mat(img.size(), CV_32F, Scalar(0));
    Point h_m = mask.size()/2;
    
    for (int i=h_m.y; i<img.rows-h_m.y; i++){
        for(int j=h_m.x; j<img.cols-h_m.x; j++){
            float sum=0;
            for (int u=0;u<mask.rows;u++){
                for(int v=0;v<mask.cols;v++){
                    int y = i + u - h_m.y;
                    int x = j + v - h_m.x;
                    sum += mask.at<float>(u,v) * img.at<uchar>(y,x);
                }
            }
            dst.at<float>(i,j)=sum;
        }
    }
        
}*/
/*
int main(int argc, const char * argv[]) {
    Mat image = imread("./images/filter_blur.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    
    float data[]={
        1/9.f, 1/9.f, 1/9.f,
        1/9.f, 1/9.f, 1/9.f,
        1/9.f, 1/9.f, 1/9.f,
    };
    float Data[]{
        1/25.f, 1/25.f, 1/25.f,1/25.f, 1/25.f,
        1/25.f, 1/25.f, 1/25.f,1/25.f, 1/25.f,
        1/25.f, 1/25.f, 1/25.f,1/25.f, 1/25.f,
        1/25.f, 1/25.f, 1/25.f,1/25.f, 1/25.f,
        1/25.f, 1/25.f, 1/25.f,1/25.f, 1/25.f,
    };
    
    Mat mask(3,3,CV_32F,data);
    Mat Mask(5,5,CV_32F,Data);
    Mat blur;
    Mat Blur;
    cv::blur(image, blur, Size(7,7));
    
    cv::blur(image, Blur, Size(7,7),Point(0,0));
    //filter(image, blur, mask);
    //filter(image, Blur, Mask);
    blur.convertTo(blur, CV_8U);
    Blur.convertTo(Blur, CV_8U);
    imshow("image",image), imshow("blur",blur), imshow("Blur",Blur);
    waitKey();
    return 0;
}*/
/*
int main(int argc, const char * argv[]) {
    Mat img;
    img=imread("./images/pixel_test.jpg",IMREAD_GRAYSCALE);
    Rect dark_rect, bright_rect;
    double max=0, min=255;
    
    for (int i=0; i<img.rows -32;i++){
        for (int j=0; j<img.cols -32;j++){
            Rect Temp(j,i,32,32);
            Mat temp=img(Temp);
            double avg=cv::mean(temp)[0];
            
            if(avg>max){
                max=avg;
                dark_rect=Temp;
            }
            if(min>avg){
                min=avg;
                bright_rect=Temp;
            }
        }
    }
    
    rectangle(img,bright_rect,Scalar(255),1);
    rectangle(img,dark_rect,Scalar(0),1);
    imshow("image",img);
    waitKey();
    return 0;
}*/
/*
int main(int argc, const char * argv[]) {
    Mat m1(200,300,CV_8UC1);
    Mat m2(200,300,CV_8UC3);
    
    for(int i=0; i<m1.rows;i++){
        for(int j=0;j<m1.cols;j++){
            if (151>i && i>49) m1.at<uchar>(i,j)=255;
            else m1.at<uchar>(i,j)=0;
            if (151>i && i>49) m2.at<Vec3b>(i,j)=Vec3b(0,255,0);
            else m2.at<Vec3b>(i,j)=Vec3b(0,0,0);
        }
    }
    
    Mat img;
    img=imread("./images/read_gray.jpg",IMREAD_GRAYSCALE);
    Point2i pt;
    
    for(int i=1; i<img.rows-1;i++){
        for(int j=1;j<img.cols-1;j++){
            if(img.at<uchar>(i-1,j)==244 && img.at<uchar>(i,j-1)==255 && img.at<uchar>(i+1,j)==254 && img.at<uchar>(i,j+1)==223 && img.at<uchar>(i,j)==175) pt={i,j};
        }
    }
    
    cout<<pt<<endl;
    imshow("m1",m1);
    imshow("m2",m2);
    waitKey(0);
    
    return 0;
}
 */
/*
int main(int argc, const char * argv[]) {
    
    string filename="./images/read_color.jpg";
    Mat img8=imread(filename,IMREAD_COLOR);
    CV_Assert(img8.data);
    
    vector<int> params_jpg,params_png;
    params_jpg.push_back(IMWRITE_JPEG_QUALITY);
    params_jpg.push_back(50);
    params_png.push_back(IMWRITE_PNG_COMPRESSION);
    params_png.push_back(9);

    imwrite("./images/write_test1.jpg",img8);
    imwrite("./images/write_test2.jpg",img8,params_jpg);
    imwrite("./images/write_test.png",img8,params_png);
    imwrite("./images/write_test.bmp",img8);
 
    
    int a=5;
    float b=2.55;
    cout<<int(a*b)<<endl;
    return 0;
}
*/
/*
void print_matInfo(string name, Mat img){
    string mat_type;
    
    if(img.depth()==CV_8U)      mat_type="CV_8U";
    else if(img.depth()==CV_8S) mat_type="CV_8S";
    else if(img.depth()==CV_16U) mat_type="CV_16U";
    else if(img.depth()==CV_16S) mat_type="CV_16S";
    else if(img.depth()==CV_32S) mat_type="CV_32S";
    else if(img.depth()==CV_32F) mat_type="CV_32F";
    else if(img.depth()==CV_64F) mat_type="CV_64F";

    cout<<name;
    cout<<format(": depth(%d) channels(%.2f) -> 자료형: ",img.depth(), float(img.channels()));
    cout<<"C"<<img.channels()<<endl;
}

int main(int argc, const char * argv[]) {
    string filename="./images/read_color.jpg";
    Mat color2gray=imread(filename,IMREAD_GRAYSCALE);
    Mat color2color=imread(filename,IMREAD_COLOR);
    CV_Assert(color2gray.data && color2color.data);
    
    Rect roi(100,100,1,1);
    cout<<"화소값"<<endl;
    cout<<"gray2gray"<<color2gray(roi)<<endl;
    cout<<"gray2color"<<color2color(roi)<<endl<<endl;
    
    print_matInfo("gray2gray",color2gray);
    print_matInfo("gray2color",color2color);
    imshow("gray2gray",color2gray);
    imshow("gray2color",color2color);
    waitKey(0);
    
    return 0;
}
*/
/*
void print_matInfo(string m_name,Mat m){
    cout<<"["<<m_name<<" 행렬]"<<endl;
    cout<<" 채널 수 = "<<m.channels()<<endl;
    cout<<" 행 x 열 = "<<m.rows<<"x"<<m.cols<<endl<<endl;
}*/

int main(int argc, const char * argv[]) {
 
    /*
    Mat m1(3,6,CV_8UC3);
    Mat m2=m1.reshape(2,3);
    
    print_matInfo("m1",m1);
    print_matInfo("m2",m2);
    */
    
    Mat m1(2,6,CV_8U);
    Mat m2=m1.reshape(2);
    Mat m3=m1.reshape(3,2);
    
    m1=1;
    cout<<endl<<"<m1=1>"<<endl;
    cout<<"m1"<<endl<<m1<<endl;
    cout<<"m2"<<endl<<m2<<endl;
    cout<<"m3"<<endl<<m3<<endl;
    m2=Scalar(2,2);
    cout<<endl<<"<m1=2>"<<endl;
    cout<<"m1"<<endl<<m1<<endl;
    cout<<"m2"<<endl<<m2<<endl;
    cout<<"m3"<<endl<<m3<<endl;
    m3=Scalar(3,1,3);
    cout<<endl<<"<m1=3>"<<endl;
    cout<<"m1"<<endl<<m1<<endl;
    cout<<"m2"<<endl<<m2<<endl;
    cout<<"m3"<<endl<<m3<<endl;
    
    /*
    Mat A(200,200,CV_8UC3, Scalar(255,255,255));
    Point2i point(100,100);
    
    Mat B;
       A.copyTo(B);
    circle(B,point,100,255);
    imshow("test",A);
    waitKey(0);
    */
    /*
    Mat A(300,500,CV_8UC1,Scalar(255));
    Mat B(A,Rect(10,10,250,250));
    Mat C(A,Range::all(),Range(50,500));
    
    circle(A,Point2i(100,100),50,0);
    circle(B,Point2i(190,90),50,0);
    circle(C,Point2i(250,100),50,0);
    
    imshow("",A);
    waitKey(0);
    */
    /*
    Mat m1=Mat(10,15,CV_32S,Scalar(100));
    Mat m2=m1(Range(1,5),Range(3,8));
    Mat m3=m1(Range(5,9),Range(8,14));
    Mat m4=m1(Range(3,7),Range(5,10));

    //cout<<m1<<endl;
    m2={200,};
    m3={300,};
    m4={555,};
    
    cout<<m1<<endl;
     */
    /*
    Mat A(300,500,CV_8UC1,Scalar(255));
    Mat B(A,Rect(10,10,250,250));
    Mat C(A,Range::all(),Range(50,500));
    
    B.adjustROI(-40,40,-140,140);
    C.adjustROI(-50,50,-200,200);
    
    circle(A,Point2i(100,100),50,0);
    circle(B,Point2i(50,50),50,0);
    circle(C,Point2i(50,50),50,0);
    
    imshow("",A);
    waitKey(0);
    */
    
    
  
    return 0;
}

