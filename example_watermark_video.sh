ffmpeg -i INTRACTxPOP1_-_AKM.webm -i INTRACT_POP_ONE_256x256_Trasnparent_BG.png -filter_complex "[1][0]scale2ref=oh*mdar:ih*0.2[logo][video];[video][logo]overlay=0:(main_h-overlay_h)" output_bottom_left.mp4