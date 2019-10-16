from google.cloud import storage
import pandas as pd
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('csv_name', help='Name of csv file for labeling')
    parser.add_argument('bucket_dir', help='Dir of bucket which you want to labeling')
    parser.add_argument('blob_dir', help='Dir of blob which you want to labeling')
    args = parser.parse_args()

    parser = argparse.ArgumentParser()

    Data = []
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(args.bucket_dir)
    blobs = bucket.list_blobs()

    for blob in blobs:
        Dir = blob.name.split("/")
        if "jpg" in blob.name and args.blob_dir in blob.name:
            Name = ""
            Name = "gs://" + args.bucket_dir + "/" + blob.name
            Data.append([Name, Dir[1].lower()])

    dataframe = pd.DataFrame(Data)
    CSV = dataframe.to_csv(args.csv_name, header=False, index=False)

    blob = bucket.blob(args.csv_name)

    blob.upload_from_filename(args.csv_name)
