data_root="/media/ywh/pool1/yanweihao/projects/generation/FreestyleNet/data/cityscapes"
train_txt="Cityscapes_train_all.txt"
val_txt="Cityscapes_val_all.txt"
CUDA_VISIBLE_DEVICES=1 python main.py --base configs/stable-diffusion/v1-finetune_Cityscapes.yaml \
                                      -t \
                                      --actual_resume models/ldm/stable-diffusion/sd-v1-4-full-ema.ckpt \
                                      -n exp_Cityscapes \
                                      --gpus 0, \
                                      --data_root "${data_root}" \
                                      --train_txt_file "${data_root}/${train_txt}" \
                                      --val_txt_file "${data_root}/${val_txt}"