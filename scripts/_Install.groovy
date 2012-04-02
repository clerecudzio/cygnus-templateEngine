//
// This script is executed by Grails after plugin was installed to project.
// This script is a Gant script so you can use all special variables provided
// by Gant (such as 'baseDir' which points on project base dir). You can
// use 'ant' to access a global instance of AntBuilder
//
// For example you can create directory under project tree:
//
//    ant.mkdir(dir:"${basedir}/grails-app/jobs")
//
includeTargets << grailsScript("_GrailsInit")

target ('default': "Installs the artifact and scaffolding templates") {
    depends(checkVersion, parseArguments)
    event 'InstallTemplatesStart', [ 'Installing Templates...' ]
    targetDir = "${basedir}/src/templates"
    overwrite = false

    // only if template dir already exists in, ask to overwrite templates
    if (new File(targetDir).exists()) {
        if (!isInteractive || confirmInput("Overwrite existing templates? [y/n]","overwrite.templates")) {
            overwrite = true
        }
    }
    else {
        ant.mkdir(dir: targetDir)
    }

    copyGrailsResources("${pluginBasedir}/artifacts", "src/grails/templates/artifacts/*", overwrite)
    copyGrailsResources("${pluginBasedir}/scaffolding", "src/grails/templates/scaffolding/*", overwrite)
    
    event("StatusUpdate", [ "Templates installed successfully"])
    event 'InstallTemplatesEnd', [ 'Finished Installing Templates.' ]
}