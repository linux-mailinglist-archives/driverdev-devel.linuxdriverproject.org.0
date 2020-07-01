Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD1C211109
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 18:49:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 959F48954C;
	Wed,  1 Jul 2020 16:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2tA6I8SJMQXQ; Wed,  1 Jul 2020 16:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 26BE089415;
	Wed,  1 Jul 2020 16:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 14F931BF868
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:49:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 116358A9F7
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6xdreF6JWuB for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 16:49:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C7FF8A9C9
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 16:49:28 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a9so798048pjh.5
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 09:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=vI6gy/BQmKGVnvRCjRKUqB8Aaf0/siwXKBwcZ/RvlFQ=;
 b=uS1ngtV06+ibIy7BC1VMuDObb8Q0N4F2ySdBjn3Mu+7bJ+zcpJeKMR09ud4BYh8ykY
 PtGzsHCiaIP/Cqp6eWWa5gYvvDWnLjSxcSmQHWcl2dkvqfgv0T+qzRGdLNhkaLVtJqp9
 azk+HwmF7ANYINDYc+qxB/kHzb153vYFoWEpElK5ehF5bnzcutvUVWJ+1k5Syk6SbQm8
 lMWIRIlJxEPnQQQSIJWkz6K6fufneh9WQkIRayP7T740WHYhpJXQWgHhzR5V/GCebwlo
 AhUeJjt4je6Pa9WhHN/JiIVZYXIMiR5D2xXULVfSlaij56tPDfXTqMXLr28ZWClU2L3M
 AcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=vI6gy/BQmKGVnvRCjRKUqB8Aaf0/siwXKBwcZ/RvlFQ=;
 b=offGmDbUgWkNhjGaE8SLtcnFe6U8j8vWwejzWVnenAmd7JRZX0JgcTrsw6/1EoEhnT
 PTjrFCeRPXBIgpiKpriFruz1zGIzkd4IypsEIp1IiNuk6tacW8ORpTjfYU4HkIfd3fCu
 WReE28fmfdeWe57VZGx+KECoppDiccqdiJ9M65TnuTJJ6ILYOIglz00qMIqf6luszC5+
 Rp9uPcRe0S3PPlEVBNYZ3xNornMLWALHC4Q3GikDywbC3yXddvH7R+NgxzugM4GAN6R1
 d4ky9ZmVIudUlQQ0utVf6IGYstE02K4QcZ7l8avX0xCYZlty+Drv/xWTHdEe5cYAIE+P
 1LBg==
X-Gm-Message-State: AOAM532UqhSQW74BdSuj/l0OwYpPMqLtjKnyduteCazREv7NxmSggkPw
 HYWPlz3+91Y4bpkwL8UBG+M=
X-Google-Smtp-Source: ABdhPJzSpu8yGeFP+GzyEybUVtNPrGp7KzIjkWRSocFZg5FH1LYFxmnwcmssvlHFkT2CAJLDzffvAg==
X-Received: by 2002:a17:90a:d30c:: with SMTP id
 p12mr7873993pju.4.1593622167420; 
 Wed, 01 Jul 2020 09:49:27 -0700 (PDT)
Received: from localhost.localdomain ([103.88.59.57])
 by smtp.googlemail.com with ESMTPSA id s9sm6470611pjz.2.2020.07.01.09.49.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 09:49:26 -0700 (PDT)
From: Baidyanath Kundu <kundubaidya99@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: atomisp: Fix __func__ style warnings
Date: Wed,  1 Jul 2020 22:18:42 +0530
Message-Id: <20200701164842.1325-1-kundubaidya99@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Baidyanath Kundu <kundubaidya99@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warning:

Prefer using '"%s...", __func__' to using '<function name>',
this function's name, in a string

Signed-off-by: Baidyanath Kundu <kundubaidya99@gmail.com>
---
 .../atomisp/pci/base/refcount/src/refcount.c  | 28 +++++++++----------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
index cf02737cf8d4..a9c881631f4a 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
+++ b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
@@ -48,7 +48,7 @@ static struct ia_css_refcount_entry *refcount_find_entry(ia_css_ptr ptr,
 		return NULL;
 	if (!myrefcount.items) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "refcount_find_entry(): Ref count not initialized!\n");
+				    "%s(): Ref count not initialized!\n", __func__);
 		return NULL;
 	}
 
@@ -73,12 +73,12 @@ int ia_css_refcount_init(uint32_t size)
 
 	if (size == 0) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-				    "ia_css_refcount_init(): Size of 0 for Ref count init!\n");
+				    "%s(): Size of 0 for Ref count init!\n", __func__);
 		return -EINVAL;
 	}
 	if (myrefcount.items) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-				    "ia_css_refcount_init(): Ref count is already initialized\n");
+				    "%s(): Ref count is already initialized\n", __func__);
 		return -EINVAL;
 	}
 	myrefcount.items =
@@ -99,7 +99,7 @@ void ia_css_refcount_uninit(void)
 	u32 i;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "ia_css_refcount_uninit() entry\n");
+			    "%s() entry\n", __func__);
 	for (i = 0; i < myrefcount.size; i++) {
 		/* driver verifier tool has issues with &arr[i]
 		   and prefers arr + i; as these are actually equivalent
@@ -120,7 +120,7 @@ void ia_css_refcount_uninit(void)
 	myrefcount.items = NULL;
 	myrefcount.size = 0;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "ia_css_refcount_uninit() leave\n");
+			    "%s() leave\n", __func__);
 }
 
 ia_css_ptr ia_css_refcount_increment(s32 id, ia_css_ptr ptr)
@@ -133,7 +133,7 @@ ia_css_ptr ia_css_refcount_increment(s32 id, ia_css_ptr ptr)
 	entry = refcount_find_entry(ptr, false);
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "ia_css_refcount_increment(%x) 0x%x\n", id, ptr);
+			    "%s(%x) 0x%x\n", __func__, id, ptr);
 
 	if (!entry) {
 		entry = refcount_find_entry(ptr, true);
@@ -145,7 +145,7 @@ ia_css_ptr ia_css_refcount_increment(s32 id, ia_css_ptr ptr)
 
 	if (entry->id != id) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "ia_css_refcount_increment(): Ref count IDS do not match!\n");
+				    "%s(): Ref count IDS do not match!\n", __func__);
 		return mmgr_NULL;
 	}
 
@@ -165,7 +165,7 @@ bool ia_css_refcount_decrement(s32 id, ia_css_ptr ptr)
 	struct ia_css_refcount_entry *entry;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "ia_css_refcount_decrement(%x) 0x%x\n", id, ptr);
+			    "%s(%x) 0x%x\n", __func__, id, ptr);
 
 	if (ptr == mmgr_NULL)
 		return false;
@@ -175,7 +175,7 @@ bool ia_css_refcount_decrement(s32 id, ia_css_ptr ptr)
 	if (entry) {
 		if (entry->id != id) {
 			ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-					    "ia_css_refcount_decrement(): Ref count IDS do not match!\n");
+					    "%s(): Ref count IDS do not match!\n", __func__);
 			return false;
 		}
 		if (entry->count > 0) {
@@ -225,8 +225,8 @@ void ia_css_refcount_clear(s32 id, clear_func clear_func_ptr)
 	u32 count = 0;
 
 	assert(clear_func_ptr);
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_refcount_clear(%x)\n",
-			    id);
+	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "%s(%x)\n",
+			    __func__, id);
 
 	for (i = 0; i < myrefcount.size; i++) {
 		/* driver verifier tool has issues with &arr[i]
@@ -236,14 +236,14 @@ void ia_css_refcount_clear(s32 id, clear_func clear_func_ptr)
 		entry = myrefcount.items + i;
 		if ((entry->data != mmgr_NULL) && (entry->id == id)) {
 			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-					    "ia_css_refcount_clear: %x: 0x%x\n",
+					    "%s: %x: 0x%x\n", __func__,
 					    id, entry->data);
 			if (clear_func_ptr) {
 				/* clear using provided function */
 				clear_func_ptr(entry->data);
 			} else {
 				ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-						    "ia_css_refcount_clear: using hmm_free: no clear_func\n");
+						    "%s: using hmm_free: no clear_func\n", __func__);
 				hmm_free(entry->data);
 			}
 
@@ -260,7 +260,7 @@ void ia_css_refcount_clear(s32 id, clear_func clear_func_ptr)
 		}
 	}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
-			    "ia_css_refcount_clear(%x): cleared %d\n", id,
+			    "%s(%x): cleared %d\n", __func__, id,
 			    count);
 }
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
