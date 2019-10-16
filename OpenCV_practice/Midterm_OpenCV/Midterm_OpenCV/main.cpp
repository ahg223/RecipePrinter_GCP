//
//  main.cpp
//  Midterm_OpenCV
//
//  Created by Hyung Geun Ahn on 22/04/2019.
//  Copyright © 2019 None. All rights reserved.
//

#include <iostream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;

void draw_houghLines(Mat,Mat&,vector<Vec2f>,int);

struct MAD;

int main(){
    
    Mat image=imread("./images/hough.jpg",0);
    Mat canny, dst1;
    double rho=1, theta=CV_PI/180;
    GaussianBlur(image,canny,Size(5,5),2,2);
    Canny(canny,canny,100,150,3);
    vector<Vec2f> lines;
    
    HoughLines(canny,lines,rho,theta,50);
    draw_houghLines(canny,dst1,lines,10);
    
    imshow("detected lines",dst1);
    waitKey();
    
}

void draw_houghLines(Mat src, Mat& dst, vector<Vec2f> lines, int nline){
    cvtColor(src,dst,CV_GRAY2BGR);
    for(int i=0; i<min((int) lines.size(),nline); i++){
        float rho=lines[0][0],theta=lines[0][1];
        double a=cos(theta), b=sin(theta);
        Point2d pt(a*rho, b*rho);
        Point2d delta(1000* -b, 1000*a);
        line(dst,pt+delta,pt-delta,Scalar(0,255,0),LINE_AA);
    }
}

struct MAD{
    int B;
};

/*
int main(){
    Mat A(100,100,CV_8UC1,Scalar(255));
    Mat B(A);
    
    Rect C(60,60,60,60);
    
    rectangle(A,C,Scalar(0));
    
    imshow("",A);
    
    
    Mat image=imread("./images/canny_test.jpg",IMREAD_GRAYSCALE);
    Mat dst;
    Canny(image,dst,100,150);
    
    imshow("",dst);
    waitKey();
     
}
*/
/*
int main(){
    Mat image=imread("./images/edge_test1.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    Mat dst;
    
    Laplacian(image,dst,CV_32F,1);
    convertScaleAbs(dst,dst);
    
    imshow("",dst);
    waitKey();
}
*/

/*
int main(){
    Mat image=imread("./images/edge_test1.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    Mat dst,dst1,dst2;
    
    Sobel(image,dst1,CV_32F,1,0,3);
    Sobel(image,dst2,CV_32F,0,1,3);
    magnitude(dst1,dst2,dst);
    dst.convertTo(dst,CV_8U);
    
    convertScaleAbs(dst1,dst1);
    convertScaleAbs(dst2,dst2);
    imshow("Sobel",dst);
    waitKey(0);
}
*/
/*
int main(){
    Mat image=imread("./images/filter_sharpen.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    
    float data1[]={
        0,-1,0,
        -1,5,-1,
        0,-1,0
    };
    float data2[]={
        -1,-1,-1,
        -1,9,-1,
        -1,-1,-1
    };
    Mat mask1(3,3,CV_32F,data1);
    Mat mask2(3,3,CV_32F,data2);
    Mat sharpen1,sharpen2;
    cv::filter2D(image,sharpen1,image.depth(),mask1);
    cv::filter2D(image,sharpen2,image.depth(),mask2);
    
    imshow("original",image);
    imshow("1",sharpen1);
    imshow("2",sharpen2);
    
    waitKey(0);
    return 0;
}
*/
/*
void filter(Mat image,Mat& tmp,Mat mask){
    tmp=Mat(image.size(),CV_32F);
    Point2i p=mask.size()/2;
    
    for(int i=p.y;image.rows-p.y>i;i++){
        for(int j=p.x;image.cols-p.x>j;j++){
            float sum=0;
            for(int m_i=0;mask.rows>m_i;m_i++){
                for(int m_j=0;mask.cols>m_j;m_j++){
                    sum+= image.at<uchar>(i+m_i-p.y,j+m_j-p.x) * mask.at<float>(m_i,m_j);
                }
            }
            tmp.at<float>(i,j)=sum;
        }
    }
    
    
    tmp.convertTo(tmp,CV_8U);
}

int main(){
    Mat image=imread("./images/filter_sharpen.jpg",IMREAD_GRAYSCALE);
    CV_Assert(image.data);
    
    float data1[]={
        0,-1,0,
        -1,5,-1,
        0,-1,0
    };
    float data2[]={
        -1,-1,-1,
        -1,9,-1,
        -1,-1,-1
    };
    Mat mask1(3,3,CV_32F,data1);
    Mat mask2(3,3,CV_32F,data2);
    Mat sharpen1,sharpen2;
    filter(image,sharpen1,mask1);
    filter(image,sharpen2,mask2);
    
    imshow("original",image);
    imshow("1",sharpen1);
    imshow("2",sharpen2);
    
    waitKey(0);
    return 0;
}
*/

/*
int main(){
    Mat image=imread("./images/filter_blur.jpg",IMREAD_GRAYSCALE);
    
    float data[]={
        1/9.f,1/9.f,1/9.f,
        1/9.f,1/9.f,1/9.f,
        1/9.f,1/9.f,1/9.f
    };
    Mat mask(3,3,CV_32FC1,data);
    Mat blur;
    cv::blur(image,blur,mask.size());
    blur.convertTo(blur,CV_8U);
    
    imshow("Orignal",image);
    imshow("Blur",blur);
    waitKey(0);
    return 0;
}
*/
/*
int main(){
    Mat m1(3,4,CV_8UC1);
    Mat m2(4,2,CV_64FC1);
    
    cout<<m1<<endl<<endl;
    cout<<m2<<endl<<endl;
}
*/
/*
void filter(Mat image, Mat& blur, Mat mask){
    blur=Mat(image.size(),CV_32FC1,Scalar(0));
    Point2i p=mask.size()/2;
    
    for(int i=p.y; image.rows-p.y>i;i++){
        for(int j=p.x; image.cols-p.x>j;j++){
            float sum=0;
            for(int m_i=0;mask.rows>m_i;m_i++){
                for(int m_j=0;mask.cols>m_j;m_j++){
                    sum+= image.at<uchar>(i+m_i-p.y,j+m_j-p.x) * mask.at<float>(m_i,m_j);
                }
            }
            blur.at<float>(i,j)=sum;
        }
    }
    
}

int main(){
    Mat image=imread("./images/filter_blur.jpg",IMREAD_GRAYSCALE);
    
    float data[]={
        1/9.f,1/9.f,1/9.f,
        1/9.f,1/9.f,1/9.f,
        1/9.f,1/9.f,1/9.f
    };
    Mat mask(3,3,CV_32FC1,data);
    Mat blur;
    filter(image,blur,mask);
    blur.convertTo(blur,CV_8U);
    
    imshow("Orignal",image);
    imshow("Blur",blur);
    waitKey(0);
    return 0;
}
*/
/*
int main(){
    Mat image=imread("./images/pixel_test.jpg",IMREAD_GRAYSCALE);
    Rect roi(135,95,20,15);
    Mat roi_img=image(roi);
    
    for(int i=0; i<roi_img.rows;i++){
        for(int j=0;j<roi_img.cols;j++){
            cout.width(5);
            cout<<(int)roi_img.at<uchar>(i,j);
        }
        cout<<endl;
    }
    rectangle(image,roi,Scalar(255),1);
    imshow("A",image);
    waitKey(0);
}
*/
/*
int main(){
    Mat image1(50,512,CV_8UC1,Scalar(0));
    Mat image2(50,512,CV_8UC1,Scalar(0));
    
    for(int i=0;i<image1.rows;i++){
        for(int j=0;j<image2.cols;j++){
            image1.at<uchar>(i,j)=j/2;
            image2.at<uchar>(i,j)=(j/20)*10;
        }
    }
    
    
    imshow("1",image1);
    imshow("2",image2);
    waitKey(0);
}
*/
/*
int main(){
    Point2d pt7(0.25,0.6);
    Point pt8(192,325);
    
    cout<<pt7.dot(pt8)<<endl;
    cout<<pt8.dot(pt7)<<endl;
    
}
*/
/*
int main(){
    Mat img=imread("./images/read_gray.jpg",IMREAD_GRAYSCALE);
    Point2i pt;
    
    for (int i=1;i<img.rows-1;i++){
        bool Flag=false;
        for(int j=1; j<img.cols-1;j++){
            pt={j,i};
            if (img.at<uchar>(i-1,j)==255 && img.at<uchar>(i,j-1)== 244 && img.at<uchar>(i,j)==175 && img.at<uchar>(i,j+1)==254 && img.at<uchar>(i+1,j)==223){
                Flag=true;
                cout<<img.at<uchar>(i-1,j)<<endl;
                cout<<img.at<uchar>(pt)<<endl;
                cout<<img.at<uchar>(i+1,j)<<endl;
            }
            if (Flag) break;
        }
        if (Flag) break;
    }
    cout<<img.at<uchar>(pt)<<endl;
    cout<<pt<<endl;
    
    
    return 0;
    
}
*/
/*
int main(){
    Mat m1(200,300,CV_8UC3,Scalar(0));
    Mat m2(m1,Range(50,150),Range::all());

    m2=Scalar(0,255,0);
    imshow("A",m1);
    waitKey(0);
    
}
*/

/*
int main(){
    Mat m1(3,5,CV_32S), m2(3,5,CV_32S);
    
    for(int i=0, k=0; i<m1.rows ;i++){
        for(int j=0; j<m1.cols;j++,k++){
            m1.at<int>(i,j)=k;
            m2.at<short>(i,j)=(short)k;
        }
    }
    
    cout<<m1<<endl;
    cout<<m2<<endl;
    
}
*/
/*
int main(){
    Mat img8=imread("./images/read_color.jpg",IMREAD_COLOR);
    CV_Assert(img8.data);
    
    vector<int> params_jpg, params_png;
    params_jpg.push_back(IMWRITE_JPEG_QUALITY);
    params_jpg.push_back(50);
    params_png.push_back(IMWRITE_PNG_COMPRESSION);
    params_png.push_back(9);
    
    
    imwrite("./images/write_test1.jpg",img8);
    imwrite("./images/write_test2.jpg",img8,params_jpg);
    
    
}
*/
/*
int main(){
    string filename="./images/read_color.jpg";
    Mat gray2gray=imread(filename, IMREAD_GRAYSCALE);
    Mat gray2color=imread(filename, IMREAD_COLOR);
    CV_Assert(gray2gray.data && gray2color.data);
    
    Rect roi(100,100,1,1);
    
    cout<<gray2gray(roi)<<endl;
    cout<<gray2color(roi)<<endl;
    
    imshow("G",gray2gray);
    imshow("C",gray2color);
    
    waitKey(0);
    
}
*/
/*
int main(){
    Mat A(300,500,CV_8UC1,Scalar(255));
    Mat B(A,Rect(10,10,250,250));
    Mat C(A,Range::all(),Range(50,500));
    
    B.adjustROI(-40,40,-140,140);
    C.adjustROI(-50,50,-200,200);
    
    circle(A,Point2i(100,100),50,0);
    circle(B,Point2i(50,50),50,0);
    circle(C,Point2i(50,50),50,0);
    
    imshow("A",A);
    waitKey(0);
}
*/
/*
int main(){
    Mat A(300,500,CV_8UC1,Scalar(255));
    Mat B(A,Rect(10,10,250,250));
    Mat C(A,Range::all(),Range(50,500));
    
    circle(A,Point2i(100,100),50,0);
    circle(B,Point2i(190,90),50,0);
    circle(C,Point2i(250,100),50,0);
    
    imshow("A",A);
    waitKey(0);

}*/
/*
int main(){
    Mat m1(2,6,CV_8U);
    Mat m2=m1.reshape(2);
    Mat m3=m1.reshape(3,2);
    
    m1=1;
    cout<<m1<<endl;
    cout<<m2<<endl;
    cout<<m3<<endl;
    
    m2=2;
    cout<<m1<<endl;
    cout<<m2<<endl;
    cout<<m3<<endl;
    
    m3=3;
    cout<<m1<<endl;
    cout<<m2<<endl;
    cout<<m3<<endl;
}
 */
/*
int main(){
    float A[]={
        0.1f,5.1f,-0.2f,
        0.1f,4.1f,-0.3f
    };

    Mat_<uchar> m1(3,2);
    Mat m2(2,3,CV_32F,A);
    
    m1<< 1,1,2,2,3,3;
    
    cout<<m1<<endl;
    cout<<A[1]<<endl;
    cout<<m2<<endl;
}
*/
/*
int main(){
    int data1[]={
        500,100,-500,1000,0,
        500,100,-500,2000,0
    };
    float data2[]={
        0.1f,5.1f,-0.2f,
        0.1f,4.1f,-0.3f,
        0.1f,3.1f,-0.4f
    };
    
    Mat m1(2,5,CV_32S,data1);
    Mat m2(3,3,CV_32F,data2);
    
    cout<<m1<<endl;
    cout<<m2<<endl;
    
}*/

/*
int main(){
    Mat image(300,500,CV_8UC1,Scalar(255));
    Point2f center(250,150), pts[4];
    Size2f size(300,50);
    
    for(int _=0;4>_;_++){
        RotatedRect rot_rect(center,size,45*_);
        rot_rect.points(pts);
        for(int i=0;4>i;i++){
            if(i%2==0) circle(image,(pts[i]+pts[i+1])/2,25,Scalar(0),2);
            line(image,pts[i],pts[(i+1)%4],Scalar(0),2);
        }
    }
    imshow("a",image);
    waitKey(0);
    return 0;
}
*/
/*
int main(){
    Mat A(100,200,CV_8UC3,Scalar(255,255,255));
    Rect R(90,40,20,20);
    Rect R1,R2,R3;
    Point P(50,0);
    
    R1=R-P;
    R2=R;
    R3=R+P;
    rectangle(A,R1,Scalar(0,0,255));
    rectangle(A,R2,Scalar(255,0,0));
    rectangle(A,R3,Scalar(0,255,0));
    imshow("A",A);
    waitKey(0);
    
}*/

/*
int main(){
    Mat A(100,200,CV_8UC1,Scalar(0));
    Rect R(90,40,20,20);
    Rect R1,R2;
    Point P1(-60,-10),P2(40,-10);
    Size S(20,20);
    
    R1=R+S+P1;
    R2=R+S+P2;
    
    rectangle(A,R1,Scalar(255));
    rectangle(A,R2,Scalar(255));
    
    imshow("A",A);
    waitKey(0);
}
*/
/*
int main(){
    Size2d sz(100.5,60.6);
    Point2f pt1(20.f,30.f), pt2(100.f,200.f);
    
    Rect rect1(10,10,30,50),            rect4=rect1+(Point)pt1;
    Rect2f rect2(pt1,pt2),              rect5=rect2+(Size2f)sz;
    Rect2d rect3(Point2d(20.5,10),sz),  rect6=(Rect2f)rect1 & rect2;
    
    cout<<"rect1 "<<rect1<<endl;
    cout<<"rect2 "<<rect2<<endl;
    cout<<"rect3 "<<rect3<<endl;
    cout<<"rect4 "<<rect4<<endl;
    cout<<"rect5 "<<rect5<<endl;
    cout<<"rect6 "<<rect6<<endl;
    return 0;
}
*/
/*
int main(){
    Size2i sz1(100,200)     ,   sz4(120,69);
    Size2f sz2(192.3f,25.3f),   sz5(0.3f,0.f);
    Size2d sz3(100.2,30.9)  ,   sz6(0.25,0.6);
    Point2d pt1(0.25,0.6);
    
    Size2i sz7=sz1+(Size2i)sz2;
    Size2d sz9=sz5+(Size2f)pt1;
    
    return 0;
}*/

/*
int main(int argc, const char * argv[]) {
    Point pt1(10,20);
    Point pt2(92.3f,125.23f);
    Point pt3(100.2,300.9);
    
    Point2i pt4(120,69);
    Point2f pt5(0.3f,0.f), pt6(0.f,0.4f);
    Point2d pt7(0.25,0.6);
    
    Point pt8=pt1+pt2;
    Point2f pt9=pt1*3.14f;
    Point2d pt10=((Point2f)pt3+pt6)*10;
    
    cout<<"pt2 = "<<pt2<<endl;
    cout<<"pt8 = "<<pt8.x<<" , "<<pt8.y<<endl;
    cout<<"pt9 = "<<pt9.x<<" , "<<pt9.y<<endl;
    
    return 0;
}
*/
