for epsilon in 0.00784 0.03137 0.06275
do 
for resume_path in surrogate_FGSM_0.03137_model_062.pth std_training_model_062.pth no_surrogate_FGSM_0.03137_model_120.pth blend_FGSM_0.03137_model_063.pth adv_training_PGD_0.03137_model_116.pth adv_training_FGSM_0.03137_model_089.pth
do 
    python run_simba.py --num_iters 10000 --freq_dims 32 --order rand --linf_bound $epsilon --resume_path checkpoint/$resume_path | tee log/$epsilon/$resume_path.txt
done
done
