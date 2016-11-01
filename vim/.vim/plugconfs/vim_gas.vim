" globally disable all x86_64 opcodes 
"let g:gasDisableOpcodes='x86_64' 

" disable SSE and SSE2 for this buffer 
" Disabled opcodes will be highlighted as errors
"let b:gasDisableOpcodes='sse sse2' 

"recognized CPU groups:
"186, 286, 386, 3862, 486, 8086, amd, future, ia64, katmai, nehalem, 
"p6, pentium_m, pentium, prescott, sandybridge, x64, x642, x86_64 

"recognized extension groups:
"base, 3dnow, mmx, mmx2, sse, sse2, sse3, ssse3, sse4.1, sse4.2, sse4a, 
"sse5, avx, fma, vmx 


" globally disable preprocessor macro detection
"let g:gasDisablePreproc=1 

" disable only for this buffer 
"let gasDisablePreproc=1 
