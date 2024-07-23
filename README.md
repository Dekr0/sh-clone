# About

- `sh-clone` is a bare bone implementation of a terminal shell with a smaller 
number of essential commands.
- All commands are builtin instead of sourcing CLI applications from typical 
directory (e.g, `/usr/bin`). 
- Under the hood, the result of each command is obtained from system call.
- You can view `sh-clone` as a TUI processes (view as tasks) launcher with some 
utilities to manage all the processes launched under `sh-clone`.

## Compile

- run `make starter` to compile `sh-clone` executable

## Usage

- `cdir {path}` - change the current working directory of `sh-clone` to `path`
- `pdir` - print the current working directory
- `lstasks` - list all accepted tasks that have not been explicitly terminated 
by the user
    - This command is useful for obtaining `{taskNo}` for commands `stop`, 
    `continue`, and `terminate`.
- `run {pgm} [arg_1] [arg_2] [arg_3] [arg_4]` - fork a process to run the 
program specified by `pgm`, using the given arguments
    - `run` accepts at most 4 arguments may be specified for `pgm`
    - `pgm` can be any executable reside in the host
    - If `pgm` is an TUI application, `sh-clone` does not have not capability to 
    redirect use input to `pgm`
- `stop {taskNo}` - stop (temporarily) the task with task Id `taskNo` by 
sending signal `SIGSTOP` to its head process
- `continue {taskNo}` - continue the execution of the task with task Id `taskNo` 
by sending signal `SIGCONT` to its head process.
- `terminate {taskNo}` - terminate the execution of the task with taskId 
`{taskNo}` by sending signal `SIGKILL` to its head process. 
- `check {taskNo}` - print the information of a process based on a given task id 
`{taskNo}`
- `exit` - exit `sh-clone` (Terminate every task launch by `sh-clone` before exiting)
- `quit` - exit `sh-clone` (Without additional clean up step involve `exit`) 
