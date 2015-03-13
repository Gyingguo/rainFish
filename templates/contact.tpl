<div id="comment-form">
    <div id="respond">
        <h3 id="reply-title">
            给我留言
        </h3>
        <form action="/comments-post.php" method="post" id="commentform">
            <p class="comment-notes">【电子邮件地址不会被公开。 必填项已用
                <span class="required">*</span> 标注】
            </p>
            <p class="comment-form-author">
                <label for="author">姓名<span class="required">*</span></label>
                <input id="author" name="author" type="text" value="" size="30" aria-required="true">
            </p>
            <p class="comment-form-email">
                <label for="email">电子邮件<span class="required">*</span></label>
                <input id="email" name="email" type="text" value="" size="30" aria-required="true">
             </p>
            <p class="comment-form-comment">
                <label for="comment">评论<span class="required">*</span></label>
                <textarea id="comment" name="comment" style="resize:none"></textarea>
            </p>
            <p class="form-submit">
                <input name="submit" type="submit" id="submit" value="发表评论">
            </p>
       </form>
    </div>
</div>