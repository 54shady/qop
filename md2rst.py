import requests
import sys

def md_to_rst(from_file, to_file):
    response = requests.post(
        url='http://c.docverter.com/convert',
        data={'to': 'rst', 'from': 'markdown'},
        files={'input_files[]': open(from_file, 'rb')}
    )

    if response.ok:
        with open(to_file, "wb") as f:
            f.write(response.content)


if __name__ == '__main__':
    '''
    python md2rst.py file.md
    '''
    rstfile = sys.argv[1][:-3] + '.rst'
    md_to_rst(sys.argv[1], rstfile)
