module.exports =
    config: {}

    ###*
     * Get plugin configuration
    ###
    updateConfig: () ->
        @config['console'] = atom.config.get('atom-symfony4.console')

    ###*
     * Init function called on package activation
     * Register config events and write the first config
    ###
    init: () ->
        @updateConfig()

        atom.config.onDidChange 'atom-symfony4.console', () =>
            @updateConfig()
