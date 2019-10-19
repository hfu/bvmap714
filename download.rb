$maxzoom = 14

def download(z, x, y) 
  url = "https://maps.gsi.go.jp/xyz/experimental_bvmap/#{z}/#{x}/#{y}.pbf"
  cmd = "curl --output zxy/#{z}/#{x}/#{y}.pbf --retry 5 -C - \
--create-dirs --fail #{url}"
  print cmd, "\n"
  system(cmd)
end

def jump_into(z, x, y)
  download(z, x, y)
  return if z == $maxzoom
  jump_into(z + 1, 2 * x, 2 * y)
  jump_into(z + 1, 2 * x + 1, 2 * y)
  jump_into(z + 1, 2 * x, 2 * y + 1)
  jump_into(z + 1, 2 * x + 1, 2 * y + 1)
end

jump_into(7, 113, 50)
