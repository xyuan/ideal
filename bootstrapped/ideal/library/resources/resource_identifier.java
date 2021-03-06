// Autogenerated from isource/library/resources.i

package ideal.library.resources;

import ideal.library.elements.*;
import ideal.library.channels.*;

import javax.annotation.Nullable;

public interface resource_identifier extends identifier {
  resource_identifier parent();
  boolean exists();
  resource<string> access_string(@Nullable access_option options);
  resource<resource_catalog> access_catalog();
}
