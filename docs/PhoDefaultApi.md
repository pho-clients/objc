# PhoDefaultApi

All URIs are relative to *https://virtserver.swaggerhub.com/phonetworks/server-rest/1.1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAttribute**](PhoDefaultApi.md#addattribute) | **POST** /{uuid}/attribute/{key} | updates (or creates) an attribute
[**delAttribute**](PhoDefaultApi.md#delattribute) | **DELETE** /{uuid}/attribute/{key} | deletes an attribute
[**delEntity**](PhoDefaultApi.md#delentity) | **DELETE** /{uuid} | deletes an entity
[**getAllEdges**](PhoDefaultApi.md#getalledges) | **GET** /{uuid}/edges/all | retrieves the edges of a node
[**getAttribute**](PhoDefaultApi.md#getattribute) | **GET** /{uuid}/attribute/{key} | retrieves the value of an entity attribute
[**getAttributes**](PhoDefaultApi.md#getattributes) | **GET** /{uuid}/attributes | retrieves the existing attribute keys of an entity (edge or node)
[**getEdge**](PhoDefaultApi.md#getedge) | **GET** /edge/{uuid} | retrieves an edge
[**getEdgeGetters**](PhoDefaultApi.md#getedgegetters) | **GET** /{uuid}/edges/getters | retrieves the edge getter methods of a node
[**getEdgeSetters**](PhoDefaultApi.md#getedgesetters) | **GET** /{uuid}/edges/setters | retrieves the edge setter methods of a node
[**getFounder**](PhoDefaultApi.md#getfounder) | **GET** /founder | retrieves the Graph Founder
[**getGraph**](PhoDefaultApi.md#getgraph) | **GET** /graph | retrieves the main Graph
[**getIncomingEdges**](PhoDefaultApi.md#getincomingedges) | **GET** /{uuid}/edges/in | retrieves the incoming edges of a node
[**getNode**](PhoDefaultApi.md#getnode) | **GET** /{uuid} | retrieves a node
[**getNodeEdge**](PhoDefaultApi.md#getnodeedge) | **GET** /{uuid}/{edge} | edge getter
[**getOutgoingEdges**](PhoDefaultApi.md#getoutgoingedges) | **GET** /{uuid}/edges/out | retrieves the outgoing edges of a node
[**getSpace**](PhoDefaultApi.md#getspace) | **GET** /space | retrieves the Space
[**getType**](PhoDefaultApi.md#gettype) | **GET** /{uuid}/type | fetches entity type
[**makeActor**](PhoDefaultApi.md#makeactor) | **POST** /actor | creates an Actor object
[**makeEdge**](PhoDefaultApi.md#makeedge) | **POST** /{uuid}/{edge} | creates an edge
[**setAttribute**](PhoDefaultApi.md#setattribute) | **PUT** /{uuid}/attribute/{key} | updates (or creates) an attribute


# **addAttribute**
```objc
-(NSNumber*) addAttributeWithValue: (NSString*) value
        completionHandler: (void (^)(PhoInlineResponse2004* output, NSError* error)) handler;
```

updates (or creates) an attribute

Works with all entities, including nodes and edges. Given its key, updates an  attribute value, or creates it, if it doesn't yet exist. 

### Example 
```objc

NSString* value = value_example; // The value to update the key with. (optional)

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// updates (or creates) an attribute
[apiInstance addAttributeWithValue:value
          completionHandler: ^(PhoInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->addAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| The value to update the key with. | [optional] 

### Return type

[**PhoInlineResponse2004***](PhoInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delAttribute**
```objc
-(NSNumber*) delAttributeWithCompletionHandler: 
        (void (^)(PhoInlineResponse2004* output, NSError* error)) handler;
```

deletes an attribute

Works with all entities, including nodes and edges. Given its key, deletes an  attribute. 

### Example 
```objc


PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// deletes an attribute
[apiInstance delAttributeWithCompletionHandler: 
          ^(PhoInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->delAttribute: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoInlineResponse2004***](PhoInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delEntity**
```objc
-(NSNumber*) delEntityWithCompletionHandler: 
        (void (^)(NSError* error)) handler;
```

deletes an entity

Works with all entities, including nodes and edges.  

### Example 
```objc


PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// deletes an entity
[apiInstance delEntityWithCompletionHandler: 
          ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->delEntity: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllEdges**
```objc
-(NSNumber*) getAllEdgesWithUuid: (NSString*) uuid
        completionHandler: (void (^)(PhoInlineResponse2003* output, NSError* error)) handler;
```

retrieves the edges of a node

By passing in a node ID, you can fetch all the edges of the node in question; including incoming and outgoing. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the edges of a node
[apiInstance getAllEdgesWithUuid:uuid
          completionHandler: ^(PhoInlineResponse2003* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getAllEdges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 

### Return type

[**PhoInlineResponse2003***](PhoInlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttribute**
```objc
-(NSNumber*) getAttributeWithUuid: (NSString*) uuid
    key: (NSString*) key
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

retrieves the value of an entity attribute

Attribute key must be case-sensitive. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID
NSString* key = @"key_example"; // The attribute key

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the value of an entity attribute
[apiInstance getAttributeWithUuid:uuid
              key:key
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 
 **key** | **NSString***| The attribute key | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAttributes**
```objc
-(NSNumber*) getAttributesWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

retrieves the existing attribute keys of an entity (edge or node)

Attribute keys are case-sensitive, and they will be listed in an array. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the existing attribute keys of an entity (edge or node)
[apiInstance getAttributesWithUuid:uuid
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getAttributes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 

### Return type

**NSArray<NSString*>***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdge**
```objc
-(NSNumber*) getEdgeWithUuid: (NSString*) uuid
        completionHandler: (void (^)(PhoEdge* output, NSError* error)) handler;
```

retrieves an edge

By passing in an ID, you can search for available edges in the system.  

### Example 
```objc

NSString* uuid = @"uuid_example"; // The edge ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves an edge
[apiInstance getEdgeWithUuid:uuid
          completionHandler: ^(PhoEdge* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getEdge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The edge ID | 

### Return type

[**PhoEdge***](PhoEdge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeGetters**
```objc
-(NSNumber*) getEdgeGettersWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

retrieves the edge getter methods of a node

By passing in a node UUID that exists in the database, you can fetch  the edge getter methods of the node in question. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the edge getter methods of a node
[apiInstance getEdgeGettersWithUuid:uuid
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getEdgeGetters: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 

### Return type

**NSArray<NSString*>***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEdgeSetters**
```objc
-(NSNumber*) getEdgeSettersWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

retrieves the edge setter methods of a node

By passing in a node UUID that exists in the database, you can fetch  the edge setter methods of the node in question. These setters may or  may not be formative. If they are formative, a new node is created in result. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the edge setter methods of a node
[apiInstance getEdgeSettersWithUuid:uuid
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getEdgeSetters: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 

### Return type

**NSArray<NSString*>***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFounder**
```objc
-(NSNumber*) getFounderWithCompletionHandler: 
        (void (^)(PhoInlineResponse200* output, NSError* error)) handler;
```

retrieves the Graph Founder

The Founder must be a \\Pho\\Framework\\Actor object.  This method returns the object type as well as object ID. 

### Example 
```objc


PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the Graph Founder
[apiInstance getFounderWithCompletionHandler: 
          ^(PhoInlineResponse200* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getFounder: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoInlineResponse200***](PhoInlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGraph**
```objc
-(NSNumber*) getGraphWithCompletionHandler: 
        (void (^)(PhoInlineResponse2001* output, NSError* error)) handler;
```

retrieves the main Graph

The Graph must be a \\Pho\\Lib\\Graph\\SubGraph and \\Pho\\Framework\\Graph object.  This method returns the object type as well as object ID. The Graph contains all nodes and edges in the system.  Though it is contained by Space, its one and only container. 

### Example 
```objc


PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the main Graph
[apiInstance getGraphWithCompletionHandler: 
          ^(PhoInlineResponse2001* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getGraph: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoInlineResponse2001***](PhoInlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIncomingEdges**
```objc
-(NSNumber*) getIncomingEdgesWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSArray<PhoNodeEdge>* output, NSError* error)) handler;
```

retrieves the incoming edges of a node

By passing in a node ID, you can fetch  the incoming edges of the node in question. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // the node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the incoming edges of a node
[apiInstance getIncomingEdgesWithUuid:uuid
          completionHandler: ^(NSArray<PhoNodeEdge>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getIncomingEdges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| the node ID | 

### Return type

[**NSArray<PhoNodeEdge>***](PhoNodeEdge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNode**
```objc
-(NSNumber*) getNodeWithUuid: (NSString*) uuid
        completionHandler: (void (^)(PhoNode* output, NSError* error)) handler;
```

retrieves a node

By passing in an ID, you can search for available nodes in the system. Please note, this function will not return edges. This method  is  reserved for nodes only.  

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves a node
[apiInstance getNodeWithUuid:uuid
          completionHandler: ^(PhoNode* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getNode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 

### Return type

[**PhoNode***](PhoNode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNodeEdge**
```objc
-(NSNumber*) getNodeEdgeWithUuid: (NSString*) uuid
    edge: (NSString*) edge
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

edge getter

Fetches edge results, whether as edge IDs or node IDs, depending on edge's characteristics.  

### Example 
```objc

NSString* uuid = @"uuid_example"; // The node ID
NSString* edge = @"edge_example"; // The edge getter label

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// edge getter
[apiInstance getNodeEdgeWithUuid:uuid
              edge:edge
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getNodeEdge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| The node ID | 
 **edge** | **NSString***| The edge getter label | 

### Return type

**NSArray<NSString*>***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOutgoingEdges**
```objc
-(NSNumber*) getOutgoingEdgesWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSArray<PhoNodeEdge>* output, NSError* error)) handler;
```

retrieves the outgoing edges of a node

By passing in a node ID, you can fetch  the outgoing edges of the node in question. 

### Example 
```objc

NSString* uuid = @"uuid_example"; // the node ID

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the outgoing edges of a node
[apiInstance getOutgoingEdgesWithUuid:uuid
          completionHandler: ^(NSArray<PhoNodeEdge>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getOutgoingEdges: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| the node ID | 

### Return type

[**NSArray<PhoNodeEdge>***](PhoNodeEdge.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpace**
```objc
-(NSNumber*) getSpaceWithCompletionHandler: 
        (void (^)(PhoInlineResponse2002* output, NSError* error)) handler;
```

retrieves the Space

The Space must be a \\Pho\\Lib\\Graph\\Graph object.  This method returns the object type as well as object uuid. Space always comes with the nil ID;  00000000000000000000000000000000, and under normal circumstances its class is always Pho\\Kernel\\Standards\\Space 

### Example 
```objc


PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// retrieves the Space
[apiInstance getSpaceWithCompletionHandler: 
          ^(PhoInlineResponse2002* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getSpace: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PhoInlineResponse2002***](PhoInlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getType**
```objc
-(NSNumber*) getTypeWithUuid: (NSString*) uuid
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

fetches entity type

Possible values are; \"Space\", \"Node\", \"Graph Node\", \"Graph\", \"Actor Node\" \"Object Node\", \"Edge\", \"Read Edge\", \"Write Edge\", \"Subscribe Edge\", \"Mention Edge\", \"Unidentified\". 

### Example 
```objc

NSString* uuid = @"uuid_example"; // the node

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// fetches entity type
[apiInstance getTypeWithUuid:uuid
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->getType: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **NSString***| the node | 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeActor**
```objc
-(NSNumber*) makeActorWithParam1: (NSString*) param1
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

creates an Actor object

Fetches whatever set as \"default_object\"=>\"actor\" while determining what Actor object to construct. If it doesn't exist, uses \"default_object\"=>\"founder\" class. Otherwise fails. 

### Example 
```objc

NSString* param1 = param1_example; // Actor constructor argument. More parameters may be passed via param2, param3 ... param50.  (optional)

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// creates an Actor object
[apiInstance makeActorWithParam1:param1
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->makeActor: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param1** | **NSString***| Actor constructor argument. More parameters may be passed via param2, param3 ... param50.  | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **makeEdge**
```objc
-(NSNumber*) makeEdgeWithParam1: (NSString*) param1
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

creates an edge

Used to set new edges. If the edge is formative, then a node is also formed. 

### Example 
```objc

NSString* param1 = param1_example; // The value to update the key with. There can be 50 of those. For example;  param1=\"value1\", param2 =\"another value\" depending on the edge's default constructor variable count.  (optional)

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// creates an edge
[apiInstance makeEdgeWithParam1:param1
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->makeEdge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **param1** | **NSString***| The value to update the key with. There can be 50 of those. For example;  param1&#x3D;\&quot;value1\&quot;, param2 &#x3D;\&quot;another value\&quot; depending on the edge&#39;s default constructor variable count.  | [optional] 

### Return type

**NSString***

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setAttribute**
```objc
-(NSNumber*) setAttributeWithValue: (NSString*) value
        completionHandler: (void (^)(PhoInlineResponse2004* output, NSError* error)) handler;
```

updates (or creates) an attribute

Works with all entities, including nodes and edges. Given its key, updates an  attribute value, or creates it, if it doesn't yet exist. 

### Example 
```objc

NSString* value = value_example; // The value to update the key with. (optional)

PhoDefaultApi*apiInstance = [[PhoDefaultApi alloc] init];

// updates (or creates) an attribute
[apiInstance setAttributeWithValue:value
          completionHandler: ^(PhoInlineResponse2004* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PhoDefaultApi->setAttribute: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| The value to update the key with. | [optional] 

### Return type

[**PhoInlineResponse2004***](PhoInlineResponse2004.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

