module.exports = function (grunt) {

    var jsFiles = [
        'assets/template_front/js/jquery.min.js',
        'assets/template_front/js/bootstrap.min.js',
        'assets/template_front/js/masonry/masonry.pkgd.min.js',
        'assets/template_front/js/masonry/imagesloaded.pkgd.min.js',
        'assets/template_front/js/swal.min.js',
        'assets/template_front/js/swiper/idangerous.swiper.min.js',
        'assets/template_front/js/custom.js',
    ];
    var cssFiles = [
        'assets/template_front/css/fonts.css',
        'assets/template_front/css/bootstrap.min.css',
        'assets/template_front/css/font-awesome.min.css',
        'assets/template_front/css/idangerous.swiper.css',
        'assets/template_front/css/swal.min.css',
        'assets/template_front/css/loading.css',
        // 'assets/template_front/css/reset.css',
        'assets/template_front/css/style.css',
        'assets/template_front/css/custom.css',
    ];
    var allFiles = jsFiles.concat(cssFiles); // merge js & css files directory

    grunt.initConfig({
        jsDistDir: 'assets/template_front/js/',
        cssDistDir: 'assets/template_front/css/',
        pkg: grunt.file.readJSON('package.json'),
        concat: {
            js: {
                options: {
                    separator: ';'
                },
                src: jsFiles,
                dest: '<%=jsDistDir%>scripts.js'
            },
            css: {
                src: cssFiles,
                dest: '<%=cssDistDir%>styles.css'
            }
        },
        uglify: {
            options: {
                // sourceMap: true,
                mangle: {
                    reserved: ['jQuery']
                },
                banner: '/*! scripts <%=grunt.template.today("dd-mm-yyyy") %> */\n'
            },
            dist: {
                files: {
                    '<%=jsDistDir%>scripts.min.js': ['<%= concat.js.dest %>']
                }
            }
        },
        cssmin: {
            main: {
                options: {
                    // banner: '/*! <%= pkg.name %> <%=grunt.template.today("dd-mm-yyyy") %> */\n'
                },
                files: {
                    '<%=cssDistDir%>styles.min.css': ['<%= concat.css.dest %>']
                }
            }
        },
        watch: {
            files: allFiles,
            tasks: ['concat', 'uglify', 'cssmin']
        }
    });

    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-watch');

    grunt.registerTask('default', [
        'concat',
        'uglify',
        'cssmin',
        'watch'
    ]);

};