const { join } = require('path')

const { readJSON } = require('fs-extra')

const VERSION_FILENAME = '.fontversion.json'

const genVersionPath = output => join(output, VERSION_FILENAME)

async function checkLocalVersion(versionPath, verbose = false) {
  const log = createLogger(verbose)
  try {
    log.i('Checking local version')
    log.v(`Using -> ${versionPath}`)

    const local = await readJSON(versionPath)
    if (!local.version && !local.downloadedAt) {
      throw Error('Invalid version file')
    }

    log.i(`Local version: ${local.version}`)
    log.i(`Downloaded: ${new Date(local.downloadedAt)}`)
    log.v(`${JSON.stringify(local, null, 2)}`)

    return local.version
  } catch (error) {
    log.i("Local version doesn't exist!")
    log.v(error)
    return undefined
  }
}

function createLogger(verbose = false) {
  function log(message, data) {
    if (data) console.log(message, data)
    else console.log(message)
  }

  function logv(message, data) {
    if (verbose) log(message, data)
  }

  return { i: log, v: logv }
}

module.exports = {
  checkLocalVersion,
  VERSION_FILENAME,
  genVersionPath,
  createLogger,
}
