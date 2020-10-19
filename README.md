##Note about this version
This version is a port of ANTLR v4 (4.8) runtime library for GWT. The final idea is to define a grammar in ANTLR4, generate the parser with your desktop machine and run/parse/interpret... in your browser. The creation process is the following:

1. create your GWT project and reference this library as maven dependency (see below),
1. add the Antlr4 module as inherited module in your _app.gwt.xml_ `<inherits name="org.antlr.v4.antlr4-runtime" />`  
1. define your grammar in ANTLR4 (desktop),
2. generate the parser/visitor/listener... code in your GWT project with ANTLR4, version 4.8 (desktop),
3. use the generated parser/visitor/listener in your GWT application,
4. compile it, that's all.

This version **only migrates the parser/lexer** part and **do not deal with** the **tooling/ui** part (which are annotated with `@GwtIncompatible`).

WARNING: In this version, the use of lexer predicates reduces the global parser/lexer performances!

## Maven
Add this repository to your `pom.xml`
```xml
<repositories>
  ...
  <repository>
		<id>Antlr4-GWT</id>
		<url>https://raw.github.com/aranega/antlr4-gwt/mvn-repo/</url>
		<snapshots>
			<enabled>true</enabled>
			<updatePolicy>always</updatePolicy>
		</snapshots>
	</repository>
	...
</repositories>
```
And this dependency:
```xml
<dependencies>
  ...
  <dependency>
		<groupId>org.antlr</groupId>
		<artifactId>antlr4gwt-runtime</artifactId>
		<version>4.8.2</version>
	</dependency>
	<dependency>
		<groupId>org.antlr</groupId>
		<artifactId>antlr4gwt-annotations</artifactId>
		<version>4.8.2</version>
	</dependency>
	...
</dependencies>
```

Add this to your `app.gwt.xml`
```
<module>
  ...
  <inherits name="org.antlr.v4.antlr4-runtime" />
  ...
</module>
```

## Demo/Example

You can find an integration demonstration in the `demo` folder [README](./demo/README.adoc)

# ANTLR v4

**ANTLR** (ANother Tool for Language Recognition) is a powerful parser generator for reading, processing, executing, or translating structured text or binary files. It's widely used to build languages, tools, and frameworks. From a grammar, ANTLR generates a parser that can build parse trees and also generates a listener interface (or visitor) that makes it easy to respond to the recognition of phrases of interest.

* [Wikipedia](https://en.wikipedia.org/wiki/ANTLR)
* [Official site](http://www.antlr.org/)
* [Documentation](https://theantlrguy.atlassian.net/wiki/display/ANTLR4/ANTLR+4+Documentation)
* [FAQ](https://theantlrguy.atlassian.net/wiki/display/ANTLR4/ANTLR+v4+FAQ)
* [API](http://www.antlr.org/api/Java/index.html)
* [ANTLR v3](http://www.antlr3.org/)
* [v3 to v4 Migration guide, differences](https://theantlrguy.atlassian.net/wiki/pages/viewpage.action?pageId=1900596)

[Release notes](https://github.com/antlr/antlr4/releases)

*For installation and other getting started information, see [Getting started with v4](https://theantlrguy.atlassian.net/wiki/display/ANTLR4/Getting+Started+with+ANTLR+v4).*

## The Definitive ANTLR 4 Reference
You can buy a book [The Definitive ANTLR 4 Reference](http://pragprog.com/book/tpantlr2/the-definitive-antlr-4-reference)

Programmers run into parsing problems all the time. Whether it’s a data format like JSON, a network protocol like SMTP, a server configuration file for Apache, a PostScript/PDF file, or a simple spreadsheet macro language—ANTLR v4 and this book will demystify the process. ANTLR v4 has been rewritten from scratch to make it easier than ever to build parsers and the language applications built on top. This completely rewritten new edition of the bestselling Definitive ANTLR Reference shows you how to take advantage of these new features.

[Book source code](http://pragprog.com/titles/tpantlr2/source_code)

## Additional grammars
[This repository](https://github.com/antlr/grammars-v4) is a collection of grammars without actions where the
root directory name is the all-lowercase name of the language parsed
by the grammar. For example, java, cpp, csharp, c, etc...

## Authors and major contributors

[Terence Parr](http://www.cs.usfca.edu/~parrt/), parrt@cs.usfca.edu
ANTLR project lead and supreme dictator for life
[University of San Francisco](http://www.usfca.edu/)

[Sam Harwell](http://tunnelvisionlabs.com/)

Eric Vergnaud (Python2, Python3 targets)
