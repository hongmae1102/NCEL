CUDA_VISIBLE_DEVICES=4 python run_entity_linking.py --log_path /data/caoyx/log/ncel --training_data conll:2::/data/caoyx/el_datasets/AIDA-YAGO2-dataset.tsv --eval_data conll:0::/data/caoyx/el_datasets/AIDA-YAGO2-dataset.tsv,conll:1::/data/caoyx/el_datasets/AIDA-YAGO2-dataset.tsv --candidates_file ncel:/data/caoyx/el_datasets/ncel_candidates/dictionary-wiki_title-wiki_anchor-yago-conll-wiki_redirect_candidate_nofuzzy_unimax --wiki_entity_vocab /data/caoyx/el_datasets/vocab_entity.dat --word_embedding_file /data/caoyx/etc/eng_mpme_share/vectors_word1 --entity_embedding_file /data/caoyx/etc/eng_mpme_share/vectors_entity1 --sense_embedding_file /data/caoyx/etc/eng_mpme_share/vectors_sense1 --stop_word_file /data/caoyx/el_datasets/en_stop_words --allow_cropping --max_tokens 0 --max_candidates_per_document 0 --topn_candidate 30 --training_steps 10000 --learning_rate 0.1 --learning_rate_decay_when_no_progress 0.5 --dropout 0.0 --batch_size 5 --lowercase --noinclude_unresolved --model_type MLP --str_sim --prior --att --local_context_window 10 --global_context_window 5 --embedding_dim 200 --nomlp_ln --gpu 0 --optimizer_type SGD --nosupport_fuzzy --wiki_redirect_vocab /data/caoyx/el_datasets/redirect_id_vocab --use_lr_context --nosplit_by_sent --fine_tune_loaded_embeddings --ckpt_step 500 --early_stopping_steps_to_wait 3000 --nowrite_eval_report --noeval_only_mode --ckpt_path /data/caoyx/log/ncel --noload_best --noshow_sample