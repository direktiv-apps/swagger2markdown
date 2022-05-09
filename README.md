
# swagger2markdown 1.0.0

Convert swagger.yaml to markdown

---
- #### Category: Documents
- #### Image: direktiv/swagger2markdown 
- #### License: [Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0)
- #### Issue Tracking: https://github.com/direktiv-apps/swagger2markdown/issues
- #### URL: https://github.com/direktiv-apps/swagger2markdown
- #### Maintainer: [direktiv.io](https://www.direktiv.io) 
---

## About swagger2markdown

Converts a swagger file into a markdown file based on the provided template. The swagger file as well as the template have to be provided as files.

### Example(s)
  #### Function Configuration
  ```yaml
  functions:
  - id: swagger2markdown
    image: direktiv/swagger2markdown
    type: knative-workflow
  ```
   #### Basic
   ```yaml
   - id: createdoc
     type: action
     action:
      function: swagger2markdown
      files:
      - key: swagger.yaml
        scope: workflow
      - key: template
        scope: workflow 
      input: 
        template: template
   ```

### Request



#### Request Attributes
[PostParamsBody](#post-params-body)

### Response
  nice greeting
#### Reponse Types
    
  

[PostOKBody](#post-o-k-body)
#### Example Reponses
    
```json
{
  "readme": "2CgoKIyBzd2FnZ2V...gfCAgfAoKCg=="
}
```

### Errors
| Type | Description
|------|---------|
| io.direktiv.command.error | Command execution failed |
| io.direktiv.output.error | Template error for output generation of the service |
| io.direktiv.ri.error | Can not create information object from request |


### Types
#### <span id="post-o-k-body"></span> postOKBody

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| readme | string| `string` |  | | Base64 encoded markdown file. | `CgoKIyBzd2FnZ2V...gfCAgfAoKCg==` |


#### <span id="post-params-body"></span> postParamsBody

  



**Properties**

| Name | Type | Go type | Required | Default | Description | Example |
|------|------|---------|:--------:| ------- |-------------|---------|
| swagger | string| `string` |  | `"swagger.yaml"`| Path of the swagger YAML file to process. | `swagger.yaml` |
| template | string| `string` | ✓ | | Path of the template to use for markdown generation. | `template.tmpl` |

 
