(local dap (require :dap))

(fn dap-config [configs]
  (each [name tbl (pairs configs)]
    (tset dap.adapters name tbl)))

; using lldb vscode

(tset dap.adapters :lldb {
    :type :executable
    :command :/usr/bin/lldb-vscode
    :name :lldb
  })

(tset dap.adapters :rust-lldb {
    :type :executable
    :command :/usr/bin/
    :name :lldb
  })
(fn set-args [name args]
  (tset dap.configurations name 1 :args args))

(let [ lldb-config {
  :name :Launch
  :type :lldb
  :request :launch
  :program (fn [] (vim.fn.input "Path to executable: " (.. (vim.fn.getcwd) :/) :file))
  :cwd "${workspaceFolder}"
  :stopOnEntry true
  :args []
  :runInTerminal false
  ; if you use runInTerminal and resize the terminal window, lldb-vscode will receive
  ; a SIGWINCH signal
;  :postRunCommands ["process handle -p true -s false -n false SIGWINCH"]
  } ]
  (doto dap.configurations
    (tset :c [lldb-config])
    (tset :cpp [lldb-config])
    (tset :rust [lldb-config])
  )

)

{ :set_args set-args }
