Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA0A1495F4
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Jan 2020 14:34:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0E3487708;
	Sat, 25 Jan 2020 13:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9+wDuFHOQlvz; Sat, 25 Jan 2020 13:34:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3458A876BD;
	Sat, 25 Jan 2020 13:34:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EE0D1BF27F
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:34:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1997584FDD
 for <devel@linuxdriverproject.org>; Sat, 25 Jan 2020 13:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmAPtA-O8kca for <devel@linuxdriverproject.org>;
 Sat, 25 Jan 2020 13:34:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F16FF84F58
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 13:34:46 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id s64so2648090pgb.9
 for <devel@driverdev.osuosl.org>; Sat, 25 Jan 2020 05:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=tNpax35bpayHCHzZcmmIYibH2bvx/xD5uxze2SDaHUw=;
 b=syjGSNlfVZKnp2hxifURfMNCVAmZ1supGURNmPeuMwlDw0hQEgG4fdbPE7TrxrzbPp
 MgDqfF1859dOucZ+WKIScH0BVSAfzJ2boQJuWduL6vV7IGsD0CGCR0tqYJNfOpsia5F4
 GWvRDzaff4rSKh7NweagYFgGdpGPsglwYBmc+mf2HAbm+vTDVmNQzO2yAVKZzREu+GTO
 NDeX3UaCwwDviMviMJONqnkQ6NCq0RUpOh/UgUPu6buwTEPHa3bkKgoWzYRmAq+HeExj
 OKbtChVFVNcxwK9Noc/X8WbWQmeM6ZTLI8Hdv4CdsAhL9U7wH+qwiLzGrgV0A+b0n4JY
 JzzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=tNpax35bpayHCHzZcmmIYibH2bvx/xD5uxze2SDaHUw=;
 b=gsxpUZXFtXZz+R7rT9i+BCPntpDy7K4KdFZqcpLQHcQrRYoUByRZfBHYXbNHrndttF
 yqj1JvkaA9hKy/1v4aQqyS15aULXkUQ1eDzJclxZZHcf/LxRpBXAqOC51AzMcQFVhTaE
 u8wSXrWNzLgugWLFqpXfbu3CWP8TCzYaJD86/SgLPjaca2yKi+ZlEoEo2Mrylvdr4czz
 nN2R3HIrvv4d5ft7wJUGznkeTEuove9ic2JoGQAHPllH0gX6hV59Jex8kWmcJjyOjXli
 sCWE8WxEF1K3yTGy15HMEXzAuJQwd2k5xprXCK3NnB6TGjMghge6lOfNAx36aP5z3Crq
 NjUg==
X-Gm-Message-State: APjAAAVntCIG4l98bdFXkaM2P+7kMyMQtKq7ghyR2rKqLAl4GPXz1inM
 1cqAKvKANnnW809dfAGdjQQ=
X-Google-Smtp-Source: APXvYqw37uxMtb0KLfugrMcUPIi36U6kK68Otehdjy5yDKWFy5ta6tTHXjA06yr31iAPKGeIndec4w==
X-Received: by 2002:a63:1d5f:: with SMTP id d31mr2144271pgm.159.1579959286506; 
 Sat, 25 Jan 2020 05:34:46 -0800 (PST)
Received: from google.com ([123.201.163.7])
 by smtp.gmail.com with ESMTPSA id i3sm10212006pfo.72.2020.01.25.05.34.43
 (version=TLS1_2 cipher=AES128-SHA bits=128/128);
 Sat, 25 Jan 2020 05:34:45 -0800 (PST)
Date: Sat, 25 Jan 2020 19:04:38 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: gregkh@linuxfoundation.org, nishkadg.linux@gmail.com,
 wambui.karugax@gmail.com, julia.lawall@lip6.fr,
 benniciemanuel78@gmail.com, saurav.girepunje@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: fix condition with no effect
Message-ID: <20200125133438.GA4211@google.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.6.2-neo (NetBSD/sparc64)
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
Cc: saurav.girepunje@hotmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix warning reorted by coccicheck
WARNING: possible condition with no effect (if == else)

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
  drivers/staging/rtl8723bs/core/rtw_mlme.c | 14 ++------------
  1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 71fcb46..5f110c3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -2771,18 +2771,8 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
  	DBG_871X("+rtw_update_ht_cap()\n");
  
  	/* maybe needs check if ap supports rx ampdu. */
-	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1) {
-		if (pregistrypriv->wifi_spec == 1) {
-			/* remove this part because testbed AP should disable RX AMPDU */
-			/* phtpriv->ampdu_enable = false; */
-			phtpriv->ampdu_enable = true;
-		} else {
-			phtpriv->ampdu_enable = true;
-		}
-	} else if (pregistrypriv->ampdu_enable == 2) {
-		/* remove this part because testbed AP should disable RX AMPDU */
-		/* phtpriv->ampdu_enable = true; */
-	}
+	if (!(phtpriv->ampdu_enable) && pregistrypriv->ampdu_enable == 1)
+		phtpriv->ampdu_enable = true;
  
  	/* check Max Rx A-MPDU Size */
  	len = 0;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
