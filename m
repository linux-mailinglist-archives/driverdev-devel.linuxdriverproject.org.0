Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8252B2D96DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:03:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1042E20516;
	Mon, 14 Dec 2020 11:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Wa4wcrZxtPA; Mon, 14 Dec 2020 11:02:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4046A204E7;
	Mon, 14 Dec 2020 11:02:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8068C1BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 523D7204E8
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMzZLIwYt5by for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 3DEEC204CB
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:47 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 8A977240B55;
 Mon, 14 Dec 2020 12:02:45 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 8867A3280146; Mon, 14 Dec 2020 12:02:45 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/12] media: atomisp: Fix Block Comments
Date: Mon, 14 Dec 2020 12:01:46 +0100
Message-Id: <20201214110156.6152-3-Philipp.Gerlesberger@fau.de>
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

Block comments should use * on subsequent lines and
should use a trailing */ on a separate line.

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 .../staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c   | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index 834b07e2cd9b..2e5c9addd9c5 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -86,7 +86,7 @@ void ia_css_rmgr_refcount_retain_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
 			}
 		}
 		/* if the loop dus not break and *handle == NULL
-		   this is an error handle and report it.
+		 * this is an error handle and report it.
 		 */
 		if (!*handle) {
 			ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
@@ -241,7 +241,8 @@ void rmgr_pop_handle(struct ia_css_rmgr_vbuf_pool *pool,
 			*handle = pool->handles[i];
 			pool->handles[i] = NULL;
 			/* dont release, we are returning it...
-			   ia_css_rmgr_refcount_release_vbuf(handle); */
+			 * ia_css_rmgr_refcount_release_vbuf(handle);
+			 */
 			return;
 		}
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
