import { LightningElement } from 'lwc';
import getImageInfo from '@salesforce/apex/CloudVisionController.getImageInfo';
export default class CloudVisionComponentLWC extends LightningElement {
    handleClick(){
        getImageInfo()
            .then((response) => {console.log(response)})
            .catch((error) => {console.log(error)})
    }
}