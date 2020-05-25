Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195771E075C
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3C45E8820B;
	Mon, 25 May 2020 06:56:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kNEkYpVb6Pbm; Mon, 25 May 2020 06:56:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38643881A8;
	Mon, 25 May 2020 06:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E6C31BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6902C86739
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SUqkgrvwlQkY for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 994358682C
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55B3D2087D;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=gZewWdUsPFCBzd+pRc+zz/sX4QeYvYpeePKWFhDj6ac=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Et2vzbeC+WzY+Jf9ahqJ/kF9/H7yZI4ugYQ8jJEQiuk0fs/Kw8UeCmF9Ll+W23dfR
 aG874DucBsrGHB8b25hdd51GhE6WppJMVp4E3U5JfE/t8EoYGhe8D48zXPpvFpn5a7
 EPk+sgS5gUrP1HJTfTDMElVsTAv5ooq5k08QNjCk=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d7C-8L; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 08/11] media: atomisp: make it use dbg_level to control debug
 level
Date: Mon, 25 May 2020 08:56:07 +0200
Message-Id: <26e797dcc9601e46103e7eeb126bce5216891069.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver has 3 different types of debug messages:

	- dev_dbg()
	- dbg_level
	- ia_css_debug_trace_level

Which is crazy. Ideally, it shold just use dev_dbg()
everywhere, but for now let's unify the last two machanisms.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c   | 2 +-
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c           | 2 +-
 .../atomisp/pci/runtime/debug/interface/ia_css_debug.h     | 5 +++--
 .../media/atomisp/pci/runtime/debug/src/ia_css_debug.c     | 7 ++-----
 4 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 209bc9954a53..95825ded113a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -85,7 +85,7 @@ void atomisp_css_debug_set_dtrace_level(const unsigned int trace_level)
 
 unsigned int atomisp_css_debug_get_dtrace_level(void)
 {
-	return ia_css_debug_trace_level;
+	return dbg_level;
 }
 
 static void atomisp_css2_hw_store_8(hrt_address addr, uint8_t data)
diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 694268d133c0..5dc84c45965c 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -83,7 +83,7 @@ MODULE_PARM_DESC(defer_fw_load,
 /* cross componnet debug message flag */
 int dbg_level;
 module_param(dbg_level, int, 0644);
-MODULE_PARM_DESC(dbg_level, "debug message on/off (default:off)");
+MODULE_PARM_DESC(dbg_level, "debug message level (default:0)");
 
 /* log function switch */
 int dbg_func = 2;
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
index 61d612ec3a05..1e004aafe8d1 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
@@ -44,8 +44,9 @@
 #define IA_CSS_DEBUG_PARAM   8
 /*! Level for tracing info messages */
 #define IA_CSS_DEBUG_INFO    9
+
 /* Global variable which controls the verbosity levels of the debug tracing */
-extern unsigned int ia_css_debug_trace_level;
+extern int dbg_level;
 
 /*! @brief Enum defining the different isp parameters to dump.
  *  Values can be combined to dump a combination of sets.
@@ -130,7 +131,7 @@ enum ia_css_debug_enable_param_dump {
 static inline void
 ia_css_debug_vdtrace(unsigned int level, const char *fmt, va_list args)
 {
-	if (ia_css_debug_trace_level >= level)
+	if (dbg_level >= level)
 		sh_css_vprint(fmt, args);
 }
 
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
index 6fadc20104bf..4d7fb67007ed 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/src/ia_css_debug.c
@@ -103,9 +103,6 @@
 #include "gc/gc_2/ia_css_gc2.host.h"
 #include "ynr/ynr_2/ia_css_ynr2.host.h"
 
-/* Global variable to store the dtrace verbosity level */
-unsigned int ia_css_debug_trace_level = IA_CSS_DEBUG_WARNING;
-
 #define DPG_START "ia_css_debug_pipe_graph_dump_start "
 #define DPG_END   " ia_css_debug_pipe_graph_dump_end\n"
 
@@ -244,13 +241,13 @@ void ia_css_debug_dump_sp_stack_info(void)
 
 void ia_css_debug_set_dtrace_level(const unsigned int trace_level)
 {
-	ia_css_debug_trace_level = trace_level;
+	dbg_level = trace_level;
 	return;
 }
 
 unsigned int ia_css_debug_get_dtrace_level(void)
 {
-	return ia_css_debug_trace_level;
+	return dbg_level;
 }
 
 static const char *debug_stream_format2str(const enum atomisp_input_format
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
