for name in ../Test/*.cmm; do ./parser < "$name" > "${name%.*}.out"; done
