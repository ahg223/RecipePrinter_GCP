import argparse
import cv2
import pandas as pd

def Frame(VideoLog_uri):
    Log = pd.read_csv(VideoLog_uri, names = ["Description","ID","Segment Start","Segment End","Confidence","Box left","Box Top","Box Right","Box Bottom"] )
    row, col = Log.shape

    #Frame by Frame
    vidcap = cv2.VideoCapture(VideoLog_uri[:-3] + "mp4")
    fps=vidcap.get(cv2.CAP_PROP_FPS)
    #os.makedirs(VideoLog_uri[:-4])

    while(vidcap.isOpened()):
        if(vidcap.get(cv2.CAP_PROP_POS_FRAMES) == vidcap.get(cv2.CAP_PROP_FRAME_COUNT)): break
        for i in range(row):
            while True:
                ret, image = vidcap.read()
                #print('./frame%d.png'%i )
                #print(int(float(Log.loc[i, "Segment Start"]) * fps))
                if vidcap.get(cv2.CAP_PROP_POS_FRAMES) >= int(Log.loc[i, "Segment Start"] * fps):
                    if Log.loc[i, "Description"] == None: break
                    cv2.putText(image, Log.loc[i, "Description"],(20,20), cv2.FONT_ITALIC,1,(0,255,0), 2, cv2.LINE_AA)
                    cv2.imwrite(VideoLog_uri[:-4]+'/frame%d.png'%i, image)
                    print(VideoLog_uri[:-4]+'/frame%d.png'%i)
                    break
                else: continue


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('VideoLog_uri')
    args = parser.parse_args()

    parser = argparse.ArgumentParser()
    Frame(args.VideoLog_uri)
