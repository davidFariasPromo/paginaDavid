const { src, dest, watch , parallel } = require('gulp');
const sass = require('gulp-dart-sass');
const autoprefixer = require('autoprefixer');
const postcss = require('gulp-postcss')
const sourcemaps = require('gulp-sourcemaps')
const cssnano = require('cssnano');
const notify = require('gulp-notify');
const webp = require('gulp-webp');
const paths = {

    js: 'src/js/**/*.js',
    scss: 'src/scss/**/*.scss',
    imagenes: 'src/img/**/*'

}

// css es una función que se puede llamar automaticamente
function css() {
    return src(paths.scss)
        .pipe(sourcemaps.init())
        .pipe(sass())
        .pipe(postcss([autoprefixer(), cssnano()]))
        // .pipe(postcss([autoprefixer()]))
        .pipe(sourcemaps.write('.'))
        .pipe( dest('./build/css') );
}
function versionWebp(){
   return src(paths.imagenes)
        .pipe( webp())
        .pipe( dest('build/img'))
        .pipe(notify({ message: 'Imagen completada'}));
}

function watchArchivos() {
    watch( paths.scss, css );
    watch( paths.imagenes, versionWebp);
}
  
exports.default = parallel(css, versionWebp, watchArchivos ); 