#!/usr/bin/env bash

cat > main/history.rst << EOF
Changelog
=========

EOF

git --no-pager log --pretty=format:'%d --- %h **%s** --- On (%cs) --- By <*%an*>%n%n' >> main/history.rst
echo
