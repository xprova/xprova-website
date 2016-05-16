% Download
% Ghaith Tarawneh
% 16/05/2016

#### Download

Xprova is open source and can be downloaded from Github using:

```
git clone https://github.com/xprova/xprova
```

and then built by:

```
mvn package
```

Please note that the tool _is still in alpha!_ The source code is not broken
and will be built successfully but (as I continue to push pre-release commits)
the resulting JAR will not resemble a fully-functioning tool and will most
probably attempt to run some hard-coded tests. I will create a release tag
when the tool gets in shape for general use (drop me an email if you'd like to
be notified when this happens - my email is in [Contact](contact.htm)).

#### Dependencies

The tool is built on top of [NetlistGraph](https://github.com/xprova/netlist-graph),
a Java library for parsing gate-level verilog netlists and
representing them as graphs. A suitable build of NetlistGraph will be
downloaded automatically as a maven dependency when building Xprova.
