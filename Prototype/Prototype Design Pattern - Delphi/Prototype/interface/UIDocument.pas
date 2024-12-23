unit UIDocument;

interface

type
  IDocument = interface
    function Clone: IDocument;
    function ShowDocumentDetails: string;
  end;

implementation

end.
