import argparse
import cv2
from google.cloud import storage

def Frame(bucket_name):
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)

    blobs = bucket.list_blobs()

    for blob in blobs:
        source_blob_name = blob.name
        destination_file_name = "./VideoFile/" + source_blob_name
        blob.download_to_filename(destination_file_name)

        print('Blob {} downloaded to {}.'.format(
            source_blob_name,
            destination_file_name))

        #Frame by Frame
        vidcap = cv2.VideoCapture(source_blob_name)
        num = 0

        while(vidcap.isOpened()):
            ret, image = vidcap.read()
            if int(vidcap.get(1) % 30) == 0:

                blob = bucket.blob(source_blob_name[:-4]+"/" + source_blob_name[:-4] + "_" + str(num) + ".jpg")
                print(blob.name)
                String = cv2.imencode('.jpg', image)[1].tobytes()
                blob.upload_from_string(String)
                num += 1
                if num == 40: break


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('bucket_name')
    args = parser.parse_args()

    parser = argparse.ArgumentParser()
    Frame(args.bucket_name)
