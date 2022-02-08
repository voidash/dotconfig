def share-code [file: string] {
let file_exists = ($file | path exists);

if $file_exists { 
let file_contents = (sed -e 's/\r//' -e 's/\t/\\t/g' -e 's/"/\\"/g' $file| awk ' { printf($0 "\\n") }')
let build_json = (build-string '{"public": true,"description": "' $file '","files": {"[filename]": {"filename": "' $file '", "content": "' $file_contents '"}}}')
let response = (curl -H "Authorization: token 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" https://api.github.com/gists -H "Accept: application/vnd.github.v3+json" -X  POST -d $build_json)
let create_playground_url = ($response | from json | get url | awk '{sub(/^.+gists\//,""); print}' | build-string 'https://play.rust-lang.org/?version=stable&mode=debug&edition=2018&gist=' $in) 
echo $create_playground_url
} {echo "file doesn't exist" }
}

