target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64"

define <16 x i8> @unaligned_load_128(i8 * nocapture %ptr) nounwind readonly alwaysinline {
  %1 = bitcast i8 * %ptr to <16 x i8> *
  %2 = load <16 x i8>* %1, align 1
  ret <16 x i8> %2
}

define void @unaligned_store_128(<16 x i8> %arg, i8 * nocapture %ptr) nounwind alwaysinline {
  %1 = bitcast i8 * %ptr to <16 x i8> *
  store <16 x i8> %arg, <16 x i8>* %1, align 1
  ret void
}

define <8 x i8> @unaligned_load_64(i8 * nocapture %ptr) nounwind readonly alwaysinline {
  %1 = bitcast i8 * %ptr to <8 x i8> *
  %2 = load <8 x i8>* %1, align 1
  ret <8 x i8> %2
}

define void @unaligned_store_64(<8 x i8> %arg, i8 * nocapture %ptr) nounwind alwaysinline {
  %1 = bitcast i8 * %ptr to <8 x i8> *
  store <8 x i8> %arg, <8 x i8>* %1, align 1
  ret void
}


