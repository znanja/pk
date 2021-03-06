$NetBSD$

--- lib/dtrace/examples/function-calls.d.orig	2012-01-18 20:28:57.126923837 +0000
+++ lib/dtrace/examples/function-calls.d
@@ -0,0 +1,52 @@
+/* example usage: dtrace -q -s /path/to/function-calls.d */
+/*
+ * %CopyrightBegin%
+ * 
+ * Copyright Scott Lystig Fritchie 2011. All Rights Reserved.
+ * 
+ * The contents of this file are subject to the Erlang Public License,
+ * Version 1.1, (the "License"); you may not use this file except in
+ * compliance with the License. You should have received a copy of the
+ * Erlang Public License along with this software. If not, it can be
+ * retrieved online at http://www.erlang.org/.
+ * 
+ * Software distributed under the License is distributed on an "AS IS"
+ * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
+ * the License for the specific language governing rights and limitations
+ * under the License.
+ * 
+ * %CopyrightEnd%
+ */
+
+erlang*:::function-entry
+{
+    printf("pid %s enter  %s depth %d\n",
+	   copyinstr(arg0), copyinstr(arg1), arg2);
+}
+
+erlang*:::function-return
+{
+    printf("pid %s return %s depth %d\n",
+	   copyinstr(arg0), copyinstr(arg1), arg2);
+}
+
+erlang*:::bif-entry
+{
+    printf("pid %s BIF entry  mfa %s\n", copyinstr(arg0), copyinstr(arg1));
+}
+
+erlang*:::bif-return
+{
+    printf("pid %s BIF return mfa %s\n", copyinstr(arg0), copyinstr(arg1));
+}
+
+erlang*:::nif-entry
+{
+    printf("pid %s NIF entry  mfa %s\n", copyinstr(arg0), copyinstr(arg1));
+}
+
+erlang*:::nif-return
+{
+    printf("pid %s NIF return mfa %s\n", copyinstr(arg0), copyinstr(arg1));
+}
+
