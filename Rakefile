task :download do
  sh "ruby download.rb"
end

task :build do 
  sh "parse-hocon hocon/style.conf --output style.json"
  sh "gl-style-validate style.json"
  sh "browserify -o bundle.js -t " +
    "[ babelify --presets [ @babel/preset-env ] ] app.js"
end

task :_mapbox do
  sh "cp ../mapbox-gl-js/dist/mapbox-gl.js ."
  sh "cp ../mapbox-gl-js/dist/mapbox-gl.js.map ."
  sh "cp ../mapbox-gl-js/dist/mapbox-gl.css ."
end

