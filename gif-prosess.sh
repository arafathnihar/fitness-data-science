#input_dir="/home/arafath/workspace/fitness-data-science/gif"
#output_dir="/home/arafath/workspace/fitness-data-science/gif2"
#crop="crop=w=in_w-200:h=in_h:x=200:y=0"
#for file in "$input_dir"/*.gif; do filename=$(basename -- "$file"); output_file="$output_dir/$filename"; ffmpeg -i "$file" -vf "$crop" "$output_file"; done
#crop="crop=w=in_w-120:h=in_h:x=120:y=0"
#ffmpeg -i "$input_dir/00601201.mp4.gif" -vf "$crop" "$output_dir/00601201.mp4.gif"
#input_dir="/home/arafath/workspace/fitness-data-science/gif2"
#output_dir="/home/arafath/workspace/fitness-data-science/gif3"
#crop="crop=w=in_w-200:h=in_h:x=0:y=0"
#for file in "$input_dir"/*.gif; do filename=$(basename -- "$file"); output_file="$output_dir/$filename"; ffmpeg -i "$file" -vf "$crop" "$output_file"; done
input_dir="/home/arafath/workspace/fitness-data-science/gif3"
output_dir="/home/arafath/workspace/fitness-data-science/gif4"
# Loop through each GIF file in the input directory
for file in "$input_dir"/*.gif; do
    # Get the filename without the directory path
    filename=$(basename -- "$file")
    
    # Process the GIF file and save the processed version to the output directory
    gifsicle -i "$file" -o "$output_dir/$filename" -O3 --colors 64 --lossy=200 --use-col=web --scale 0.8
done