<template>
  <section style="border-top: 2px solid #eaecef; padding-top: 1rem; margin-top: 2rem;">
    <div>
      <span class="leancloud-visitors" data-flag-title="Your Article Title">
        <em class="post-meta-item-text">阅读量：</em>
        <i class="leancloud-visitors-count"></i>
      </span>
    </div>
    <h3>
      <a href="javascript:;">
        评论：
      </a>
    </h3>
    <div id="vcomments"></div>
  </section>
</template>

<script>
  export default {
    name: 'Valine',
    mounted: function () {
      const Valine = require('valine');
      if (typeof window !== 'undefined') {
        document.getElementsByClassName('leancloud-visitors')[0].id = window.location.pathname
        this.window = window
        window.AV = require('leancloud-storage')
      }

      new Valine({
        el: '#vcomments',
        appId: 'OXj2RFRMsChRdJd50DEGwBFi-gzGzoHsz',
        appKey: 'OkeTOdcunxXlGa59oNdFfo5I',
        notify: true,
        verify: true,
        path: window.location.pathname,
        visitor: true,
        avatar: 'monsterid',
        placeholder: 'write here',
        pageSize: 10
      });
    }
  }
</script>
