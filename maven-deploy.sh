export GPG_TTY=$(tty)
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dversion=1.17.0 -Dpackaging=aar -DpomFile=brandmessengercommons-1.17.0.pom -Dfile=brandmessengercommons-1.17.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengercommons-1.17.0.pom -Dfile=brandmessengercommons-1.17.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengercommons-1.17.0.pom -Dfile=brandmessengercommons-1.17.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dversion=1.17.0 -Dpackaging=aar -DpomFile=brandmessengercore-1.17.0.pom -Dfile=brandmessengercore-1.17.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengercore-1.17.0.pom -Dfile=brandmessengercore-1.17.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengercore-1.17.0.pom -Dfile=brandmessengercore-1.17.0-javadoc.jar -Dclassifier=javadoc

mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dversion=1.17.0 -Dpackaging=aar -DpomFile=brandmessengerui-1.17.0.pom -Dfile=brandmessengerui-1.17.0.aar
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengerui-1.17.0.pom -Dfile=brandmessengerui-1.17.0-sources.jar -Dclassifier=sources
mvn gpg:sign-and-deploy-file -Durl=https://ossrh-staging-api.central.sonatype.com/service/local/staging/deploy/maven2/ -DrepositoryId=central -Dpackaging=jar -DpomFile=brandmessengerui-1.17.0.pom -Dfile=brandmessengerui-1.17.0-javadoc.jar -Dclassifier=javadoc



curl -H "Authorization: Bearer bnZ5Ykx0Om91a3IzV3FBMllyc1hPaEh2SHUyT2k0VUpOaWpwSVl4NA==" \
     -i -X POST https://ossrh-staging-api.central.sonatype.com/manual/upload/repository/nvybLt/182.253.150.1/com.khoros--default-repository