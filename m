Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E156E2D19D4
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A6D386EDB;
	Mon,  7 Dec 2020 19:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HU-RLO0QPk52; Mon,  7 Dec 2020 19:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C29D86DBF;
	Mon,  7 Dec 2020 19:40:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13E3F1BF83B
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D08086EA6
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:39:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QUTBIS1+-kFD for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:39:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C186986EA3
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:39:52 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 52A9B240DFC;
 Mon,  7 Dec 2020 20:29:59 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 508553280304; Mon,  7 Dec 2020 20:29:59 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 03/12] media: atomisp: Fix EMBEDDED_FUNCTION_NAME warning
Date: Mon,  7 Dec 2020 20:26:30 +0100
Message-Id: <20201207192638.15219-4-Philipp.Gerlesberger@fau.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
References: <20201207192638.15219-1-Philipp.Gerlesberger@fau.de>
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
index 4ba5b8f88a7d..3fb3c8c48f0b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -119,8 +119,7 @@ void ia_css_rmgr_refcount_retain_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
 void ia_css_rmgr_refcount_release_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
 {
 	if ((!handle) || ((*handle) == NULL) || (((*handle)->count) == 0)) {
-		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "ia_css_rmgr_refcount_release_vbuf() invalid arguments!\n");
+		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR, "%s invalid arguments!\n", __func__);
 		return;
 	}
 	/* decrease reference count */
@@ -175,10 +174,9 @@ void ia_css_rmgr_uninit_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
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
