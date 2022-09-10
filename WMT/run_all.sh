for lang in de "fi" gu kk lt ru zh
do
    lang="${lang}-en"
echo ============================ ${lang} =============================
python -m score_single_metric --bert_score --config-file /home/kat/Projects/PhD/BARTScore/SUM/metrics-config.json --file /home/kat/Projects/PhD/BARTScore/WMT/${lang}/data.pkl --output /home/kat/Projects/PhD/BARTScore/WMT/${lang}/bert-scores.pkl --device cuda:0
done
