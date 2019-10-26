# bvmap714
A cache for experimental-bvmap z=[7..14] covering 7/113/50

![](https://un-vector-tile-toolkit.github.io/signature/logo.png)

# how to use
```console
git clone https://github.com/optget/bvmap714
cd bvmap714
yarn
vi hocon/style.conf
rake build
budo
```

# `source-layer` list
- symbol (pt)
- boundary (ls)
- road (ls)
- railway (ls)
- searoute (ls)
- building (pg)
- transp (pt)
- transl (ls)
- structurel (ls)
- structurea (pg)
- coastline (ls)
- river (ls)
- lake (ls)
- waterarea (pg)
- elevation (pt)
- contour (ls)
- landformp (pt)
- landforml (ls)
- landforma (pg)
- label (pt)

# zoom levels and the content
According to the document, each zoom levels has the following content.

- z=7 1:5,000,000
- z=[8..10] 1:1,000,000
- z=[11..13] 1:200,000
- z=14 1:25,000

The `maxzoom` of the actual GSI Vector tiles is 17. However, the `maxzoom` of this project is 14 to meet the maximum size of the GitHub repository.

z=14 tiles are around 15,000 while z=17 tiles are around 1,000,000.

# See also
https://maps.gsi.go.jp/help/pdf/vector/dataspec.pdf
