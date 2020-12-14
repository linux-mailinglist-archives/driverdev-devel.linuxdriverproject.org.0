Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4FA2D96DC
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78A0C87221;
	Mon, 14 Dec 2020 11:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Og+buSIvqBoE; Mon, 14 Dec 2020 11:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 548B386905;
	Mon, 14 Dec 2020 11:02:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41D8B1BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3BBE4871C9
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DdMTlEUSHnWy for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8A2F86905
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:44 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 42989240B54;
 Mon, 14 Dec 2020 12:02:42 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 4055B3280146; Mon, 14 Dec 2020 12:02:42 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/12] media: atomisp: Convert comments to C99 initializers
Date: Mon, 14 Dec 2020 12:01:45 +0100
Message-Id: <20201214110156.6152-2-Philipp.Gerlesberger@fau.de>
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

The struct initalizers have been changed as recommended on
https://kernelnewbies.org/KernelJanitors/Todo
Also remove all the false, 0, and NULL members.

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  | 22 +++++--------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index b4f53be18e7f..834b07e2cd9b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -30,34 +30,22 @@ static struct ia_css_rmgr_vbuf_handle handle_table[NUM_HANDLES];
 /*
  * @brief VBUF resource pool - refpool
  */
-static struct ia_css_rmgr_vbuf_pool refpool = {
-	false,			/* copy_on_write */
-	false,			/* recycle */
-	0,			/* size */
-	0,			/* index */
-	NULL,			/* handles */
-};
+static struct ia_css_rmgr_vbuf_pool refpool;
 
 /*
  * @brief VBUF resource pool - writepool
  */
 static struct ia_css_rmgr_vbuf_pool writepool = {
-	true,			/* copy_on_write */
-	false,			/* recycle */
-	0,			/* size */
-	0,			/* index */
-	NULL,			/* handles */
+	.copy_on_write	= true,
 };
 
 /*
  * @brief VBUF resource pool - hmmbufferpool
  */
 static struct ia_css_rmgr_vbuf_pool hmmbufferpool = {
-	true,			/* copy_on_write */
-	true,			/* recycle */
-	32,			/* size */
-	0,			/* index */
-	NULL,			/* handles */
+	.copy_on_write	= true,
+	.recycle	= true,
+	.size		= 32,
 };
 
 struct ia_css_rmgr_vbuf_pool *vbuf_ref = &refpool;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
