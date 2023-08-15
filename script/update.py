import re
import sys

file_path = './Package.swift'

archive_url = sys.argv[1]
print(archive_url)

checksum = sys.argv[2]
print(checksum)

def replace_archive_url_in_file(archive_url):
    with open(file_path, 'r') as f:
        content = f.read()

        content = re.sub(
            r'(name: "BuzzBoosterSDK",\s+url: ")[^"]+',
            r'\1' + archive_url,
            content
        )
    with open(file_path, 'w') as file:
        file.write(content)


def replace_checksum_in_file(archive_url, checksum):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    with open(file_path, 'w') as file:
        in_binary_target = False
        in_changed_archive_url = False
        for line in lines:
            if ".binaryTarget(" in line:
                in_binary_target = True
            if in_binary_target and archive_url in line:
                in_changed_archive_url = True
            if in_binary_target and in_changed_archive_url and 'checksum' in line:
                line = '      checksum: "{}"\n'.format(checksum)
                in_binary_target = False
                in_changed_archive_url = False
            file.write(line)

replace_archive_url_in_file(archive_url)
replace_checksum_in_file(archive_url, checksum)