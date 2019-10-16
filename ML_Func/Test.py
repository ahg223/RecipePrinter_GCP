import argparse
from google.cloud import storage
import pandas as pd
from copy import deepcopy

def track_objects_gcs(gcs_uri):
    from google.cloud import videointelligence_v1p2beta1 as videointelligence

    video_client = videointelligence.VideoIntelligenceServiceClient()
    features = [videointelligence.enums.Feature.OBJECT_TRACKING]
    operation = video_client.annotate_video(
        input_uri=gcs_uri, features=features, location_id='us-east1')
    print('\nProcessing video for object annotations.')

    result = operation.result(timeout=300)
    print('\nFinished processing.\n')

    object_annotations = result.annotation_results[0].object_annotations

    DATA = []
    for object_annotation in object_annotations:
        data = []
        data.append(object_annotation.entity.description)
        if 0==len(data[0]): continue
        data.append(object_annotation.entity.entity_id)
        data.append(object_annotation.segment.start_time_offset.seconds +
        object_annotation.segment.start_time_offset.nanos / 1e9)
        data.append(object_annotation.segment.end_time_offset.seconds +
        object_annotation.segment.end_time_offset.nanos / 1e9)
        data.append(object_annotation.confidence)
        for frame in object_annotation.frames:
            box = frame.normalized_bounding_box
            if len(DATA)!= 0 and DATA[-1][0] == data[0] and 0.1>DATA[-1][-4]- box.left: continue
            Temp = deepcopy(data)
            Temp.append(box.left)
            Temp.append(box.top)
            Temp.append(box.right)
            Temp.append(box.bottom)
            DATA.append(Temp)

    return DATA

def Tracking(gcs_uri):
    name=gcs_uri.split("/")[-1]
    print(name)
    object_annotations = track_objects_gcs(gcs_uri)
    object_annotations = sorted(object_annotations, key= lambda x:x[2])
    dataframe = pd.DataFrame(object_annotations)

    storage_client=storage.Client()
    bucket = storage_client.get_bucket("gang_chang_wuk_kill")
    blob = bucket.blob(name[:-4]+".csv")
    print(name[:-4]+".csv")
    blob.upload_from_string(dataframe.to_csv(header=False,index=False))

def download_blob(bucket_name, source_blob_name, destination_file_name):
    """Downloads a blob from the bucket."""
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)
    blob = bucket.blob(source_blob_name)

    blob.download_to_filename(destination_file_name)

    print('Blob {} downloaded to {}.'.format(
        source_blob_name,
        destination_file_name))
    
def Logging(event, context):
    name=event
    gcs_uri="gs://gang_chang_wuk_kill/"+name

    if name[-4:] == ".mp4": Tracking(gcs_uri)
    elif name[-4:] == ".csv": download_blob("gang_chang_wuk_kill",name, "video_ramen1.csv")

if __name__ == '__main__':
    Logging("video_ramen1.csv", None)
