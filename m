Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C4732A102
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 14:34:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C99174F10B;
	Tue,  2 Mar 2021 13:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G2ZEGT_x3We3; Tue,  2 Mar 2021 13:34:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C8C0847415;
	Tue,  2 Mar 2021 13:34:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4CA21BF3F6
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 13:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 946AB43163
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 13:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bOwdRmeXwZ0k for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 13:34:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
 [209.85.208.177])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F069D43159
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 13:34:41 +0000 (UTC)
Received: by mail-lj1-f177.google.com with SMTP id 2so19410283ljr.5
 for <devel@driverdev.osuosl.org>; Tue, 02 Mar 2021 05:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=trttDswvIhw2oDhe4C3a6PzGyGhkWdNUCZs/hbkrosU=;
 b=kA0bv1fdcuJE5OD4Ch0Xe3/9GlOQhj9izk8RaMMbxY7NuDsOcPSvU1XulaCJQF4TOw
 BZ0S/hEDI+Ag/y+OEOwKNL1T+gZ6Npq2lDmDs/ABA6WLOJCoO2MHDZFUoaUhjMWHkgBn
 TvlYq8/uELxO3YX2gAEMkpnJGwaxdOo0EjzCTcsDmSA8Vm6E8IsRSiJ/d5gnKGWOQuBF
 XlCB6FePI7UXzXU21pvqOt14nlAhiIvscewHL5gcKz46rgZ4EabCUxBGdLI8w3r6E6eq
 qM0DaDd76MM+lLbpxbagWYepW8qa7JCDcxfBUn0iarE70/Gy4lbUN0aeK0B/QDUbWqJl
 RcfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=trttDswvIhw2oDhe4C3a6PzGyGhkWdNUCZs/hbkrosU=;
 b=PwD40OyolbWENirxTzX1flJs6fF2BWQNlEvjNgMOn1fpKhvcoMHE/4URfgU2B72m+c
 SLiEbwDAvKLjfQiWYMpRhS9bJscFIAa+cNjZe4NpHVrYnFcyWbpvIQimsv7Dt6cE/EEG
 w6ksDOjSCD2RSxpzMzVsrtTdIM/jqSif8kQcuXFEVSkac1TqJrSAuprSGpNZdCz0LaYu
 CCXhu2oBX3xQ3VBhCG+zlHXPp5Xr3+KPlYEoeyOZ5LTEr+U4ZasoYKZMESPZ9alFLR4c
 /uIe982/yezOUmpeLIA4mcM4C/ygolyQQ7b775U81RnZqCR933Nw7rU5v+7U3dvWg7oZ
 zL2w==
X-Gm-Message-State: AOAM53393546g4xH+fxww5o6sA6iri/TpRPwa8f445i7/MPpy09/+3A6
 ASqYzx4RuPihJ3H6gulmEOY=
X-Google-Smtp-Source: ABdhPJxSNaI2fHIJG2oPtipihm74JWCeKU5GjFEkhJDXuPSc0+PkRrAdK7z/Czosp2hPguDnE2WcEA==
X-Received: by 2002:a2e:8ec6:: with SMTP id e6mr12212234ljl.257.1614692079637; 
 Tue, 02 Mar 2021 05:34:39 -0800 (PST)
Received: from msi.localdomain (vmpool.ut.mephi.ru. [85.143.112.90])
 by smtp.gmail.com with ESMTPSA id s5sm483782lfd.284.2021.03.02.05.34.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 05:34:39 -0800 (PST)
From: Nikolay Kyx <knv418@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Suraj Upadhyay <usuraj35@gmail.com>,
 Aditya Srivastava <yashsri421@gmail.com>
Subject: [PATCH] staging: rtl8192e: remove redundant variable shadowing
Date: Tue,  2 Mar 2021 16:32:17 +0300
Message-Id: <20210302133217.145994-1-knv418@gmail.com>
X-Mailer: git-send-email 2.30.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In function rtl92e_start_adapter() automatic variable 'i' referenced only
within certain loops, used as iteration counter. Control flow can't get
into such loop w/o 'i = 0' assignment.

It's redundant to shadow this variable by creating scope around loop.

This patch fixes the following sparse warning:

warning: symbol 'i' shadows an earlier one

Signed-off-by: Nikolay Kyx <knv418@gmail.com>
---
 drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index ff843d7ec606..8cd085ebea81 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -800,12 +800,10 @@ bool rtl92e_start_adapter(struct net_device *dev)
 	}
 	rtl92e_writew(dev, ATIMWND, 2);
 	rtl92e_writew(dev, BCN_INTERVAL, 100);
-	{
-		int i;
 
-		for (i = 0; i < QOS_QUEUE_NUM; i++)
-			rtl92e_writel(dev, WDCAPARA_ADD[i], 0x005e4332);
-	}
+	for (i = 0; i < QOS_QUEUE_NUM; i++)
+		rtl92e_writel(dev, WDCAPARA_ADD[i], 0x005e4332);
+
 	rtl92e_writeb(dev, 0xbe, 0xc0);
 
 	rtl92e_config_mac(dev);
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
