Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AA54AF159D
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 13:01:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 837378A060;
	Wed,  6 Nov 2019 12:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pKxT53fM1qfo; Wed,  6 Nov 2019 12:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0FA588A014;
	Wed,  6 Nov 2019 12:01:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF5231BF5F4
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC6D520382
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 12:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kSp4bdYtEdbn for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 12:00:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 948451FEF0
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 12:00:56 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 373DB18A898A0E92176B;
 Wed,  6 Nov 2019 20:00:50 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 6 Nov 2019 20:00:40 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Hans de Goede <hdegoede@redhat.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: Fix error return code in vboxsf_fill_super()
Date: Wed, 6 Nov 2019 11:59:54 +0000
Message-ID: <20191106115954.114678-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org, Wei Yongjun <weiyongjun1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix to return negative error code -ENOMEM from the error handling
case instead of 0, as done elsewhere in this function.

Fixes: df4028658f9d ("staging: Add VirtualBox guest shared folder (vboxsf) support")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/staging/vboxsf/super.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vboxsf/super.c b/drivers/staging/vboxsf/super.c
index 3913ffafa83b..0bf4d724aefd 100644
--- a/drivers/staging/vboxsf/super.c
+++ b/drivers/staging/vboxsf/super.c
@@ -176,8 +176,10 @@ static int vboxsf_fill_super(struct super_block *sb, struct fs_context *fc)
 	/* Turn source into a shfl_string and map the folder */
 	size = strlen(fc->source) + 1;
 	folder_name = kmalloc(SHFLSTRING_HEADER_SIZE + size, GFP_KERNEL);
-	if (!folder_name)
+	if (!folder_name) {
+		err = -ENOMEM;
 		goto fail_free;
+	}
 	folder_name->size = size;
 	folder_name->length = size - 1;
 	strlcpy(folder_name->string.utf8, fc->source, size);



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
