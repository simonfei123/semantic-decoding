#!/bin/sh
wget https://utexas.box.com/shared/static/7ab8qm5e3i0vfsku0ee4dc6hzgeg7nyh.zip
unzip 7ab8qm5e3i0vfsku0ee4dc6hzgeg7nyh.zip
rm 7ab8qm5e3i0vfsku0ee4dc6hzgeg7nyh.zip
wget https://utexas.box.com/shared/static/3go1g4gcdar2cntjit2knz5jwr3mvxwe.zip
unzip 3go1g4gcdar2cntjit2knz5jwr3mvxwe.zip
rm 3go1g4gcdar2cntjit2knz5jwr3mvxwe.zip
rm -r __MACOSX/
aws s3 sync --no-sign-request s3://openneuro.org/ds003020/derivative/preprocessed_data/UTS01 data_train/train_response/S1/
aws s3 sync --no-sign-request s3://openneuro.org/ds003020/derivative/preprocessed_data/UTS02 data_train/train_response/S2/
aws s3 sync --no-sign-request s3://openneuro.org/ds003020/derivative/preprocessed_data/UTS03 data_train/train_response/S3/
aws s3 sync --no-sign-request s3://openneuro.org/ds003020/derivative/TextGrids data_train/train_stimulus/
wget https://utexas.box.com/shared/static/ae5u0t3sh4f46nvmrd3skniq0kk2t5uh.zip
unzip ae5u0t3sh4f46nvmrd3skniq0kk2t5uh.zip
rm ae5u0t3sh4f46nvmrd3skniq0kk2t5uh.zip
rm -r __MACOSX/
aws s3 sync --no-sign-request s3://openneuro.org/ds004510/derivative/preprocessed_data/UTS01 data_test/test_response/S1/
aws s3 sync --no-sign-request s3://openneuro.org/ds004510/derivative/preprocessed_data/UTS02 data_test/test_response/S2/
aws s3 sync --no-sign-request s3://openneuro.org/ds004510/derivative/preprocessed_data/UTS03 data_test/test_response/S3/
aws s3 sync --no-sign-request s3://openneuro.org/ds004510/derivative/TextGrids data_test/test_stimulus/