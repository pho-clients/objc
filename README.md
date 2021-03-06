# PhoClient

Pho Networks REST API

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.1.1
- Package version: 
- Build package: class io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'PhoClient', :git => 'https://github.com/pho-clients/objc.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/PhoClient) and then add the following to the Podfile:

```ruby
pod 'PhoClient', :path => 'Vendor/PhoClient'
```

### Usage

Import the following:

```objc
#import <PhoClient/PhoApiClient.h>
#import <PhoClient/PhoConfiguration.h>
// load models
#import <PhoClient/PhoEdge.h>
#import <PhoClient/PhoInlineResponse200.h>
#import <PhoClient/PhoInlineResponse2001.h>
#import <PhoClient/PhoInlineResponse2002.h>
#import <PhoClient/PhoInlineResponse2003.h>
#import <PhoClient/PhoInlineResponse2003In.h>
#import <PhoClient/PhoInlineResponse2004.h>
#import <PhoClient/PhoNode.h>
#import <PhoClient/PhoNodeEdge.h>
// load API classes for accessing endpoints
#import <PhoClient/PhoDefaultApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc


NSString* *value = value_example; // The value to update the key with. (optional)

PhoDefaultApi *apiInstance = [[PhoDefaultApi alloc] init];

// updates (or creates) an attribute
[apiInstance addAttributeWithValue:value
              completionHandler: ^(PhoInlineResponse2004* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://virtserver.swaggerhub.com/phonetworks/server-rest/1.1.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*PhoDefaultApi* | [**addAttribute**](docs/PhoDefaultApi.md#addattribute) | **POST** /{uuid}/attribute/{key} | updates (or creates) an attribute
*PhoDefaultApi* | [**delAttribute**](docs/PhoDefaultApi.md#delattribute) | **DELETE** /{uuid}/attribute/{key} | deletes an attribute
*PhoDefaultApi* | [**delEntity**](docs/PhoDefaultApi.md#delentity) | **DELETE** /{uuid} | deletes an entity
*PhoDefaultApi* | [**getAllEdges**](docs/PhoDefaultApi.md#getalledges) | **GET** /{uuid}/edges/all | retrieves the edges of a node
*PhoDefaultApi* | [**getAttribute**](docs/PhoDefaultApi.md#getattribute) | **GET** /{uuid}/attribute/{key} | retrieves the value of an entity attribute
*PhoDefaultApi* | [**getAttributes**](docs/PhoDefaultApi.md#getattributes) | **GET** /{uuid}/attributes | retrieves the existing attribute keys of an entity (edge or node)
*PhoDefaultApi* | [**getEdge**](docs/PhoDefaultApi.md#getedge) | **GET** /edge/{uuid} | retrieves an edge
*PhoDefaultApi* | [**getEdgeGetters**](docs/PhoDefaultApi.md#getedgegetters) | **GET** /{uuid}/edges/getters | retrieves the edge getter methods of a node
*PhoDefaultApi* | [**getEdgeSetters**](docs/PhoDefaultApi.md#getedgesetters) | **GET** /{uuid}/edges/setters | retrieves the edge setter methods of a node
*PhoDefaultApi* | [**getFounder**](docs/PhoDefaultApi.md#getfounder) | **GET** /founder | retrieves the Graph Founder
*PhoDefaultApi* | [**getGraph**](docs/PhoDefaultApi.md#getgraph) | **GET** /graph | retrieves the main Graph
*PhoDefaultApi* | [**getIncomingEdges**](docs/PhoDefaultApi.md#getincomingedges) | **GET** /{uuid}/edges/in | retrieves the incoming edges of a node
*PhoDefaultApi* | [**getNode**](docs/PhoDefaultApi.md#getnode) | **GET** /{uuid} | retrieves a node
*PhoDefaultApi* | [**getNodeEdge**](docs/PhoDefaultApi.md#getnodeedge) | **GET** /{uuid}/{edge} | edge getter
*PhoDefaultApi* | [**getOutgoingEdges**](docs/PhoDefaultApi.md#getoutgoingedges) | **GET** /{uuid}/edges/out | retrieves the outgoing edges of a node
*PhoDefaultApi* | [**getSpace**](docs/PhoDefaultApi.md#getspace) | **GET** /space | retrieves the Space
*PhoDefaultApi* | [**getType**](docs/PhoDefaultApi.md#gettype) | **GET** /{uuid}/type | fetches entity type
*PhoDefaultApi* | [**makeActor**](docs/PhoDefaultApi.md#makeactor) | **POST** /actor | creates an Actor object
*PhoDefaultApi* | [**makeEdge**](docs/PhoDefaultApi.md#makeedge) | **POST** /{uuid}/{edge} | creates an edge
*PhoDefaultApi* | [**setAttribute**](docs/PhoDefaultApi.md#setattribute) | **PUT** /{uuid}/attribute/{key} | updates (or creates) an attribute


## Documentation For Models

 - [PhoEdge](docs/PhoEdge.md)
 - [PhoInlineResponse200](docs/PhoInlineResponse200.md)
 - [PhoInlineResponse2001](docs/PhoInlineResponse2001.md)
 - [PhoInlineResponse2002](docs/PhoInlineResponse2002.md)
 - [PhoInlineResponse2003](docs/PhoInlineResponse2003.md)
 - [PhoInlineResponse2003In](docs/PhoInlineResponse2003In.md)
 - [PhoInlineResponse2004](docs/PhoInlineResponse2004.md)
 - [PhoNode](docs/PhoNode.md)
 - [PhoNodeEdge](docs/PhoNodeEdge.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

emre@phonetworks.org


