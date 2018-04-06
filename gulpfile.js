var gulp = require('gulp');
var runSequence = require('run-sequence');
var clean = require('gulp-clean');
var concat = require('gulp-concat');

var config = {
    clean: ["./target"],
    concat: {
        source: ["./source/evernote/evernote.quick.ahk",
            "./source/saplogon/saplogon.ahk",
            "./source/usk.de/us.keyboard.for.de.input.method.ahk"],
        dest: "./target",
        targetName: "all.ahk"
    }
};

gulp.task('default', function () {
    runSequence("clean", "concat");
});

gulp.task('clean', function () {
    gulp.src(config.clean, {read: false})
        .pipe(clean());
});

gulp.task('concat', function () {
    gulp.src(config.concat.source)
        .pipe(concat(config.concat.targetName))
        .pipe(gulp.dest(config.concat.dest))
});