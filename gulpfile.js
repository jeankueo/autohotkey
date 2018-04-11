var gulp = require('gulp');
var runSequence = require('run-sequence');
var clean = require('gulp-clean');
var concat = require('gulp-concat');
var copy = require('gulp-copy');
var bom = require('gulp-bom');
var modify = require('gulp-modify');

var config = {
    destFolder: './dist',
    destFile: 'all.ahk',
    src: [ 
        './src/evernote/evernote.quick.ahk',
        './src/saplogon/saplogon.ahk',
        './src/usk.de/us.keyboard.for.de.input.method.ahk'
    ],    
    iconName:  'Bubble'
};

gulp.task('default', () => {
    return runSequence('clean', 'concat', 'modify', 'copy');
});

gulp.task('clean', () => {
    return gulp.src(config.destFolder, {read: false})
        .pipe(clean());
});

gulp.task('concat', () => {
    return gulp.src(config.src)
        .pipe(concat(config.destFile))
        .pipe(bom())
        .pipe(gulp.dest(config.destFolder))
});

gulp.task('modify', () => {
    return gulp.src(config.destFolder + '/' + config.destFile)
        .pipe(modify({fileModifier: (file, content) => {
            return 'Menu, Tray, Icon, ' + config.iconName + '.ico \n\n' + content;
        }}))
        .pipe(gulp.dest(config.destFolder));
});

gulp.task('copy', () => {
	return gulp.src('./icon/' + config.iconName + '.ico')
		.pipe(copy(config.destFolder, {prefix: 1}));
});