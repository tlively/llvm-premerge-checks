#!/bin/bash
# Copyright 2019 Google LLC
#
# Licensed under the the Apache License v2.0 with LLVM Exceptions (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://llvm.org/LICENSE.txt
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

SSD_ROOT="/mnt/disks/ssd0"
AGENT_ROOT="${SSD_ROOT}/agent"

# prepare root folder for Jenkins agent
mkdir -p "${AGENT_ROOT}"
chown -R jenkins:jenkins "${AGENT_ROOT}"

# TODO(kuhnel): wipe the disk on startup
# TODO(kuhnel): move ccache to SDD

# start ssh server
/usr/sbin/sshd -D