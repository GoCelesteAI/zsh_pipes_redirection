# Zsh Pipes & Redirection

Source code for **Zsh Shell Tutorial - Lesson 16: Pipes & Redirection**

## Scripts

| File | Description |
|------|-------------|
| `basic_pipes.sh` | Chaining commands with `\|`, filtering, sorting, counting |
| `output_redirect.sh` | Redirecting stdout with `>` and `>>`, `/dev/null` |
| `error_redirect.sh` | Redirecting stderr with `2>`, combining stdout and stderr |
| `heredoc_tee.sh` | Here documents `<<EOF`, here strings `<<<`, and `tee` |

## Usage

```bash
chmod +x *.sh
./basic_pipes.sh
./output_redirect.sh
./error_redirect.sh
./heredoc_tee.sh
```

## Topics Covered

- Piping output between commands with `|`
- Redirecting stdout to files with `>` and `>>`
- Redirecting stderr with `2>` and combining with `2>&1`
- Discarding output with `/dev/null`
- Here documents (`<<EOF`) and here strings (`<<<`)
- Splitting output with `tee`
