# ADE20K
data_root="/media/ywh/pool1/yanweihao/projects/generation/FreestyleNet/data/ADEChallengeData2016"
train_txt="ADE20K_train.txt"
val_txt="ADE20K_val.txt"

python main.py --base configs/stable-diffusion/v1-finetune_ADE20K.yaml \
               -t \
               --actual_resume models/ldm/stable-diffusion/sd-v1-4-full-ema.ckpt \
               -n train_ade20k \
               --gpus 1, \
               --data_root "${data_root}" \
               --train_txt_file "${data_root}/${train_txt}" \
               --val_txt_file "${data_root}/${val_txt}"
