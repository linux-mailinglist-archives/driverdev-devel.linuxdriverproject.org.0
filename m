Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A370F5A3D
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 22:46:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DC25864AD;
	Fri,  8 Nov 2019 21:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yUyk_zosT_wG; Fri,  8 Nov 2019 21:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0494B863DC;
	Fri,  8 Nov 2019 21:46:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C8F251BF990
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C608323B2B
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 21:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EbPl7SmVHhjz for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 21:46:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 25E1A237C8
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 21:46:51 +0000 (UTC)
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MOzCW-1iGzco0Bwa-00PKzo; Fri, 08 Nov 2019 22:33:26 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: y2038@lists.linaro.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 01/16] staging: exfat: use prandom_u32() for i_generation
Date: Fri,  8 Nov 2019 22:32:39 +0100
Message-Id: <20191108213257.3097633-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191108213257.3097633-1-arnd@arndb.de>
References: <20191108213257.3097633-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:0MSwPuOaQAzghrJEDyZlqv05bI/+SpkvfIU+MJ9BeKiWSPaHd0p
 392UEHTrotwvsLO4OcIt/xO0Z3OGprQKX5WHtFKLoQAQpDv6I2mmSdje+gQQz74ZSiHGY0F
 KijxNkEpHfi8XdJMia3y2N6RpdjFbm5OKxME6GlH17dMSMZEG8jO22jb9ol3SgxZaSltt/b
 vN8t1LsHzkSgZ06ObIKEA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PPVHXaSLYLM=:kkwNudS68WTYyHw5TTKFGZ
 /xQNOozvbmtvOu5uQLku1dmjZiXcPvXN9+qKjJb06BrWnJvU/3fXHL1PwjMZr9YxL24RDK+pS
 8oc06M/0Jc6aCrBK5vKp9wulVaYLy+gCgFfI2DIjc72Z5tVs8RIzEN0EExrIIwSy9vA/zvE38
 aq14u5kAb3erHK5kQgz8SW3ucp7oGU18BoKewB+S+wNwIYaGc2KmCWpDwwQ0yATr4QCIb5Exu
 FB16Q+eBxQDzQovw21oGPdARI0N2LLZQp+pZEIeUmgXAfO76PY0q8wKvwa4ArLjo7Hc4UNUSF
 L8S5+rBMFGfhgaYhpuvIDe2F+yh7HxtXLVaj9xTq6UmxQ2FEldljLUaLomQ+yTqCEVZQ6q1+j
 5oox8CKqezbWao8tZUpZT1GNXJs88f1P9Fip82izAPYcGM3Hub72hdNKjMBrCpxjtoqfrHDFi
 panjb8rGucUy1Go7xcrS4Myev2R0RgTuJCPDu/qi9BQ5p3F9iHhWrDPFKnjsD72+3NLjURuj+
 lTgWjK0GEdzuKFdgB4r96XvE/6fbdnS4JmkqK5ifhX63JgDYyVBGBH3tsOjA8KQKybasYVZkj
 9rM5hAP3RSNsj0Cxl2JQoCq2sLb2qLaV2nNigBoRCs4Wmu8a0GOU6wPVSqVPAKGGfiIU752wU
 vhwhJWxebE7J2s5Tr8fPpuTzaRYxOwABnHvRXCpDflFY1Ytgb1IeFVchw7lWqZeLk4wETeSDW
 yE56iEeYcftj9idU5sHePgE1dzLIayk2SBG/VJZX82ScldbQyvu233kCloWnR5RwxmbiABXhP
 cbig8msJJ3NlM3y4LqDa2JDqz+fJmS3hAxM6I4mDZVDeBtTusfUe9GUqHnDAcaX7XbAbAS+gf
 rSjYimRSudwSgAIsD7KA==
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
Cc: devel@driverdev.osuosl.org, Valentin Vidic <vvidic@valentin-vidic.from.hr>,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Similar to commit 46c9a946d766 ("shmem: use monotonic time for i_generation")
we should not use the deprecated get_seconds() interface for i_generation.

prandom_u32() is the replacement used in other file systems.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/exfat/exfat_super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 3b2b0ceb7297..da76c607f589 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -26,7 +26,7 @@
 #include <linux/sched.h>
 #include <linux/fs_struct.h>
 #include <linux/namei.h>
-
+#include <linux/random.h>
 #include <linux/string.h>
 #include <linux/nls.h>
 #include <linux/mutex.h>
@@ -3314,7 +3314,7 @@ static int exfat_fill_inode(struct inode *inode, struct file_id_t *fid)
 	inode->i_uid = sbi->options.fs_uid;
 	inode->i_gid = sbi->options.fs_gid;
 	INC_IVERSION(inode);
-	inode->i_generation = get_seconds();
+	inode->i_generation = prandom_u32();
 
 	if (info.Attr & ATTR_SUBDIR) { /* directory */
 		inode->i_generation &= ~1;
-- 
2.20.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
