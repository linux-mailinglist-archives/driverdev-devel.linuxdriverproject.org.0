Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B252D96E3
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:03:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE674204F7;
	Mon, 14 Dec 2020 11:03:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRE53X8TygwD; Mon, 14 Dec 2020 11:02:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2E6D9204FC;
	Mon, 14 Dec 2020 11:02:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FE501BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4BCCC204ED
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SytKzQgcZ6tt for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A4B4204E7
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:49 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id A3901240B67;
 Mon, 14 Dec 2020 12:02:47 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id A19363280146; Mon, 14 Dec 2020 12:02:47 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/12] media: atomisp: Fix EMBEDDED_FUNCTION_NAME warning
Date: Mon, 14 Dec 2020 12:01:47 +0100
Message-Id: <20201214110156.6152-4-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
References: <20201214110156.6152-1-Philipp.Gerlesberger@fau.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, ij72uhux@stud.informatik.uni-erlangen.de,
 Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>,
 sakari.ailus@linux.intel.com, mchehab@kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the automatically defined __func__ macro instead of the function name,
so it stays correct when the function is renamed.

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 .../media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c        | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index 2e5c9addd9c5..92d67557e516 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -107,8 +107,7 @@ void ia_css_rmgr_refcount_retain_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
 void ia_css_rmgr_refcount_release_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
 {
 	if ((!handle) || ((*handle) == NULL) || (((*handle)->count) == 0)) {
-		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "ia_css_rmgr_refcount_release_vbuf() invalid arguments!\n");
+		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR, "%s invalid arguments!\n", __func__);
 		return;
 	}
 	/* decrease reference count */
@@ -163,10 +162,9 @@ void ia_css_rmgr_uninit_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
 {
 	u32 i;
 
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_rmgr_uninit_vbuf()\n");
+	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "%s\n", __func__);
 	if (!pool) {
-		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "ia_css_rmgr_uninit_vbuf(): NULL argument\n");
+		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR, "%s NULL argument\n", __func__);
 		return;
 	}
 	if (pool->handles) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
