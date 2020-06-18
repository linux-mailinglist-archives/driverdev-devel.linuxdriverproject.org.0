Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2617B1FDB4E
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 03:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D94E880E4;
	Thu, 18 Jun 2020 01:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WEBkdYe3lmQC; Thu, 18 Jun 2020 01:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 902CA88007;
	Thu, 18 Jun 2020 01:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 194851BF31F
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 15B5E88734
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 01:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cnTo-FM+BtQq for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 01:11:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 176BD88706
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 01:11:50 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 187A82193E;
 Thu, 18 Jun 2020 01:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592442710;
 bh=nL86eyKcQHOkbTW1UwAV3bPu/ILP407AXd/OXEIVkEM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iIa99vN1gLGHVx///oy7jZTJ+qpdDoA/S3STg0N2JKHEJPLGFwL9+vm8lisdZBg1o
 +N8hd9olE0+VsLipIi6VfUeUSg+xouGEAbqL+3FRXtrMZhiu4LfMwl2zW4ARKizupX
 1pww3EjlyGIaYMokBwr3AEj34CryJ+AB0FJRpS+s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 170/388] staging: wilc1000: Increase the size of
 wid_list array
Date: Wed, 17 Jun 2020 21:04:27 -0400
Message-Id: <20200618010805.600873-170-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Ajay Singh <ajay.kathat@microchip.com>, Oscar Carter <oscar.carter@gmx.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Oscar Carter <oscar.carter@gmx.com>

[ Upstream commit a4338ed2e1cf724563956ec5f91deeaabfedbe23 ]

Increase by one the size of wid_list array as index variable can reach a
value of 5. If this happens, an out-of-bounds access is performed.

Also, use a #define instead of a hard-coded literal for the new array
size.

Addresses-Coverity-ID: 1451981 ("Out-of-bounds access")
Fixes: f5a3cb90b802d ("staging: wilc1000: add passive scan support")
Acked-by: Ajay Singh <ajay.kathat@microchip.com>
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
Link: https://lore.kernel.org/r/20200504150911.4470-1-oscar.carter@gmx.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/wilc1000/hif.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/hif.c b/drivers/staging/wilc1000/hif.c
index 6c7de2f8d3f2..d025a3093015 100644
--- a/drivers/staging/wilc1000/hif.c
+++ b/drivers/staging/wilc1000/hif.c
@@ -11,6 +11,8 @@
 
 #define WILC_FALSE_FRMWR_CHANNEL		100
 
+#define WILC_SCAN_WID_LIST_SIZE		6
+
 struct wilc_rcvd_mac_info {
 	u8 status;
 };
@@ -151,7 +153,7 @@ int wilc_scan(struct wilc_vif *vif, u8 scan_source, u8 scan_type,
 	      void *user_arg, struct cfg80211_scan_request *request)
 {
 	int result = 0;
-	struct wid wid_list[5];
+	struct wid wid_list[WILC_SCAN_WID_LIST_SIZE];
 	u32 index = 0;
 	u32 i, scan_timeout;
 	u8 *buffer;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
