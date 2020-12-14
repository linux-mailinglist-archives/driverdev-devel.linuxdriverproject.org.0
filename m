Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B758B2D96DD
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 12:02:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 669A887206;
	Mon, 14 Dec 2020 11:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ro56-h9LhF0P; Mon, 14 Dec 2020 11:02:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53E4B871C9;
	Mon, 14 Dec 2020 11:02:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D6A171BF45A
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3368874FA
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 11:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CQZLi3SiJHSc for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 11:02:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CFD3874F9
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 11:02:51 +0000 (UTC)
Received: from cipterm0.informatik.uni-erlangen.de (cipterm0.cip.cs.fau.de
 [131.188.30.90])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 7092B240B5A;
 Mon, 14 Dec 2020 12:02:49 +0100 (CET)
Received: by cipterm0.informatik.uni-erlangen.de (Postfix, from userid 67858)
 id 6E9D13280146; Mon, 14 Dec 2020 12:02:49 +0100 (CET)
From: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/12] media: atomisp: Fix OPEN_ENDED_LINE
Date: Mon, 14 Dec 2020 12:01:48 +0100
Message-Id: <20201214110156.6152-5-Philipp.Gerlesberger@fau.de>
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

Lines should not end with a '('

Co-developed-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Andrey Khlopkov <ij72uhux@stud.informatik.uni-erlangen.de>
Signed-off-by: Philipp Gerlesberger <Philipp.Gerlesberger@fau.de>
---
 drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index 92d67557e516..75e2d3da5969 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -178,8 +178,7 @@ void ia_css_rmgr_uninit_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
 				/* free memory */
 				hmm_free(pool->handles[i]->vptr);
 				/* remove from refcount admin */
-				ia_css_rmgr_refcount_release_vbuf(
-				    &pool->handles[i]);
+				ia_css_rmgr_refcount_release_vbuf(&pool->handles[i]);
 			}
 		}
 		/* now free the pool handles list */
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
