var gulp = require('gulp');
var runSequence = require('run-sequence');
var clean = require('gulp-clean');
var concat = require('gulp-concat');
var copy = require('gulp-copy');

var config = {
    clean: ["./target"],
    concat: {
        source: [ "./icon/icon.ahk",
            "./source/usk.de/us.keyboard.for.de.input.method.ahk",
            "./source/saplogon/saplogon.ahk",
            "./source/evernote/evernote.quick.ahk"
        ],
        dest: "./target",
        targetName: "all.ahk"
    },
    copy: {
        source: "./icon/finger.ico",
        dest: "./target"
    }
};

gulp.task('default', () => {
    runSequence("clean", "concat", "copy");
});

gulp.task('clean', () => {
    gulp.src(config.clean, {read: false})
        .pipe(clean());
});

gulp.task('concat', () => {
    gulp.src(config.concat.source)
        .pipe(concat(config.concat.targetName))
        .pipe(gulp.dest(config.concat.dest))
});

gulp.task("copy", () => {
	gulp.src(config.copy.source)
		.pipe(copy(config.copy.dest, {prefix: 1}));
});