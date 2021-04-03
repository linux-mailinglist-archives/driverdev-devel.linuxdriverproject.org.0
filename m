Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 428E4353444
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Apr 2021 16:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B3C1341AA6;
	Sat,  3 Apr 2021 14:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYeUEVDgFAvI; Sat,  3 Apr 2021 14:08:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A395A41A9C;
	Sat,  3 Apr 2021 14:08:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60F6B1BF2C3
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 14:07:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5058241842
 for <devel@linuxdriverproject.org>; Sat,  3 Apr 2021 14:07:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=163.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E8dXqpwO0CwN for <devel@linuxdriverproject.org>;
 Sat,  3 Apr 2021 14:07:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from m12-17.163.com (m12-17.163.com [220.181.12.17])
 by smtp2.osuosl.org (Postfix) with SMTP id 0E5B4401BD
 for <devel@driverdev.osuosl.org>; Sat,  3 Apr 2021 14:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=0qy/X
 xSv0LvNeE6/iJrXLwqgtsytvrqCk+LelXNA+8A=; b=juQBfyb6LR0uiWeYhXg9X
 eeQkYhDLjxSAGy9ydw4poGmUUwQOvgt8s43/ypWzR2qlPip6TJmmHBKzZOSUwEgc
 xhNRtxOHsmqWfKqjcP3fxBxtMiVG35QU9CdUEXn1FfRAK96Rst9T2Yx447S6tE18
 axN1W0NhTmkNPszFMkb+a8=
Received: from localhost.localdomain (unknown [120.229.64.251])
 by smtp13 (Coremail) with SMTP id EcCowAA31Hihdmhgd8zhtQ--.8258S2;
 Sat, 03 Apr 2021 22:07:30 +0800 (CST)
From: Carlis <llyz108@163.com>
To: gregkh@linuxfoundation.org,
	zhangxuezhi1@yulong.com
Subject: [PATCH] staging: fbtft: convert sysfs snprintf to sysfs_emit
Date: Sat,  3 Apr 2021 14:07:22 +0000
Message-Id: <20210403140722.169623-1-llyz108@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: EcCowAA31Hihdmhgd8zhtQ--.8258S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JrWUKr1DJFyDCF4xCF4Uurg_yoWfZrb_Ar
 10vr1Sg3y0kryIyryFkF1Sva4IvF4fZF4vg3y3t393Za15uw4rJrWUuw1ktrZIgF4xZFyf
 Ars7XryrKr1UGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8NVy7UUUUU==
X-Originating-IP: [120.229.64.251]
X-CM-SenderInfo: xoo16iiqy6il2tof0z/1tbiWwJphVSIpiU-DgAAsb
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Xuezhi Zhang <zhangxuezhi1@yulong.com>

Fix the following coccicheck warning:
drivers/staging/fbtft//fbtft-sysfs.c:202:8-16: 
WARNING: use scnprintf or sprintf

Signed-off-by: Xuezhi Zhang <zhangxuezhi1@yulong.com>
---
 drivers/staging/fbtft/fbtft-sysfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 26e52cc2d..39e8d2806 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -199,7 +199,7 @@ static ssize_t show_debug(struct device *device,
 	struct fb_info *fb_info = dev_get_drvdata(device);
 	struct fbtft_par *par = fb_info->par;
 
-	return snprintf(buf, PAGE_SIZE, "%lu\n", par->debug);
+	return sysfs_emit(buf, "%lu\n", par->debug);
 }
 
 static struct device_attribute debug_device_attr =
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
