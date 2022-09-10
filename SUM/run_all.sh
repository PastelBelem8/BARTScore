# python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/REALSumm/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/REALSumm/bert-scores.pkl 

echo ============================ SummEVAL =============================
python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/SummEval/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/SummEval/bert-scores.pkl --multi_ref

echo ============================ NewsRoom =============================
python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/Newsroom/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/Newsroom/bert-scores.pkl 

echo ============================ QAGS_CNN =============================
python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/QAGS_CNN/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/QAGS_CNN/bert-scores.pkl

echo ============================ QAGS_XSUM =============================
python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/QAGS_XSUM/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/QAGS_XSUM/bert-scores.pkl

echo ============================ Rank19 =============================
python score_single_metric.py --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/SUM/Rank19/data.pkl --output /home/kat/Projects/PhD/BARTScore/SUM/Rank19/bert-scores.pkl
