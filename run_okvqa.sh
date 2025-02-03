#!/bin/bash

CUDA_VISIBLE_DEVICES='1' python evaluation.py \
--config ./configs/OKVQA_caption.yaml --dataset 'okvqa' \
--output_dir './output/vqa_result/' \
--caption_file './caption_question_files/okvqa_caption.json'  \
--question_file './caption_question_files/okvqa_question.json' \
--llm_selected_kb './knowledge_files/okvqa_pagerank_kb/' \
--sim_selected_kb './knowledge_files/okvqa_concat_similarity_kb/' \
--ans_dict_file './caption_question_files/okvqa_ans_to_cap_dict.json' \
--min_answer_length 0 --max_answer_length 10   \
--dist_selection 'hugging' \
--batch_size_test 1 --evaluate \
--model_selection 'opt-6.7b'

# 기존 llm_selected_kb file : ./knowledge_files/okvqa_selected_kb/