Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A1633C3F0
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 18:16:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 047E243101;
	Mon, 15 Mar 2021 17:16:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4xyFSMv_aQ5; Mon, 15 Mar 2021 17:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 591CC40170;
	Mon, 15 Mar 2021 17:16:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3EA321BF33C
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F0EE83486
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 17:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wAmgeZA15EO for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 17:06:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7025183478
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 17:06:57 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id ox4so51887809ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 10:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=TBRBwlgf1LKPiTfqnj8mlNcDC1XXjU0sTvLSvTXy7nU=;
 b=OYtD4ovFKTFdfSOanBDl07SOC9E2ncU6+lXW9d5pnIj4J0TuahkyQCMU5XbIiboqLA
 EXrKCiuxZGoA5j6ba02Fyv8BXxV97CNllZ0fLOd+Lmq+sYYq60TCowkt1so3d1jEQDhu
 MIRH+NW5/d+yFJ0bBkshcd+34IJe4H8tkDIIe16uIdu5N0ADIOeIERM2ETDcrQ5Yu30O
 ZaiV3VqgtLWfMbXmjGeI5cFayAGpdCZdU2Q7siGgzv/hW2UuVd2KLBGYN9CBNLAkxA4O
 8cMwki4/x/YtaF6u7cX0rMqJBa0j+p4edzOAUGM6Dg36aKJS9evVmr27y4RsQHtYb51w
 Y/Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TBRBwlgf1LKPiTfqnj8mlNcDC1XXjU0sTvLSvTXy7nU=;
 b=jtBBUHK+j3k0DTYUuKcM8R9U52nZGPRnclExMmXqB6CdRkBIYJC04k5YWYfWhGN3F0
 Eym5SAxhL/X+O6UNVhw2YD4U2kjg3EBPKR6hvczlrwRB3vYPwvG44Ivv702RNAOjRr2N
 vbraFlPrPK1IJSRd+Aqpm+lEir/tR5Pis3iRuqIVQLWCgSyKPn0ou9xDFmnGi9iTfGAo
 6Ps0pGf1sKuBDtL+FzebisDUOI9EIQAShIJqitG6GST6HPi0aPOe880+PnhjK3dMOPua
 F1i988ZUdsx4ycKIQdmrTWj05QmuF9MWA2ii+6yltWyoYbLNPRtUq3VtudhGjx9ZKNsp
 dLnQ==
X-Gm-Message-State: AOAM530LhEH4rPWf0t1AqShXlkpO3e8ZOw3LehRpk+pFNsrhqYpW0IvU
 6wq9CaDFKh0Q6WiOG+Q0UEE=
X-Google-Smtp-Source: ABdhPJwY+ZP07I1f2D+YjFPmP5+hQ81VhqXT20ky8wZjHn5wCPFZI6Z6YHDTrPmj8KuD/njsS+Aw+g==
X-Received: by 2002:a17:906:32da:: with SMTP id
 k26mr24744678ejk.483.1615828015761; 
 Mon, 15 Mar 2021 10:06:55 -0700 (PDT)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id gq25sm7879608ejb.85.2021.03.15.10.06.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 10:06:55 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 56/57] Staging: rtl8723bs: fix spaces in osdep_service.c
Date: Mon, 15 Mar 2021 18:06:17 +0100
Message-Id: <20210315170618.2566-57-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210315170618.2566-1-marcocesati@gmail.com>
References: <20210315170618.2566-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit fixes the following checkpatch.pl error:

    ERROR:POINTER_LOCATION: "foo * bar" should be "foo *bar"
    #50: FILE: ./os_dep/osdep_service.c:50:
    +inline int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb)

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index e2b8923df129..843003b91ea2 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -47,7 +47,7 @@ inline struct sk_buff *_rtw_skb_copy(const struct sk_buff *skb)
 	return skb_copy(skb, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
 }
 
-inline int _rtw_netif_rx(struct net_device * ndev, struct sk_buff *skb)
+inline int _rtw_netif_rx(struct net_device *ndev, struct sk_buff *skb)
 {
 	skb->dev = ndev;
 	return netif_rx(skb);
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
