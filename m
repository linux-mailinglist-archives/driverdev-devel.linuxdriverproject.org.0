Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9D276313
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 12:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C84C2BE70;
	Fri, 26 Jul 2019 09:26:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1ucp-QqZgdI; Fri, 26 Jul 2019 09:26:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D43427556;
	Fri, 26 Jul 2019 09:26:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A546B1BF592
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 09:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1DDA8841F
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 09:26:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6lBUeYTsII7V for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 09:26:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7700B8840D
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 09:26:41 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id AE30A344AC963379B5BE;
 Fri, 26 Jul 2019 17:26:38 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 26 Jul 2019
 17:26:33 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <eric@anholt.net>, <wahrenst@gmx.net>, <gregkh@linuxfoundation.org>,
 <inf.braun@fau.de>, <nishkadg.linux@gmail.com>
Subject: [PATCH v2 -next] staging: vc04_services: fix used-but-set-variable
 warning
Date: Fri, 26 Jul 2019 17:26:21 +0800
Message-ID: <20190726092621.27972-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <20190725142716.49276-1-yuehaibing@huawei.com>
References: <20190725142716.49276-1-yuehaibing@huawei.com>
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

Fix gcc used-but-set-variable warning:

drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c: In function vchiq_release_internal:
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:16: warning:
 variable local_entity_uc set but not used [-Wunused-but-set-variable]
drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c:2827:6: warning:
 variable local_uc set but not used [-Wunused-but-set-variable]

Remove the unused variables 'local_entity_uc' and 'local_uc'

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: remove the unused variable
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index cc4383d..b1595b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2824,7 +2824,6 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	VCHIQ_STATUS_T ret = VCHIQ_SUCCESS;
 	char entity[16];
 	int *entity_uc;
-	int local_uc, local_entity_uc;
 
 	if (!arm_state)
 		goto out;
@@ -2849,8 +2848,8 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 		ret = VCHIQ_ERROR;
 		goto unlock;
 	}
-	local_uc = --arm_state->videocore_use_count;
-	local_entity_uc = --(*entity_uc);
+	--arm_state->videocore_use_count;
+	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
 		if (vchiq_platform_use_suspend_timer() &&
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
