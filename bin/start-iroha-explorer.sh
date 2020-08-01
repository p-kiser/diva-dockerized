#!/usr/bin/env bash
#
# Iroha Explorer
#
# Copyright (C) 2020 diva.exchange
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Author/Maintainer: konrad@diva.exchange
#

# -e  Exit immediately if a simple command exits with a non-zero status
set -e

PROJECT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"/../
cd ${PROJECT_PATH}

IP_EXPLORER=${IP_EXPLORER:-"127.20.20.20"}
PORT_EXPLORER=${PORT_EXPLORER:-3920}
NAME_VOLUME_IROHA=${NAME_VOLUME_IROHA:-"iroha1"}
POSTGRES_HOST_IROHA=${POSTGRES_HOST_IROHA:-"127.19.1.1:10032"}

# start the container
docker run \
  -d \
  --env IP_EXPLORER=${IP_EXPLORER} \
  --env PORT_EXPLORER=${PORT_EXPLORER} \
  --env PATH_BLOCKSTORE_IROHA="/tmp/iroha/blockstore/" \
  --env POSTGRES_HOST_IROHA=${POSTGRES_HOST_IROHA} \
  -v ${NAME_VOLUME_IROHA}:/tmp/iroha:ro \
  -v iroha-explorer:/home/node \
  --name=iroha-explorer \
  --network host \
  divax/iroha-explorer:latest
