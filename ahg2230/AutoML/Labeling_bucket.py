from google.cloud import storage
import pandas as pd
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('csv_name', help='Name of csv file for labeling')
    parser.add_argument('bucket_dir', help='Dir of bucket which you want to labeling')
    args = parser.parse_args()

    parser = argparse.ArgumentParser()
    Dir = args.bucket_dir.split("/")

    Data = []
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(Dir[0])
    blobs = bucket.list_blobs()
    
    for blob in blobs:
        if Dir[1] in blob.name:
            if "jpg" in blob.name: Data.append("gs://"+Dir[0]+"/"+blob.name)

    dataframe=pd.DataFrame(Data)
    CSV=dataframe.to_csv(args.csv_name,header=False,index=False)

    blob = bucket.blob(Dir[1])

    blob.upload_from_filename(args.csv_name)