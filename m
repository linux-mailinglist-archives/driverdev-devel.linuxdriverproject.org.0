Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A75BCF229
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 07:32:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20F0987E63;
	Tue,  8 Oct 2019 05:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id POzbUyOV6BDJ; Tue,  8 Oct 2019 05:32:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 397D587D7C;
	Tue,  8 Oct 2019 05:32:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD9571BF9B3
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A51402052F
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 05:32:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pLTGB63hOjTR for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 05:32:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id DCDA92050D
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 05:32:05 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E541C2427A60BC08B288;
 Tue,  8 Oct 2019 13:31:59 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 8 Oct 2019
 13:31:51 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 1/6] staging: bcm2835-audio: Remove set but not used variable
 'status'
Date: Tue, 8 Oct 2019 13:38:57 +0800
Message-ID: <1570513142-60177-2-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
References: <1570513142-60177-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c: In function audio_vchi_callback:
drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c:99:6: warning: variable status set but not used [-Wunused-but-set-variable]

It is not used since commit 23b028c871e1 ("staging:
bcm2835-audio: initial staging submission")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index c6f9cf1..8a94c5b 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -96,13 +96,12 @@ static void audio_vchi_callback(void *param,
 	struct bcm2835_audio_instance *instance = param;
 	struct vc_audio_msg m;
 	int msg_len;
-	int status;

 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;

-	status = vchi_msg_dequeue(instance->vchi_handle,
-				  &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
+	vchi_msg_dequeue(instance->vchi_handle,
+			 &m, sizeof(m), &msg_len, VCHI_FLAGS_NONE);
 	if (m.type == VC_AUDIO_MSG_TYPE_RESULT) {
 		instance->result = m.result.success;
 		complete(&instance->msg_avail_comp);
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
