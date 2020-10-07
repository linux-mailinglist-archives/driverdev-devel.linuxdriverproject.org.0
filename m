Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E847928610A
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 16:17:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35CC486374;
	Wed,  7 Oct 2020 14:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p-z5gcQuDWeo; Wed,  7 Oct 2020 14:17:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05B1D862FB;
	Wed,  7 Oct 2020 14:17:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7506C1BF337
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 14:17:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 71B6986A98
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 14:17:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BbVULBuGd1z for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 14:17:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC41F86A19
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 14:17:19 +0000 (UTC)
Received: from threadripper.lan ([46.223.126.90]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M597q-1kP3n2444S-001Eed; Wed, 07 Oct 2020 16:17:05 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH] media: atomisp: stop compiling compat_ioctl32 code
Date: Wed,  7 Oct 2020 16:16:39 +0200
Message-Id: <20201007141702.655724-1-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:Y8yolA+G5ABS7GY1qc04KI0g31bAJ4qFTOWrC7wB9JyqMFjVS39
 ggTk2D4jUgQc5Vj/zfr03QPo9rC7xsWQryhUAkc4EMD+9QO0LaO307+WDqxh5zxPgn2RPWK
 Wl8tk40ej/pMYPgpWEN0RRB9eobSSF8sWLrJ+83GE5Ze1uRnMQC6boJGXgxJsfZyp1/MFDV
 WWcBPROsuVRl5H7sZjUnw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:MTEbSjwluXQ=:bWkB9PicYlG4gxTxdFLtVA
 JGHZQHMszSUGvpCliIMJPHiQgHJID1ohNsejHNqy+Fuqum8B9wxGeP3b0UzGjsRRZFJWPPg0I
 hmj29ZfsOGli7iRbU5+RrwbLQtbvOxKK/Tp7LXLbPdGDdwg1uHNDDiAaN1/IV5pbbe32NRj74
 s7wa1AorADScK51cQllqF0LRwTDZWmXmrpxodm07dW+ymvf01WQvb0U7YW0d1nkLq1uLfTUwv
 bfozCgrPAKkwww928BsruKB9Rs8shu3VU0FdBigOps6O1ioqrYopJWSpIHwqyZ/pdVhep++6o
 XD7ylMxdbGAEZdium6DRifZU6VHeldqiUdZH0bpiaNuVuHMb8cnpi3Lm/nft27H0bVgPO+qsw
 57lVp4bzNeVHmPoNcbVZmT/kpDD04ym8vVjYiHhURgR3z52Ml5YtR1kpDqpFoqqH0+jKR/eM9
 rc3cvUSIZ0fDSLOB5vxzE9zld/8fFrCx850EEL+24jOCXe9rZnsMuBgfHubsB/Kdrs0N5Ds6k
 MFDOZtT0Wi2DvzrC6hde7gCjmJFiNiEfBFp/3/yEVZYTJnqa/3HHPkpoVdZGuVg0PmtkxQLbu
 7mRcvLcmDaHdu3EvsWT26Of/bSBKc2VbCbxSg4b2UX9Ak6L9jrl4jrLgTXMCki8PnX8tUUofi
 e7AInCix0kkkNxTgttzxd39uY0QbZyG4J4l8F1dj9FDpsulTiuqbbqk4L0w7Yp0xKMbJgt4a4
 Qock1uVdrEPqgYRGWs4UdQ/qWJmsr0qvzPYgg/DuxOsKAEZhDQd6K0cQppL4CFm8p2GYy7uEX
 4y3fi7p1xc9nCAnNIWjhCCkIElkhUwW/D/oEyzllZ2iFja/uRFspUACvVUq+pcmyakBRGEC
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is one of the last remaining users of compat_alloc_user_space()
and copy_in_user(), which are in the process of getting removed.

As of commit 57e6b6f2303e ("media: atomisp_fops.c: disable
atomisp_compat_ioctl32"), nothing in this file is actually getting used
as the only reference has been stubbed out.

Do the same thing here and stub out the implementation as well while
leaving it in place, with a comment explaining the problem.

Alternatively, the entire file could just be removed, since anyone
willing to restore the functionality can equally well just look up
the contents in the git history if needed.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../staging/media/atomisp/pci/atomisp_compat_ioctl32.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
index e5553df5bad4..bc6ef902a520 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_ioctl32.c
@@ -15,7 +15,15 @@
  *
  *
  */
-#ifdef CONFIG_COMPAT
+
+/*
+ * The compat code is disabled for now, as compat_alloc_user_space()
+ * is in the process of getting removed. The compat_ioctl implementation
+ * here was already disabled in commit 57e6b6f2303e ("media: atomisp_fops.c:
+ * disable atomisp_compat_ioctl32"), so this is all dead code, but it
+ * is left for reference as long as something like it is in fact needed.
+ */
+#if 0 /* #ifdef CONFIG_COMPAT */
 #include <linux/compat.h>
 
 #include <linux/videodev2.h>
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
