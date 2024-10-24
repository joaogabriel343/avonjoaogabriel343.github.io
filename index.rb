# No seu controller, você pode definir os dados que serão exibidos no menu
@categories = [
  {
    title: 'Feminino',
    items: [
      { name: 'Formal', url: '#' },
      { name: 'Casual', url: '#' },
      { name: 'Perfume', url: '#' },
      { name: 'Cosméticos', url: '#' },
      { name: 'Bolsas', url: '#' },
      { name: 'Imagem', url: '#', image: { src: './assets/images/womens-banner.jpg', alt: 'moda feminina', width: '250', height: '119' } }
    ]
  },
  {
    title: 'Eletrônicos',
    items: [
      { name: 'Smart Watch', url: '#' },
      { name: 'Smart TV', url: '#' },
      { name: 'Teclado', url: '#' },
      { name: 'Mouse', url: '#' },
      { name: 'Microfone', url: '#' },
      { name: 'Imagem', url: '#', image: { src: './assets/images/electronics-banner-2.jpg', alt: 'coleção de mouses', width: '250', height: '119' } }
    ]
  },
  {
    title: 'Masculino',
    items: [
      { name: 'Camisa', url: '#' },
      { name: 'Shorts & Jeans', url: '#' },
      { name: 'Sapatos de Segurança', url: '#' },
      { name: 'Carteira', url: '#' }
    ]
  }
]

# Agora no seu arquivo de view (e.g., `app/views/categories/index.html.erb`)
<% @categories.each do |category| %>
  <ul class="dropdown-panel-list">
    <li class="menu-title">
      <a href="#"><%= category[:title] %></a>
    </li>
    <% category[:items].each do |item| %>
      <% if item[:image] %>
        <li class="panel-list-item">
          <a href="<%= item[:url] %>">
            <img src="<%= item[:image][:src] %>" alt="<%= item[:image][:alt] %>" width="<%= item[:image][:width] %>" height="<%= item[:image][:height] %>">
          </a>
        </li>
      <% else %>
        <li class="panel-list-item">
          <a href="<%= item[:url] %>"><%= item[:name] %></a>
        </li>
      <% end %>
    <% end %>
  </ul>
<% end %>
