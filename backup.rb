<center><h2><font color="#516C8D">BOYAKI 一覧</font></h2></center><br>

<div class="container">
    <div class="row">
      <div class="col-md-8">
        <% @posts.each do |post| %>
          <div class="posts-index-item">
            <%= link_to(post.content, "/posts/#{post.id}") %>
          </div>
        <% end %>
      </div>
      <div class="col-md-4">"投稿者"</div>
    </div>
</div>


  <br>
  <center><%= link_to '盛大にBOYAKU！', new_post_path, class:"square_btn" %></center>
</div>




<!-- <center>
  <div class="index_posts_box">
    <table>
      <% @posts.each do |post| %>
        <tr class="index_tr">
          <td class="index_post"><%= post.content %></td>
          <td>
            <dl id="accordion">
              <dt><%= link_to '詳細', post_path(post.id) %></dt>
              <dt>変更↓</dt>
                <dd>
                    <%= link_to '編集', edit_post_path(post.id), data: { confirm: '本当に編集しますか？' }%>
                  <br>
                    <%= link_to '削除', post_path(post.id), method: :delete,data: { confirm: '削除しますか？' } %>
                </dd>
            </dl>
          </td>
        </tr>
      <% end %>
    </table>
  </div>
</center> -->
