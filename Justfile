
deploy:
    @if [ "$(git rev-parse --abbrev-ref HEAD)" != "main" ]; then \
        echo "Error: not on the 'main' branch."; \
        exit 1; \
    fi
    quarto publish gh-pages
    