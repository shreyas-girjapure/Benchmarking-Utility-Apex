import { LightningElement } from "lwc";

function stripHtmlFromRichInnerText(htmlString) {
  let doc = new DOMParser().parseFromString(htmlString, "text/html");
  return doc.body.textContent || "";
}
export default class BenchmarkingCodeEditor extends LightningElement {
  allowedFormats = ["size", "indent", "align", "clean", "code"];
  referenceEditorValue;
  targetEditorValue;

  finalApexString;
  handleReferenceEditorChange(event) {
    this.referenceEditorValue = event.target.value;
    console.log("ref" + stripHtmlFromRichInnerText(this.referenceEditorValue));
  }
  handleTargetEditorChange(event) {
    this.targetEditorValue = event.target.value;
    console.log("target" + stripHtmlFromRichInnerText(this.targetEditorValue));
  }
  excecuteApexCode() {
    this.finalApexString = this.referenceEditorValue + this.targetEditorValue;
    if (this.finalApexString) {
      this.finalApexString = stripHtmlFromRichInnerText(this.finalApexString);
      console.log("in final string check " + this.finalApexString);
    }
  }
}
