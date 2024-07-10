# cloud-project2

AWS Lambda deployment of a simple flask webapp of a small Q&A model.

![cloud-project2-architecture drawio](https://github.com/mcnuggets-lab/cloud-project2/assets/16054484/8504ebbd-681b-4ce9-9901-7a2cdb5e7eeb)

The model we used is a 24MB model called BERT-Tiny, fine-tuned for Q&A purpose.

The model is available from https://huggingface.co/mrm8488/bert-tiny-5-finetuned-squadv2. You will need to download the model there, and put it in the `model` folder of this repo before the image can be built properly.

You may visit the built webapp [here](https://d44w85u9f6yan.cloudfront.net/).
