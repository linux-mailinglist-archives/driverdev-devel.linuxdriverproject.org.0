Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 565ED1D49DE
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE63188D9A;
	Fri, 15 May 2020 09:40:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LNEcKgQaPQjX; Fri, 15 May 2020 09:40:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A73D488D72;
	Fri, 15 May 2020 09:40:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5767C1BF2C1
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 09:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 51A4388D42
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 09:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ljvjXCrq3N07 for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:40:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B386821DD
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 09:40:49 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id g11so706444plp.1
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 02:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rKmZCcVKTIVgCO+z+GlkssBEJpYMxklWqKhfYU/OBVw=;
 b=ZlAfy2qQSjg+yhOrlIGiA3r33pwsHJXBZMFY9e1KDLMutt0i9qo/LPRiXgBSJ05d3w
 PHya8TF0no0u/FdQAiTrM7w4dNQ0MOKkdwPVc4GHANK3hUiclzAyq289ERuk3o9a20hd
 MDb1bCT7DYdwlVX8H/9xkmwPkNsveya+KVBm9UWN1mOzGaiJZXAwHQcH0sQModNr8Oj0
 pHt7tD7Z1/sLD6zRihXl2lrGAG6lk9RgvcYL+rcAk82XFy5J1JJFHb6Rxh1G748MSTP1
 nfrplRHTdK7PwBPxIhsZwHUHTRmgsHnE+wRUDhQ2nMzzXvmF6tkhy7Xp1RemztOCmwJ2
 F0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rKmZCcVKTIVgCO+z+GlkssBEJpYMxklWqKhfYU/OBVw=;
 b=G+40J2dI0JT1+vZpUBAte6YOkXmHwosvo9bDe7L0vZC1ydiDcgChtyL02EbTBl1zDU
 rV12AldrqEb8ytfC32TEwoUci+R1BLufyYveZCSpkyEQk8GTTG9fAmnQwUu1xDGItWHe
 e3y3fuZyhioOQpeHBzvSik/voZYGZGt857mXOx/4Za6IQxIPHzzP6fxKtkp6jrlRFSMw
 Tclgwf90RqP8XzT4pz7JqHf3rqVsTDY45rIfTwMdTrnnuP/2hW65wiEdFgxZH29IROxL
 OjevwH7Ac8pih+aJI1BBhxrP+tur4HN8ZgKGFvmq3aY0cD6qWPqn00QO09k6xEVwwJrw
 5tdQ==
X-Gm-Message-State: AOAM530SWLS4Qgdf5eqVerQX9F9YWFdRwvjA3uEfpdVXcr+LUgxAaxYI
 jtW6gRl03PGxX2O6hyc2i2g=
X-Google-Smtp-Source: ABdhPJx0VC3lwdcXvsKRqbN7D+s7an/8aOByh9MDHsLGMbJTkmK+wfEFQ3gqWOMy1tW+kDu2YuIJwg==
X-Received: by 2002:a17:902:599b:: with SMTP id
 p27mr2586551pli.75.1589535649041; 
 Fri, 15 May 2020 02:40:49 -0700 (PDT)
Received: from localhost ([43.224.245.180])
 by smtp.gmail.com with ESMTPSA id z13sm257789pfj.153.2020.05.15.02.40.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 15 May 2020 02:40:48 -0700 (PDT)
From: heshuai1 <hexiaoshuaishuai@gmail.com>
X-Google-Original-From: heshuai1 <heshuai1@xiaomi.com>
To: gregkh@linuxfoundation.org,
	vkor@vkten.in,
	nishkadg.linux@gmail.com
Subject: [PATCH] rtl8723bs: core: fix a coding style error
Date: Fri, 15 May 2020 17:40:44 +0800
Message-Id: <1589535644-6820-1-git-send-email-heshuai1@xiaomi.com>
X-Mailer: git-send-email 2.7.4
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
 heshuai1 <heshuai1@xiaomi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix this coding style error reported by checkpatch.pl:
  ERROR: do not use assignment in if condition
  #1120: FILE: drivers/staging/rtl8723bs/core/rtw_ieee80211.c:1120::
  +	 if ((addr = of_get_property(np, "local-mac-address", &len)) &&

Signed-off-by: heshuai1 <heshuai1@xiaomi.com>
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index ca98274..06be1d4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -1117,8 +1117,8 @@ void rtw_macaddr_cfg(struct device *dev, u8 *mac_addr)
 	}
 
 	if (is_broadcast_ether_addr(mac) || is_zero_ether_addr(mac)) {
-		if ((addr = of_get_property(np, "local-mac-address", &len)) &&
-		    len == ETH_ALEN) {
+		addr = of_get_property(np, "local-mac-address", &len);
+		if (addr && len == ETH_ALEN) {
 			ether_addr_copy(mac_addr, addr);
 		} else {
 			eth_random_addr(mac_addr);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
