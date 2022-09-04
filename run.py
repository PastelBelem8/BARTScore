from bart_score import BARTScorer
bart_scorer = BARTScorer(device='cuda:0', checkpoint='facebook/bart-large')
score = bart_scorer.score(['This is interesting.'], ['This is fun.'], batch_size=4)
print(score)