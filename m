Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C66F1581FE
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Feb 2020 19:03:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BB9FD204B1;
	Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDEzRge4PvqG; Mon, 10 Feb 2020 18:03:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A7321204A3;
	Mon, 10 Feb 2020 18:03:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 967601BF304
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 914D12040E
 for <devel@linuxdriverproject.org>; Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9eKYwGtVDp6q for <devel@linuxdriverproject.org>;
 Mon, 10 Feb 2020 18:02:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id D7BAC2040D
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 18:02:54 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id a22so10007797oid.13
 for <devel@driverdev.osuosl.org>; Mon, 10 Feb 2020 10:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pObL5DfR2yUaAQRXWmA8DaLHKZi59ZWx28shRwr6qq8=;
 b=ONHjn8epZXq+TgXplIsC4SJSlHptL9GrX/2mpNEv2WC0Y6bBD/ZolH17UZfRPJZumc
 bCTtSciGcy5I2TmN+/AfwAlNG3sjA8R6foGzjTSYcfaUAd9qN1av3oG55xt7+7Oy4S+l
 EOLdA5E2VOwK4I4fHFecNBQYGlWMltBsQqhimX+xH1QaZ6YTIfjM3GwA97+oaOW+3o+N
 GX+yXJWd2UIW4m2lV0OjquHb0zvDHUtUwRSNDOeqkd5ex6OUCPg4i5LzzARRxkCr82Pm
 HpDIonzuMOAl1E1s2FV3/WHWltctHzqfjOocwmeGq+ZIbZ9wFXBhq2hxBuWS51AWr97p
 VnLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=pObL5DfR2yUaAQRXWmA8DaLHKZi59ZWx28shRwr6qq8=;
 b=WCWxgT6LmTpTDbeU+vXZlbqap7z7LLUQq0MnONjnIhshzP2rbjlTkPdU13upjB9fTS
 6CqzozVJXUEI0YTPCRtcJeqhtvLsqnxkmxGeFtDxYWtJdF3+ye1QoQesGaN3wTWiLs4p
 w7reMlxwbdhln0fylOoSH3QGBc0L05L3RLqQ9HTxo+h68x+yxPQMaz8VKODlCNmSHuv1
 HyyipE5lXMiTBuxF4CXAIOL3oUksJ3Y4Aw4pyoQApmH7z0G0a3zCpUK1mKonBMBxZxXG
 2OTwZXRtJRyX9TjEYse3KXRXYNL0nxl+Fn/YPEMOOtAFgr5pmIloi2J3B68Iu7eNg7sr
 1L+g==
X-Gm-Message-State: APjAAAVPmuxp4eNnK0oeRUgBprnPL45praIPiK9ezfS0roQTPz3gf0Qi
 1l2Dr+HSlDwG9XdIAXOOTzw=
X-Google-Smtp-Source: APXvYqza/1k8Xmid5cRjcFihHMIA8WULIJkc5+IClSDLFvtK61MUtODlYskhUoZereG86E0fCccRqQ==
X-Received: by 2002:a54:468a:: with SMTP id k10mr186553oic.3.1581357774173;
 Mon, 10 Feb 2020 10:02:54 -0800 (PST)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id d131sm313031oia.36.2020.02.10.10.02.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 10:02:53 -0800 (PST)
From: Larry Finger <Larry.Finger@lwfinger.net>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: rtl8723bs: Fix potential overuse of kernel memory
Date: Mon, 10 Feb 2020 12:02:33 -0600
Message-Id: <20200210180235.21691-5-Larry.Finger@lwfinger.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
References: <20200210180235.21691-1-Larry.Finger@lwfinger.net>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 Stable <stable@vger.kernel.org>, Pietro Oliva <pietroliva@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In routine wpa_supplicant_ioctl(), the user-controlled p->length is
checked to be at least the size of struct ieee_param size, but the code
does not detect the case where p->length is greater than the size
of the struct, thus a malicious user could be wasting kernel memory.
Fixes commit 554c0a3abf216 ("staging: Add rtl8723bs sdio wifi driver").

Reported by: Pietro Oliva <pietroliva@gmail.com>
Cc: Pietro Oliva <pietroliva@gmail.com>
Cc: Stable <stable@vger.kernel.org>
Fixes: 554c0a3abf216 ("staging: Add rtl8723bs sdio wifi driver").
Signed-off-by: Larry Finger <Larry.Finger@lwfinger.net>
-# Please enter the commit message for your changes. Lines starting
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 3128766dd50e..2ac0d84f090e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3373,7 +3373,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 
 	/* down(&ieee->wx_sem); */
 
-	if (p->length < sizeof(struct ieee_param) || !p->pointer) {
+	if (!p->pointer || p->length != sizeof(struct ieee_param)) {
 		ret = -EINVAL;
 		goto out;
 	}
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
