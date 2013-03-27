module.exports = function(grunt) {
  grunt.initConfig({
    coffee: {
      flatten: {
        files: {
          'app.js' : 'assets/coffee/app.coffee',
          'routes/*.js' : 'assets/coffee/routes/*.coffee',
          'models/*/js' : 'assets/coffee/models/*.coffee'
        },
        options:{
          bare: true
        }
      }
    },
    watch:{
      scripts:{
        files: [
          'assets/**/*.coffee'
        ],
        tasks: 'coffee'
      }
    },
  });

  grunt.loadNpmTasks('grunt-contrib');
  grunt.registerTask('default', 'coffee watch');

};
