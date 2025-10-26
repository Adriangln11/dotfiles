return {
  "epwalsh/obsidian.nvim",
  version = "*",

  opts = {
    workspaces = {
      {
        name = "Notes",
        path = "~/Documents/notes/",
      },
    },
    -- completion = {
    --
    --   nvim_cmp = true,
    --   min_chars = 2,
    -- },
    notes_subdir = "limbo",
    new_notes_location = "limbo",
    attachments = {
      img_folder = "files",
    },

    --mappings = {
    --
    --
    --   ["<leader>nn"] = {
    --     action = function()
    --       return require("obsidian").commands.new_note()
    --     end,
    --     opts = { buffer = true },
    --   },
    -- },

    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }

      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,
  },
}
