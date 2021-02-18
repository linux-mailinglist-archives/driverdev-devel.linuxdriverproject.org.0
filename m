Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1336431E7C4
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 10:11:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE74160617
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 09:11:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Y9M4V75Zbiq for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 09:11:04 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 6ECCF605E6; Thu, 18 Feb 2021 09:11:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B53A8605CD;
	Thu, 18 Feb 2021 09:10:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85ADF1BF3C5
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 828358634C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 09:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1Dn-6Ol3riHy for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 09:10:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztbu10011701.me.com (pv50p00im-ztbu10011701.me.com
 [17.58.6.53])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26591862B4
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613639435;
 bh=p7EGsARMs8loX+nsASACt4s7/oUqHQ9NEmCad21rcOc=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=vm129guHsQpLa3P91QHDdHQn3tf9n8kJXCEuO0hzQhob+nFPmzxJJiHftJnHQCQXx
 jGUxXLx4LU9k30VhhzoRgiL1gZnXDlYHwjjbBp5NHys8fuVkjyUCJRWfdfVFCvtg87
 hr7ZK65bflEYp4xfVDsfSWDaBPUidQiQwaYx2CWuoYg00V+N8oX4/vqzbGopDhpMdl
 cNEIkdCikSBCml16vu2C7KW4LcUUw0YHk7ri/xpuWVUdmVAY0IHFl+MnoiRwjfneYW
 Ck0p3oYvWqibhRaH8jN3Pnm1vg+En703zJAkuVH7r8qN/cljY+P8/nRaovxD2w1AfX
 UdtnJTC2qSlow==
Received: from everest.nathzi1505 (unknown [43.231.242.253])
 by pv50p00im-ztbu10011701.me.com (Postfix) with ESMTPSA id 52C288A04DE;
 Thu, 18 Feb 2021 09:10:29 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: nsaenzjulienne@suse.de, arnd@arndb.de, dan.carpenter@oracle.com,
 amarjargal16@gmail.com, phil@raspberrypi.com, gregkh@linuxfoundation.org
Subject: [PATCH] staging: vc04_services: Fixed address type mismatch in
 vchiq_arm.c
Date: Thu, 18 Feb 2021 14:40:15 +0530
Message-Id: <20210218091015.92467-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-18_04:2021-02-18,
 2021-02-18 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102180078
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
Cc: devel@driverdev.osuosl.org, Pritthijit Nath <pritthijit.nath@icloud.com>,
 linux-kernel@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a sparse address type mismatch warning "incorrect type
in assignment (different address spaces)".

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c   | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 59e45dc03a97..3c715b926a57 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1214,11 +1214,7 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 		    !instance->use_close_delivered)
 			unlock_service(service);
 
-		/*
-		 * FIXME: address space mismatch, does bulk_userdata
-		 * actually point to user or kernel memory?
-		 */
-		user_completion.bulk_userdata = completion->bulk_userdata;
+		user_completion.bulk_userdata = (void __user *)completion->bulk_userdata;
 
 		if (vchiq_put_completion(args->buf, &user_completion, ret)) {
 			if (ret == 0)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
