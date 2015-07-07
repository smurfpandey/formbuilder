Formbuilder.registerField 'grid',

  order: 55


  view: """  
    <div class="panel-body grid-body">
        <ul class="list-group">
            <% for (i in (rf.get(Formbuilder.options.mappings.ROWS) || [])) { %>
            <li class="list-group-item clearfix grid-row">
                <div class="pull-left row-data">
                    <%= rf.get(Formbuilder.options.mappings.ROWS)[i].value %>
                </div>
                <div class="pull-left column-data">
                    <ul class="no-style">
                        <% for (i in (rf.get(Formbuilder.options.mappings.COLUMNS) || [])) { %>
                        <li class="grid-column">
                            <label>
                                <input type="radio" />
                                <%= rf.get(Formbuilder.options.mappings.COLUMNS)[i].value %>
                            </label>
                        </li>
                        <% } %>
                    </ul>
                </div>
            </li>
            <% } %>
        </ul>
    </div>
  """

  edit: """
    <%= Formbuilder.templates['edit/grid']() %>
  """

  addButton: """
    <span class='symbol'><span class='fa fa-table'></span></span> Grid
  """
