module.exports = {
  purge: ['./app/**/*.html.erb'],
  theme: {
    extend: {},
  },
  variants: {
    borderRadius: ['first', 'last'],
    borderWidth: ['first', 'last', 'focus'],
    cursor: ['responsive', 'hover', 'focus', 'disabled'],
    backgroundColor: ['responsive', 'hover', 'focus', 'disabled']
  },
  plugins: [],
}
