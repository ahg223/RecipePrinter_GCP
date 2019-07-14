import argparse
import requests
from io import BytesIO
from google.cloud import storage
from google.cloud import vision
from google.cloud.vision import types
from PIL import Image

def get_crop_hint(path, aspect_ratios):
    # [START vision_crop_hints_tutorial_get_crop_hints]
    """Detect crop hints on a single image and return the first result."""
    client = vision.ImageAnnotatorClient()

    image = vision.types.Image()
    image.source.image_uri = path

    crop_hints_params = types.CropHintsParams(aspect_ratios=[float(aspect_ratios)])
    image_context = types.ImageContext(crop_hints_params=crop_hints_params)

    response = client.crop_hints(image=image, image_context=image_context)
    hints = response.crop_hints_annotation.crop_hints
    # Get bounds for the first crop hint using an aspect ratio of 1.77.
    vertices = hints[0].bounding_poly.vertices
    # [END vision_crop_hints_tutorial_get_crop_hints]

    return vertices

def crop_to_hint(bucket_name,aspect_ratios):
    """Crop the image using the hints in the vector list."""
    # [START vision_crop_hints_tutorial_crop_to_hints]
    
    storage_client = storage.Client()
    bucket = storage_client.get_bucket(bucket_name)
    #storage_client.create_bucket(bucket_name+"_crop")
    blobs = bucket.list_blobs()

    for blob in blobs:

        if blob.name[-3:]!="jpg": continue
        url="https://storage.googleapis.com/" + bucket_name + "/" + blob.name
        #print(url)
        vects = get_crop_hint(url,aspect_ratios)
        response=requests.get(url)
        im=Image.open(BytesIO(response.content))
        im2 = im.crop([vects[0].x, vects[0].y, vects[2].x - 1, vects[2].y - 1])
            
        with BytesIO() as output:
            im2.save(output,format="JPEG")
            StringIM=output.getvalue()

        blob.name = blob.name[:-4] + "_crop.jpg"
        blob.upload_from_string(StringIM)
        
    # [END vision_crop_hints_tutorial_crop_to_hints]


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('bucket_name', help='Name of bucket for cropping')
    parser.add_argument('aspect_ratios', help='aspect_ratios')
    args = parser.parse_args()

    parser = argparse.ArgumentParser()
    crop_to_hint(args.bucket_name, args.aspect_ratios)