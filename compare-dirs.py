import os

dir1 = './dir1'
dir2 = './dir2'

# # Get list of files in dir1
# files1 = set(os.listdir(dir1))

files1 = os.listdir(dir1)
file_dict = {}
for file in files1:
    file_dict[file] = file
# files1 = dict(os.listdir(dir1))
print(file_dict)

# # Get list of files in dir2
# files2 = set(os.listdir(dir2))
# files2 = dict(os.listdir(dir2))
files2 = os.listdir(dir2)
file_dict2 = {}
for file in files2:
    file_dict2[file] = file
print(file_dict2)

# Find files in dir1 that are not in dir2
# missing_in_dir2 = files1 - files2

# # Find files in dir2 that are not in dir1
# missing_in_dir1 = files2 - files1

# # Print results
# if missing_in_dir2:
#     print(f"Files in {dir1} that are missing in {dir2}:")
#     for file in missing_in_dir2:
#         print(file)
# else:
#     print(f"All files in {dir1} are present in {dir2}")

# if missing_in_dir1:
#     print(f"Files in {dir2} that are missing in {dir1}:")
#     for file in missing_in_dir1:
#         print(file)
# else:
#     print(f"All files in {dir2} are present in {dir1}")
