########################################################################################################################
#!!
#! @description: flowDescriptio
#!
#! @input flow_input_0: legalInputDescr
#! @input flow_input_$1: descrInput
#! @input flow_input_2: legalInputAfter
#!
#! @output flow_output_0: legalOutputDescr
#! @output flow_output_$1: outputDescr
#! @output flow_output_2: legalOutputAfter
#!
#! @result CUSTOM$1: resultDescr
#! @result SUCCESS: legalResultAfter
#!!#
########################################################################################################################
namespace: folder
flow:
  name: flow
  inputs:
    - flow_input_0:
        sensitive: true
    - flow_input_$1
    - flow_input_2:
        default: '${flow_input_$1}'
        private: true
        required: false
  workflow:
    - append:
        do:
          io.cloudslang.base.strings.append:
            - origin_string:
                value: '123'
                sensitive: true
            - text: '${origin_string}'
            - input_0:
                value: '13'
                sensitive: true
        publish:
          - output_0: output_0
        navigate:
          - SUCCESS: CUSTOM$1
  outputs:
    - flow_output_0
    - flow_output_$1
    - flow_output_2: '${flow_output_$1}'
  results:
    - CUSTOM$1
    - SUCCESS
extensions:
  graph:
    steps:
      append:
        x: 236.60000610351562
        y: 104.39999389648437
        navigate:
          72b70de9-ed75-67b6-95a7-5ba67f47e4bd:
            targetId: 4d608c80-f39b-f6ed-c249-4ecf951be698
            port: SUCCESS
    results:
      CUSTOM$1:
        4d608c80-f39b-f6ed-c249-4ecf951be698:
          x: 434
          y: 112
      SUCCESS:
        ec2d0b40-8499-94f9-d89e-d72610f85f3b:
          x: 341.3299560546875
          y: 236.32998657226562
