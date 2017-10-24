let gulp = require('gulp');
let zip = require('gulp-zip');
let del = require('del');
let install = require('gulp-install');
let runSequence = require('run-sequence');
let awsLambda = require("node-aws-lambda");
let jsonModify = require('gulp-json-modify');

gulp.task('clean', function () {
    return del(['./dist', './dist.zip']);
});

gulp.task('js', function () {
    //this is the name of your main function file
    return gulp.src([
            'index.js',
            '../package.json'])
        .pipe(gulp.dest('dist/'));
});


gulp.task('node-mods', function () {
    return gulp.src('dist/package.json')
               .pipe(install({ production: true }));
});

gulp.task('zip', function () {
    return gulp.src(['dist/**/*', '!dist/package.json'], { nodir: true } )
        .pipe(zip('dist.zip'))
        .pipe(gulp.dest('./'));
});

gulp.task('upload', function (callback) {
    awsLambda.deploy('./dist.zip', require("./lambdaConfig.js"), callback);
});

gulp.task('deploy', function (callback) {
    return runSequence(
        ['clean'],
        ['js'],
        ['node-mods'],
        ['zip'],
        ['upload'],
        callback
    );
});