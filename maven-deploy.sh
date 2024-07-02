export GPG_TTY=$(tty)
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=1.16.0 -Dpackaging=aar -DpomFile=brandmessengercommons-1.16.0.pom -Dfile=brandmessengercommons-1.16.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercommons-1.16.0.pom -Dfile=brandmessengercommons-1.16.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercommons-1.16.0.pom -Dfile=brandmessengercommons-1.16.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=1.16.0 -Dpackaging=aar -DpomFile=brandmessengercore-1.16.0.pom -Dfile=brandmessengercore-1.16.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercore-1.16.0.pom -Dfile=brandmessengercore-1.16.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengercore-1.16.0.pom -Dfile=brandmessengercore-1.16.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dversion=1.16.0 -Dpackaging=aar -DpomFile=brandmessengerui-1.16.0.pom -Dfile=brandmessengerui-1.16.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengerui-1.16.0.pom -Dfile=brandmessengerui-1.16.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://s01.oss.sonatype.org/service/local/staging/deploy/maven2/ -DrepositoryId=ossrh -Dpackaging=jar -DpomFile=brandmessengerui-1.16.0.pom -Dfile=brandmessengerui-1.16.0-javadoc.jar -Dclassifier=javadoc