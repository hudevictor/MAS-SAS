#!/usr/bin/env bash
# Copyright 2019 Stanford
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

cd ../build
make install -j32
cd ../python
python setup.py install
cd ../examples
#CUDA_VISIBLE_DEVICES=1 python inceptionv3.py
#CUDA_VISIBLE_DEVICES=1 python nasnet_a.py
#CUDA_VISIBLE_DEVICES=1 python resnext50.py
#CUDA_VISIBLE_DEVICES=1 python resnet50.py
#CUDA_VISIBLE_DEVICES=1 python enas.py --input_file enas_arcs.txt


#CUDA_VISIBLE_DEVICES=1 python bert.py
CUDA_VISIBLE_DEVICES=1 python nasrnn.py
