#!/bin/bash

CUDA_VISIBLE_DEVICES='0' python evaluation.py \
--config ./configs/AOKVQA_caption.yaml --dataset 'aokvqa' \
--output_dir './output/vqa_result/' \
--caption_file './caption_question_files/aokvqa_val_caption.json'  \
--question_file './caption_question_files/aokvqa_val_question.json' \
--llm_selected_kb './knowledge_files/aokvqa_pagerank_kb/' \
--sim_selected_kb './knowledge_files/aokvqa_concat_similarity_kb/' \
--ans_dict_file './caption_question_files/aokvqa_val_ans_to_cap_dict.json' \
--min_answer_length 0 --max_answer_length 10   \
--dist_selection 'hugging' \
--batch_size_test 1 --evaluate \
--model_selection 'opt-6.7b' --num_caps_per_img 30 --num_question_per_img 30


# 기존 llm_selected_kb file : ./knowledge_files/aokvqa_selected_kb/

