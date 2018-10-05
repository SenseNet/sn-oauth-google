using System;
using SenseNet.ContentRepository;

namespace SenseNet.OAuth.Google
{
    public class GoogleOAuthComponent : SnComponent
    {
        public override string ComponentId => "SenseNet.OAuth.Google";

        // This value has to change if there were database, content
        // or configuration changes since the last release that
        // should be enforced using an upgrade patch.
        public override Version SupportedVersion => new Version(1, 0, 0);
    }
}
