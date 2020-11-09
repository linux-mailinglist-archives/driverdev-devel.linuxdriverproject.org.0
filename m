Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A022AB98B
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Nov 2020 14:10:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C1A11204D2;
	Mon,  9 Nov 2020 13:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YdkmqzfTuz5B; Mon,  9 Nov 2020 13:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C596C20531;
	Mon,  9 Nov 2020 13:10:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B70071BF37B
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 13:10:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A037A2050F
 for <devel@linuxdriverproject.org>; Mon,  9 Nov 2020 13:10:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KiRJRBU-vq8s for <devel@linuxdriverproject.org>;
 Mon,  9 Nov 2020 13:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 894AA204D2
 for <devel@driverdev.osuosl.org>; Mon,  9 Nov 2020 13:10:06 +0000 (UTC)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CVBDH08ymzLwYL;
 Mon,  9 Nov 2020 21:09:51 +0800 (CST)
Received: from huawei.com (10.175.127.227) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Mon, 9 Nov 2020
 21:10:00 +0800
From: Zhang Qilong <zhangqilong3@huawei.com>
To: <vaibhav.sr@gmail.com>, <mgreer@animalcreek.com>, <johan@kernel.org>,
 <elder@kernel.org>, <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] greybus: audio: apbridgea: Fix reference counter leak in
 error handling
Date: Mon, 9 Nov 2020 21:13:47 +0800
Message-ID: <20201109131347.1725288-3-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20201109131347.1725288-1-zhangqilong3@huawei.com>
References: <20201109131347.1725288-1-zhangqilong3@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.127.227]
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When gb_audio_apbridgea_register_cport failed, maybe:

  1) gb_pm_runtime_get_sync failed, usage counter remained unchanged;

  2) gb_hd_output failed, usage counter remained increased;

In error state, there are two different states in usage cpounter. So,
if gb_hd_output failed, we should call gb_pm_runtime_put_autosuspend
ot decrease usage counter for balabce preventing reference leak. And
we fixed it by add gb_pm_runtime_put_autosuspend when gb_hd_output
failed.

Fixes: 6ba7fad430d63 ("Add runtime pm support to audio protocol device class driver.")
Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 drivers/staging/greybus/audio_apbridgea.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_apbridgea.c b/drivers/staging/greybus/audio_apbridgea.c
index 26117e390deb..50545fd9756c 100644
--- a/drivers/staging/greybus/audio_apbridgea.c
+++ b/drivers/staging/greybus/audio_apbridgea.c
@@ -42,8 +42,12 @@ int gb_audio_apbridgea_register_cport(struct gb_connection *connection,
 	if (ret)
 		return ret;
 
-	return gb_hd_output(connection->hd, &req, sizeof(req),
+	ret = gb_hd_output(connection->hd, &req, sizeof(req),
 			    GB_APB_REQUEST_AUDIO_CONTROL, true);
+	if (ret)
+		gb_pm_runtime_put_autosuspend(connection->bundle);
+
+	return ret;
 }
 EXPORT_SYMBOL_GPL(gb_audio_apbridgea_register_cport);
 
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
