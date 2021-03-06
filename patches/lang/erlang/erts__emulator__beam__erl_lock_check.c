$NetBSD$

--- erts/emulator/beam/erl_lock_check.c.orig	2011-05-24 11:16:43.000000000 +0000
+++ erts/emulator/beam/erl_lock_check.c
@@ -191,6 +191,9 @@ static erts_lc_lock_order_t erts_lock_or
     {   "save_ops_lock",                        NULL                    },
 #endif
 #endif
+#ifdef	HAVE_DTRACE
+    {   "efile_drv dtrace mutex",               NULL                    },
+#endif
     {	"mtrace_buf",				NULL			},
     {	"erts_alloc_hard_debug",		NULL			}
 };
