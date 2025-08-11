declare module "@salesforce/apex/retrieveSObjectController.retrieveSObject" {
  export default function retrieveSObject(param: {recordId: any}): Promise<any>;
}
declare module "@salesforce/apex/retrieveSObjectController.checkPermissions" {
  export default function checkPermissions(): Promise<any>;
}
declare module "@salesforce/apex/retrieveSObjectController.updatesObject" {
  export default function updatesObject(param: {recordId: any, sObjectName: any, fieldsJSON: any}): Promise<any>;
}
