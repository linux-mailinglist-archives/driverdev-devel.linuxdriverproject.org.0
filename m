Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8FE2CFAFE
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Dec 2020 11:33:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 437C987737;
	Sat,  5 Dec 2020 10:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8YKxnNXIDA8R; Sat,  5 Dec 2020 10:33:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C58E87720;
	Sat,  5 Dec 2020 10:32:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7207A1BF5DA
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 10:32:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A5E086DCA
 for <devel@linuxdriverproject.org>; Sat,  5 Dec 2020 10:32:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvdc_B0xTp98 for <devel@linuxdriverproject.org>;
 Sat,  5 Dec 2020 10:32:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 29EC986DB4
 for <devel@driverdev.osuosl.org>; Sat,  5 Dec 2020 10:32:54 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4Cp5Vj3PsRzhmyr;
 Sat,  5 Dec 2020 18:32:29 +0800 (CST)
Received: from huawei.com (10.175.113.133) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Sat, 5 Dec 2020
 18:32:49 +0800
From: Wang Hai <wanghai38@huawei.com>
To: <johan@kernel.org>, <vaibhav.sr@gmail.com>
Subject: [PATCH] staging: greybus: audio: Fix possible leak free widgets in
 gbaudio_dapm_free_controls
Date: Sat, 5 Dec 2020 18:38:27 +0800
Message-ID: <20201205103827.31244-1-wanghai38@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.133]
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, aibhav.sr@gmail.com,
 greybus-dev@lists.linaro.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In gbaudio_dapm_free_controls(), if one of the widgets is not found, an error
will be returned directly, which will cause the rest to be unable to be freed,
resulting in leak.

This patch fixes the bug. If if one of them is not found, just skip and free the others.

Fixes: 510e340efe0c ("staging: greybus: audio: Add helper APIs for dynamic audio module")
Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Wang Hai <wanghai38@huawei.com>
---
 drivers/staging/greybus/audio_helper.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_helper.c b/drivers/staging/greybus/audio_helper.c
index 237531ba60f3..3011b8abce38 100644
--- a/drivers/staging/greybus/audio_helper.c
+++ b/drivers/staging/greybus/audio_helper.c
@@ -135,7 +135,8 @@ int gbaudio_dapm_free_controls(struct snd_soc_dapm_context *dapm,
 		if (!w) {
 			dev_err(dapm->dev, "%s: widget not found\n",
 				widget->name);
-			return -EINVAL;
+			widget++;
+			continue;
 		}
 		widget++;
 #ifdef CONFIG_DEBUG_FS
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
