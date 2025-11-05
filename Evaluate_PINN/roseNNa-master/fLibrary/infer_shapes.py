import onnx, onnx.shape_inference
m = onnx.load(r'.\PINN_redmdl.onnx')
m_inf = onnx.shape_inference.infer_shapes(m)
onnx.save(m_inf, r'.\PINN_redmdl_inferred.onnx')
print('Wrote PINN_redmdl_inferred.onnx')
