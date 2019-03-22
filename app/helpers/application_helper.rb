module ApplicationHelper
    def current_class?(test_path)
        request.path == test_path ? 'active list-group-item list-group-item-action' : 'list-group-item list-group-item-action'
    end
end
