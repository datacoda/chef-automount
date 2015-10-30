#
# Cookbook Name:: automount
# Resource:: automount
#
# Copyright (C) 2014 Nephila Graphic
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

actions :enable, :disable

attribute :name, kind_of: String, name_attribute: true

attribute :mount_point, kind_of: String
attribute :device, kind_of: String, required: true
attribute :device_type, kind_of: Symbol, equal_to: [:device, :label, :uuid, :network], default: :device
attribute :fstype, kind_of: String, required: true
attribute :options, kind_of: [Array, String], default: 'defaults'

def initialize(name, run_context = nil)
  super
  @mount_point = name
  @action = :enable
end
