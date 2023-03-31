
if [[ $# -ne 3 ]]; then
    echo $0 incorrect number of command line args!
    echo $0 usage:
    echo $0 input_video input_watermark_image watermarked_output_video
    echo    each of the inputs is the path to a file, 
    echo    input_video is expected to be a video file 
    echo    input_watermark_image is expected to be a png format image with transparency
    echo    the extension of the watermarked_output_video designates the output video format
    echo
else
    ffmpeg -i $1 -i $2 -filter_complex "[1][0]scale2ref=oh*mdar:ih*0.2[logo][video];[video][logo]overlay=0:(main_h-overlay_h)" $3
fi

