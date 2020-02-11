Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 257FB159031
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 14:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94CFE8620F;
	Tue, 11 Feb 2020 13:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGD7L6CjkCQZ; Tue, 11 Feb 2020 13:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9669884D16;
	Tue, 11 Feb 2020 13:44:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 324181BF3FF
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 13:44:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2EC8A84D16
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 13:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Ib209Zg0V4B for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 13:44:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E8ED484C09
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 13:44:50 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D7D69541237DF4184B69;
 Tue, 11 Feb 2020 21:44:46 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Feb 2020
 21:44:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <nsaenzjulienne@suse.de>, <gregkh@linuxfoundation.org>,
 <wahrenst@gmx.net>, <jamal.k.shareef@gmail.com>, <marcgonzalez@google.com>,
 <nishkadg.linux@gmail.com>, <nachukannan@gmail.com>
Subject: [PATCH -next] staging: vc04_services: remove set but unused variable
 'local_entity_uc'
Date: Tue, 11 Feb 2020 21:43:56 +0800
Message-ID: <20200211134356.59904-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_use_internal:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2346:16:
 warning: variable local_entity_uc set but not used [-Wunused-but-set-variable]

commit bd8aa2850f00 ("staging: vc04_services: Get of even more suspend/resume states")
left behind this unused variable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index c456ced..d30d24d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2343,7 +2343,7 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	enum vchiq_status ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
-	int local_uc, local_entity_uc;
+	int local_uc;
 
 	if (!arm_state)
 		goto out;
@@ -2367,7 +2367,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 
 	write_lock_bh(&arm_state->susp_res_lock);
 	local_uc = ++arm_state->videocore_use_count;
-	local_entity_uc = ++(*entity_uc);
 
 	vchiq_log_trace(vchiq_susp_log_level,
 		"%s %s count %d, state count %d",
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
