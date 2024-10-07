import json
import shutil
from collections import Counter

def def_word_cnt(input_string, n=100):
    words = input_string.split()
    word_count = Counter(words)

    with open('result/result.json', 'w') as json_file:
        json.dump(dict(word_count), json_file, indent=4)

    def create_files(n):
        if n == 0:
            return
        shutil.copyfile('result/result.json', f'result/result_{n}.json')
        create_files(n - 1)

    create_files(n)

input_string = input("String: ")
def_word_cnt(input_string)