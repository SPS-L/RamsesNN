#:set architecture = [('Gemm', ['onnx::Gemm_0', 1], None), ('Tanh', ['onnx::Gemm_0'], [2]), ('Gemm', ['onnx::Gemm_0', 1], None), ('Tanh', ['onnx::Gemm_0'], [2]), ('Gemm', ['onnx::Gemm_0', 1], None), ('Tanh', ['onnx::Gemm_0'], [2]), ('Gemm', ['onnx::Gemm_0', 1], None), ('Tanh', ['onnx::Gemm_0'], [2]), ('Gemm', ['onnx::Gemm_0', 1], None)]
#:set inputs = []
#:set trueInputs = [['onnx::Gemm_0', [1, 10]]]
#:set outShape = [['21', [1, 9]]]
#:set outputs = {'21': 'onnx::Gemm_0'}
