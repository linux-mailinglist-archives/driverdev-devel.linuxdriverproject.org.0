Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B37B31DC98
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 16:43:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ECF3A6F60F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UGCUbHAguSca for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 15:43:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E55016F60C; Wed, 17 Feb 2021 15:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EB805600CC;
	Wed, 17 Feb 2021 15:43:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C12FE1BF38D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 15:43:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BE17584BAF
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 15:43:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7NdTu0pXhhZH for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 15:43:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from pv50p00im-ztdg10012001.me.com (pv50p00im-ztdg10012001.me.com
 [17.58.6.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EA7B849B7
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 15:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1613576589;
 bh=qY6a0Sr6oY2hiCTNhF9SsJZEouIXiMrkajwvQEyslnQ=;
 h=From:To:Subject:Date:Message-Id:MIME-Version;
 b=uPo0py6jVpkYKGsw8CdHMplteRtdYiH57EmVYfamrm9IQFxbgkZimxXzLiwo4c03G
 LDzwArcQBFST8KWuKho8NXagy8X6aOke/mPIxpOAL2nRF6Smnmr02d/rXW00Obd8Px
 AzAVTnaE6UMCx4wKoJAFuIs4JlpH4X05Y8IVhEzCL0Uqohy/oZoMEAniEwifxpUFO8
 DLSqdANkqOLJfU/RCcDHszS75LOKoastf80ir5Bh8NV/2RWjuh2KaG3ANMJanaSWT2
 WC8n8zxrpBb7c+RrBHP205ftmJ4Bk/ZREq1Ga/8/CkS49/J85JLhMHWtLavHtZ3uK4
 f6kLGiOpsCwPw==
Received: from everest.nathzi1505 (unknown [45.250.51.33])
 by pv50p00im-ztdg10012001.me.com (Postfix) with ESMTPSA id CCC1728035A;
 Wed, 17 Feb 2021 15:43:07 +0000 (UTC)
From: Pritthijit Nath <pritthijit.nath@icloud.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Fixed incorrect type warning in
 p80211netdev.c
Date: Wed, 17 Feb 2021 21:12:55 +0530
Message-Id: <20210217154255.112115-1-pritthijit.nath@icloud.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369, 18.0.761
 definitions=2021-02-17_13:2021-02-16,
 2021-02-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2006250000 definitions=main-2102170119
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This change fixes a sparse warning "incorrect type in argument 1
(different address spaces)".

Signed-off-by: Pritthijit Nath <pritthijit.nath@icloud.com>
---
 drivers/staging/wlan-ng/p80211netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
index 6f9666dc0277..70570e8a5ad2 100644
--- a/drivers/staging/wlan-ng/p80211netdev.c
+++ b/drivers/staging/wlan-ng/p80211netdev.c
@@ -569,7 +569,7 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
 		goto bail;
 	}
 
-	msgbuf = memdup_user(req->data, req->len);
+	msgbuf = memdup_user((void __user *)req->data, req->len);
 	if (IS_ERR(msgbuf)) {
 		result = PTR_ERR(msgbuf);
 		goto bail;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
