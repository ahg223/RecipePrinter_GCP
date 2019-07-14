import argparse
import cv2
import os
from google.cloud import storage
import pandas as pd
from copy import deepcopy

def track_objects_gcs(gcs_uri):
    # [START video_object_tracking_gcs_beta]
    """Object Tracking."""
    from google.cloud import videointelligence_v1p2beta1 as videointelligence
    #from google.cloud import videointelligence

    # It is recommended to use location_id as 'us-east1' for the best latency
    # due to different types of processors used in this region and others.
    video_client = videointelligence.VideoIntelligenceServiceClient()
    features = [videointelligence.enums.Feature.OBJECT_TRACKING]
    operation = video_client.annotate_video(
        input_uri=gcs_uri, features=features, location_id='us-east1')
    print('\nProcessing video for object annotations.')

    result = operation.result(timeout=300)
    print('\nFinished processing.\n')

    object_annotations = result.annotation_results[0].object_annotations

    DATA = []
    #DATA = [["Description","ID","Segment Start","Segment End","Confidence","Box left","Box Top","Box Right","Box Bottom"]]
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

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description=__doc__,
        formatter_class=argparse.RawDescriptionHelpFormatter)
    subparsers = parser.add_subparsers(dest='command')

    video_object_tracking_gcs_parser = subparsers.add_parser(
        'track-objects-gcs', help=track_objects_gcs.__doc__)
    video_object_tracking_gcs_parser.add_argument('gcs_uri')

    args = parser.parse_args()

    if args.command == 'track-objects-gcs':
        object_annotations = track_objects_gcs(args.gcs_uri)
        '''
        for i in object_annotations:
            print(i)'''
        name = args.gcs_uri.split("/")[-1][:-4]
        object_annotations = sorted(object_annotations, key= lambda x:x[2])
        dataframe = pd.DataFrame(object_annotations)
        CSV = dataframe.to_csv("./VideoFile/"+name+".csv", header=False, index=False)
