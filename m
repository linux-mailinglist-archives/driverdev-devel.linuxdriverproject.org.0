Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AD62D19A0
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:34:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86B6087877;
	Mon,  7 Dec 2020 19:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cbhUkePcjNN1; Mon,  7 Dec 2020 19:34:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F20C1877B4;
	Mon,  7 Dec 2020 19:34:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B84CE1BF83B
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4FDC8784C
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QaK169DSq6d8 for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:34:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5A95F877B4
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:34:52 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 31FE924008B;
 Mon,  7 Dec 2020 20:29:21 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 280D43280304; Mon,  7 Dec 2020 20:29:21 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 01/12] media: atomsip: Convert comments to C99 initializers
Date: Mon,  7 Dec 2020 20:26:27 +0100
Message-Id: <20201207192638.15219-2-Philipp.Gerlesberger@fau.de>
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

The struct initalizers have been changed as recommended on
https://kernelnewbies.org/KernelJanitors/Todo

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  | 30 +++++++++----------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index b4f53be18e7f..af61d05e88d3 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -31,33 +31,33 @@ static struct ia_css_rmgr_vbuf_handle handle_table[NUM_HANDLES];
  * @brief VBUF resource pool - refpool
  */
 static struct ia_css_rmgr_vbuf_pool refpool = {
-	false,			/* copy_on_write */
-	false,			/* recycle */
-	0,			/* size */
-	0,			/* index */
-	NULL,			/* handles */
+	.copy_on_write	= false,
+	.recycle	= false,
+	.size		= 0,
+	.index		= 0,
+	.handles	= NULL,
 };
 
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
+	.recycle	= false,
+	.size		= 0,
+	.index		= 0,
+	.handles	= NULL,
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
+	.index		= 0,
+	.handles	= NULL,
 };
 
 struct ia_css_rmgr_vbuf_pool *vbuf_ref = &refpool;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
