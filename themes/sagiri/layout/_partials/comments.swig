{% if page.comments %}

    <div class="comments" id="comments">

    </div>

<link rel="stylesheet" href="https://neurax.obs.cn-north-1.myhuaweicloud.com/css/default.css">
<script src="https://neurax.obs.cn-north-1.myhuaweicloud.com/js/gitment.browser.js"></script>

<script>
const myTheme = {
    render(state, instance) {
        const container = document.createElement('div')
        container.className = 'gitment-container gitment-root-container'
        container.appendChild(instance.renderHeader(state, instance))
        container.appendChild(instance.renderEditor(state, instance))
        container.appendChild(instance.renderComments(state, instance))
        container.appendChild(instance.renderFooter(state, instance))
        return container
    },
}
    var gitment = new Gitment({
        owner: '1574242600',
        repo: '1574242600.github.io',
        oauth: {
            client_id: '3d44c23fd064713afe91',
            client_secret: 'd463606550d3b7649e6e645659431892a2b15ac0',
        },
        theme: myTheme,
    })
    gitment.render('comments')
</script>

{% endif %}

{% include '../_third-party/comments/index.swig' %}
