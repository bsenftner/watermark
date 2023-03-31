# A simple ffmpeg script for watermarking a video

This is a script `watermark.sh` that runs on the linux command line:

`./watermark.sh [input_video] [input_watermark_image] [output_watermarked_video]`

This script requires 3 inputs, each being the path to a file, all are required.

The input_watermark_image is expected to be a png with transparency; 
it will be resized to 1/5th the video's height and placed in the lower left corner.

The output_watermarked_video's format is designated by it's file extension.

If your system complains when typing `ffmpeg` at the linus command line then you'll need to
install ffmpeg using your linux destribution's package manager.
