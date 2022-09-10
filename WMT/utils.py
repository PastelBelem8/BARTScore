import os
import pickle
import sys
import json

import nltk
from mosestokenizer import *
from nltk import word_tokenize
from nltk.tokenize import sent_tokenize


nltk.download('stopwords')
detokenizer = MosesDetokenizer('en')


def read_file_to_list(file_name):
    lines = []
    with open(file_name, 'r', encoding='utf8') as f:
        for line in f.readlines():
            lines.append(line.strip())
    return lines


def write_list_to_file(list_to_write, filename):
    out_file = open(filename, 'w')
    for line in list_to_write:
        print(line, file=out_file)
    out_file.flush()
    out_file.close()
    print(f'Saved to {filename}.')


def read_pickle(file):
    with open(file, 'rb') as f:
        data = pickle.load(f)
    return data


def save_pickle(data, file):
    with open(file, 'wb') as f:
        pickle.dump(data, f)
    print(f'Saved to {file}.')


def capitalize_sents(text: str):
    """ Given a string, capitalize the initial letter of each sentence. """
    sentences = sent_tokenize(text)
    sentences = [sent.strip() for sent in sentences]
    sentences = [sent.capitalize() for sent in sentences]
    sentences = " ".join(sentences)
    return sentences


def is_capitalized(text: str):
    """ Given a string (system output etc.) , check whether it is lowercased,
        or normally capitalized.
    """
    return not text.islower()


def tokenize(text: str):
    words = word_tokenize(text)
    return " ".join(words)


def detokenize(text: str):
    words = text.split(" ")
    return detokenizer(words)


def use_original_bracket(text: str):
    return text.replace('-lrb-', '(').replace('-rrb-', ')').replace('-LRB-', '(').replace('-RRB-', ')').replace('-lsb-',
                                                                                                                '[').replace(
        '-rsb-', ']').replace('-LSB-', '[').replace('-RSB-', ']')


# Disable print
def blockPrint():
    sys.stdout = open(os.devnull, 'w')


# Restore print
def enablePrint():
    sys.stdout = sys.__stdout__


def load_configs(filepath: str) -> dict:
    if filepath:
        with open(filepath, mode="r", encoding="utf-8") as f:
            return json.load(f)
    else:
        return {}

def parse_configs(configs: dict) -> dict:
    configs = {} if configs is None else configs

    results = {}
    for metric_name, metric_hparams in configs.items():        
        results[metric_name] = [(metric_name, h) for h in metric_hparams]
    return results
