return {
    'goolord/alpha-nvim',
    enabled = false,
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
};
