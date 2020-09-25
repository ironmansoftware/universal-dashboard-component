# Universal Dashboard Template Component

This template library is used for [creating custom components for Universal Dashboard](https://docs.ironmansoftware.com/dashboard/components/building-custom-components).

## Dependencies

- [NodeJS](https://nodejs.org/en/download/)
- [InvokeBuild](https://www.powershellgallery.com/packages/InvokeBuild)

## Building 

You can just run `Invoke-Build` within this folder and it will build the module. 

## Customize Template

To customize this template, you will need update some of the files. 

### PSD1 and PSM1

You need to rename the PSD1 and PSM1 file to match the name of the component you are building. You should also update the PSD1 file to include your author information and updated PSM1 file name. Within the PSM1 file, you should add the component functions you are building. 

### Package.json

Package.json will include the name of your component and any dependencies you may want to include. If you are using other react libraries, these will be added here. This can also be accomplished using `npm`. 

For example, you could install the [React95](https://github.com/React95/React95) library by using the following command line

```
npm install @react95
```

### Components

The components folder contains your JavaScript components. 

#### index.js

This is the entry point for your component. If you have more than one component, you should register it here. The ID needs to be unique within UD so make it special. 

#### component.jsx

This is the actual implementation of your component. 