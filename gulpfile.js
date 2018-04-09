var gulp = require('gulp');
var runSequence = require('run-sequence');
var clean = require('gulp-clean');
var concat = require('gulp-concat');
var copy = require('gulp-copy');
var bom = require('gulp-bom');

var config = {
    clean: ["./dist"],
    concat: {
        source: [ 
            "./icon/icon.ahk",
            "./src/evernote/evernote.quick.ahk",
            "./src/saplogon/saplogon.ahk",
            "./src/usk.de/us.keyboard.for.de.input.method.ahk"
        ],
        dest: "./dist",
        targetName: "all.ahk"
    },
    copy: {
        source: "./icon/*.ico",
        dest: "./dist"
    }
};

gulp.task('default', () => {
    return runSequence('clean', ['concat', 'copy']);
});

gulp.task('clean', () => {
    return gulp.src(config.clean, {read: false})
        .pipe(clean());
});

gulp.task('concat', () => {
    return gulp.src(config.concat.source)
        .pipe(concat(config.concat.targetName))
        .pipe(bom())
        .pipe(gulp.dest(config.concat.dest))
});

gulp.task("copy", () => {
	return gulp.src(config.copy.source)
		.pipe(copy(config.copy.dest, {prefix: 1}));
});