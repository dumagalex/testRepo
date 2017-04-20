namespace: folder
flow:
  name: flow
  workflow:
    - add_numbers:
        do:
          io.cloudslang.base.math.add_numbers:
            - value1: '1'
            - value2: '2'
        publish:
          - result
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      add_numbers:
        x: 181
        y: 102
        navigate:
          4b53a7a0-5630-95d8-e2f8-6221148feaab:
            targetId: e3d8c814-2a95-8785-ad1d-1984d7ade96d
            port: SUCCESS
    results:
      SUCCESS:
        e3d8c814-2a95-8785-ad1d-1984d7ade96d:
          x: 477
          y: 106
