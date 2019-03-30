module.exports = {
  title: 'Here Beijing',
  description: '印象·北京',
  ga: 'UA-134130074-4',
  head: [
    ['link', { rel: 'icon', href: './icon/beijing-16.png' }]
  ],
  resolve: {
    alias: {
      '@': './public'
    }
  },
  plugins: [
    [
      '@vuepress/register-components',
      {
        componentsDir: './componentss'
      }
    ]
  ]
};
