## libheif build static library
---
### Test with:
* libjpeg-turbo 2.0.4
* libde265 1.0.5
* libheif 1.6.2

---
### Requirements
* automake
* make
* libtool

---
### Usage
`cd build`
1. build libjpeg  
`./step1_build_jpeg.sh`
2. build de265  
`./step2_build_de265.sh`
3. build heif  
`./step3_build_heif.sh`

Thera will build `heif-convert`、`heif-info`、`heif-enc` in the build/heif/bin