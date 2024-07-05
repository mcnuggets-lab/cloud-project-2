from transformers import pipeline

# qa_pipeline = pipeline(
#     "question-answering",
#     model="mrm8488/bert-tiny-5-finetuned-squadv2",
#     tokenizer="mrm8488/bert-tiny-5-finetuned-squadv2"
# )

qa_pipeline = pipeline(
    "question-answering",
    model="model/",
    tokenizer="model/"
)

res = qa_pipeline({
    'context': "Manuel Romero has been working hardly in the repository hugginface/transformers lately",
    'question': "Who has been working hard for hugginface/transformers lately?"

})

print(res)
