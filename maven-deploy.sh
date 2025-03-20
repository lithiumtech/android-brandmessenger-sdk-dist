export GPG_TTY=$(tty)
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=2.0.0 -Dpackaging=aar -DpomFile=brandmessengercommons-2.0.0.pom -Dfile=brandmessengercommons-2.0.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercommons-2.0.0.pom -Dfile=brandmessengercommons-2.0.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercommons-2.0.0.pom -Dfile=brandmessengercommons-2.0.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=2.0.0 -Dpackaging=aar -DpomFile=brandmessengercore-2.0.0.pom -Dfile=brandmessengercore-2.0.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercore-2.0.0.pom -Dfile=brandmessengercore-2.0.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercore-2.0.0.pom -Dfile=brandmessengercore-2.0.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=2.0.0 -Dpackaging=aar -DpomFile=brandmessengerui-2.0.0.pom -Dfile=brandmessengerui-2.0.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengerui-2.0.0.pom -Dfile=brandmessengerui-2.0.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengerui-2.0.0.pom -Dfile=brandmessengerui-2.0.0-javadoc.jar -Dclassifier=javadoc