Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B6231C5F0
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 05:10:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BB01856CB;
	Tue, 16 Feb 2021 04:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doqRIykiE6SP; Tue, 16 Feb 2021 04:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75E638543A;
	Tue, 16 Feb 2021 04:10:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00FE1BF319
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 04:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C4DBC86FC6
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 04:10:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E4b5PdyXAinf for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 04:10:22 +0000 (UTC)
X-Greylist: delayed 00:17:09 by SQLgrey-1.7.6
Received: from m12-17.163.com (m12-17.163.com [220.181.12.17])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C6EA286FC9
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 04:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
 s=s110527; h=From:Subject:Date:Message-Id; bh=F5hFEu4WoRLmj8hgaV
 VMY5sXYf4aZH9TX/Q1ftKv6Jw=; b=V1MubvXSdA60PlK76UixGpS+KIMZpIqjYR
 H9zBvjJYEg+SfIcgtLML7Gjd5ZewtWNxkPX3IJyNQ57SaOFGUYF1Q7i61YhOzehi
 e8oRlHt7dxYIJVeX20gq/aMuutAG24f4ZV6pZKKtwgPG+1xwZy2dyUPSVAP+IjiJ
 IztefF7z0=
Received: from localhost.localdomain (unknown [125.70.193.99])
 by smtp13 (Coremail) with SMTP id EcCowADnGzicQStgm20klQ--.45213S2;
 Tue, 16 Feb 2021 11:53:03 +0800 (CST)
From: Chen Lin <chen45464546@163.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: wlan-ng: Remove unused function pointer typedef
 freebuf_method_t
Date: Tue, 16 Feb 2021 11:54:06 +0800
Message-Id: <1613447646-4678-1-git-send-email-chen45464546@163.com>
X-Mailer: git-send-email 1.7.9.5
X-CM-TRANSID: EcCowADnGzicQStgm20klQ--.45213S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JFW8try8WryruF4DJr1DWrg_yoWxurX_Cr
 1IqrWxXr1DZrWxt340yrnxZrW0gFs3Wa18t3WS9FZxC3yYya1rGw1kXF15ZF9xK3s7KF9r
 C39YqF1FyrykXjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0c_-DUUUUU==
X-Originating-IP: [125.70.193.99]
X-CM-SenderInfo: hfkh0kqvuwkkiuw6il2tof0z/xtbBzh87nlQHLpOwKgAAsA
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Chen Lin <chen.lin5@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chen Lin <chen.lin5@zte.com.cn>

Remove the 'freebuf_method_t' typedef as it is not used.

Signed-off-by: Chen Lin <chen.lin5@zte.com.cn>
---
 drivers/staging/wlan-ng/p80211conv.h |    3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.h b/drivers/staging/wlan-ng/p80211conv.h
index 827002c..15fd635 100644
--- a/drivers/staging/wlan-ng/p80211conv.h
+++ b/drivers/staging/wlan-ng/p80211conv.h
@@ -122,9 +122,6 @@ struct p80211_caphdr {
 	__be32 encoding;
 };
 
-/* buffer free method pointer type */
-typedef void (*freebuf_method_t) (void *buf, int size);
-
 struct p80211_metawep {
 	void *data;
 	u8 iv[4];
-- 
1.7.9.5


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
