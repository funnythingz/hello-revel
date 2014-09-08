module.exports = (grunt)->

  require('load-grunt-tasks')(grunt)

  grunt.registerTask('build', ['clean', 'typescript', 'uglify', 'copy', 'compass'])
  grunt.registerTask('default', ['build', 'open', 'watch'])

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json')

    uglify:
      dist:
        files: 'public/js/app.min.js': ['public/js/app.js']

    copy:
      assets:
        files: [{
          expand: true
          cwd: 'assets/imgs/'
          src: ['**/*.png', '**/*.jpg']
          dest: 'public/imgs/'
        }]

    typescript:
      base:
        src: ['src/ts/**/*.ts']
        dest: 'public/js/app.js'
        options:
          sourceMap: true

    compass:
      dist:
        options:
          config: 'config.rb'

    watch:
      typescript:
        files: ['src/ts/**/*.ts', 'tests/**/*.ts']
        tasks: ['clean', 'typescript', 'uglify', 'copy']

      css:
        files: ['src/scss/**/*.scss']
        tasks: ['compass']

      go:
        files: ['app/**/*.go', 'app/**/*.html']

      options:
        livereload: true

    clean: ['public/js/*', 'public/css/*']

    open:
      dist:
        path: 'http://localhost:9000'

  })
