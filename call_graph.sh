# https://blog.chewxy.com/2017/01/04/what-to-test/
#
# Generates a .dot file containing a graph of all function calls in your project.
# Use a graph viz program like Gephi to create visuals.

callgraph -algo=static -format=graphviz $(go list -tags=release -f '{{.GoFiles}}' | sed -ne 's/\[//p' | sed -ne 's/\]//p') | grep -P '\-\> "(PACKAGENAME|\(\*?PACKAGENAME\.)' | uniq > callgraph.dot
