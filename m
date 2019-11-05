Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6F4F045F
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 18:51:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D324E203F4;
	Tue,  5 Nov 2019 17:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ur+QTxVL20X; Tue,  5 Nov 2019 17:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21EED20447;
	Tue,  5 Nov 2019 17:51:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DEA61BF25B
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 76CC789057
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 17:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPkIHHgz-fqc for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 17:51:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CCA5E89055
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 17:51:12 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iS2yy-00078j-Ji; Tue, 05 Nov 2019 17:51:08 +0000
From: Colin King <colin.king@canonical.com>
To: Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH][next] staging: vboxsf: fix dereference of pointer dentry
 before it is null checked
Date: Tue,  5 Nov 2019 17:51:08 +0000
Message-Id: <20191105175108.79824-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

Currently the pointer dentry is being dereferenced before it is
being null checked.  Fix this by only dereferencing dentry once
we know it is not null.

Addresses-Coverity: ("Dereference before null check")
Fixes: df4028658f9d ("staging: Add VirtualBox guest shared folder (vboxsf) support")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/staging/vboxsf/utils.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vboxsf/utils.c b/drivers/staging/vboxsf/utils.c
index 1870b69c824e..34a49e6f74fc 100644
--- a/drivers/staging/vboxsf/utils.c
+++ b/drivers/staging/vboxsf/utils.c
@@ -174,7 +174,7 @@ int vboxsf_stat_dentry(struct dentry *dentry, struct shfl_fsobjinfo *info)
 
 int vboxsf_inode_revalidate(struct dentry *dentry)
 {
-	struct vboxsf_sbi *sbi = VBOXSF_SBI(dentry->d_sb);
+	struct vboxsf_sbi *sbi;
 	struct vboxsf_inode *sf_i;
 	struct shfl_fsobjinfo info;
 	struct timespec64 prev_mtime;
@@ -187,6 +187,7 @@ int vboxsf_inode_revalidate(struct dentry *dentry)
 	inode = d_inode(dentry);
 	prev_mtime = inode->i_mtime;
 	sf_i = VBOXSF_I(inode);
+	sbi = VBOXSF_SBI(dentry->d_sb);
 	if (!sf_i->force_restat) {
 		if (time_before(jiffies, dentry->d_time + sbi->o.ttl))
 			return 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
