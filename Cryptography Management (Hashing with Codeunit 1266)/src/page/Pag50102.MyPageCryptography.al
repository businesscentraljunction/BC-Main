page 50102 "MyPage Cryptography"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'My Cryptography Page';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Name"; NameSource)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter some text to hash/encrypt.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Show Hashes")
            {
                ApplicationArea = All;
                Caption = 'Show Hashes';

                trigger OnAction()
                var
                    CryptoMgt: Codeunit "Cryptography Management";
                    HashAlg: Option MD5,SHA1,SHA256,SHA384,SHA512;
                    plain: Text;
                    md5Txt: Text;
                    sha1Txt: Text;
                    sha256Txt: Text;
                    sha384Txt: Text;
                    sha512Txt: Text;
                begin
                    // Take text from the page field; fallback if empty
                    plain := NameSource;

                    md5Txt := CryptoMgt.GenerateHash(plain, HashAlg::MD5);
                    sha1Txt := CryptoMgt.GenerateHash(plain, HashAlg::SHA1);
                    sha256Txt := CryptoMgt.GenerateHash(plain, HashAlg::SHA256);
                    sha384Txt := CryptoMgt.GenerateHash(plain, HashAlg::SHA384);
                    sha512Txt := CryptoMgt.GenerateHash(plain, HashAlg::SHA512);

                    Message(
                      'Input: %1\MD5: %2\SHA1: %3\SHA256: %4\SHA384: %5\SHA512: %6',
                      plain, md5Txt, sha1Txt, sha256Txt, sha384Txt, sha512Txt);
                end;
            }
        }
    }

    var
        NameSource: Text[250];
}