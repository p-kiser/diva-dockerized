#!/usr/bin/env bash
#
# Copyright (C) 2020 diva.exchange
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
#
# Author/Maintainer: Konrad Bächler <konrad@diva.exchange>
#

# -e  Exit immediately if a simple command exits with a non-zero status
set -e

PROJECT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/../
cd ${PROJECT_PATH}
PROJECT_PATH=`pwd`/

BASE_DOMAIN=${BASE_DOMAIN:-testnet.diva.i2p}

sudo rm -rf ${PROJECT_PATH}genesis/${BASE_DOMAIN}.json
sudo rm -rf ${PROJECT_PATH}keys/${BASE_DOMAIN}
sudo rm -rf ${PROJECT_PATH}tunnels.conf.d/${BASE_DOMAIN}
sudo rm -rf ${PROJECT_PATH}b32/${BASE_DOMAIN}
sudo rm -rf ${PROJECT_PATH}i2p.${BASE_DOMAIN}.yml
sudo rm -rf ${PROJECT_PATH}${BASE_DOMAIN}.yml
