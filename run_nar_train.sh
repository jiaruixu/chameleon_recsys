nvidia-docker run --rm -it \
	-v /home/jiaruixu/git/chameleon_recsys/:/root \
	chameleon \
    	python3 -m nar_module.nar.nar_trainer_gcom_dlrs \
        --model_dir jobs/ \
        --train_set_path_regex "data/news-portal-user-interactions-by-globocom/sessions_tfrecords/sessions_hour_*.tfrecord.gz" \
        --train_files_from 0 \
        --train_files_up_to 72 \
        --training_hours_for_each_eval 5 \
        --acr_module_articles_metadata_csv_path data/news-portal-user-interactions-by-globocom/articles_metadata.csv \
        --acr_module_articles_content_embeddings_pickle_path data/news-portal-user-interactions-by-globocom/articles_embeddings.pickle \
        --batch_size 256 \
        --truncate_session_length 20 \
        --learning_rate 0.001 \
        --dropout_keep_prob 1.0 \
        --reg_l2 0.0001 \
        --cosine_loss_gamma 5.0 \
        --recent_clicks_buffer_size 2000 \
        --eval_metrics_top_n 5 \
        --CAR_embedding_size 1024 \
        --rnn_units 255 \
        --rnn_num_layers 1 \
        --train_total_negative_samples 7 \
        --train_negative_samples_from_buffer 10 \
        --eval_total_negative_samples 50 \
        --eval_negative_samples_from_buffer 50 \
        --save_eval_sessions_negative_samples
