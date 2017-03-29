########################################################################################################################
#!!
#! @input flow_input_$1: descrInput
#!
#! @output flow_output_0: outputOk
#! @output flow_output_$1: outputDescr
#!
#! @result CUSTOM$1: resultDescr
#!!#
########################################################################################################################
namespace: folder
flow:
  name: flow
  inputs:
    - flow_input_0:
        sensitive: true
    - flow_input_$1
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
  results:
    - CUSTOM$1
extensions:
  graph:
    steps:
      append:
        x: 236.60000610351562
        y: 104.39999389648438
        navigate:
          720520ca-515b-1ca4-ffb5-a06ec71f1361:
            targetId: 4d608c80-f39b-f6ed-c249-4ecf951be698
            port: SUCCESS
    results:
      CUSTOM$1:
        4d608c80-f39b-f6ed-c249-4ecf951be698:
          x: 434
          y: 112
