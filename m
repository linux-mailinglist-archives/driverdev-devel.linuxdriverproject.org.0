Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C548225167
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jul 2020 12:56:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D7F985BC8;
	Sun, 19 Jul 2020 10:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uXl9y6mH3ac7; Sun, 19 Jul 2020 10:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0E3385B0D;
	Sun, 19 Jul 2020 10:56:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 946551BF27F
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 10:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90F4685B80
 for <devel@linuxdriverproject.org>; Sun, 19 Jul 2020 10:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZwBHx1d_ebR3 for <devel@linuxdriverproject.org>;
 Sun, 19 Jul 2020 10:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F25185B0D
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 10:56:05 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x9so7367164plr.2
 for <devel@driverdev.osuosl.org>; Sun, 19 Jul 2020 03:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DIKfZ2h/OsqeEjg5s5ssaDZDoJKCseBDD+tGu/EIuW4=;
 b=R11UaFD8k9tSfOmd+txBsHd9GJep6vkYfYA1rH3RNiySIOlBQD1c957vAiFnE4P7cp
 GKEe1RCqQHNct1x4Gich+h9mWEyS+sMq7eFp5pJMapGs5hMmdKcCoBZOA3Xh8Jnm6W48
 qbApEh4NkLKl0Nxw03jtzFVylpe+J1h2FAFl1SR5b/rbAvUTJy3ifDf1VLPSW8vt1++a
 cHDehwCiblta4DjNA+o5XViosRrMCdsKDjGSR2hg6Tn5oLUoI3whDJUwZXEvVeFlrA5p
 ArcHXhcd8f3tvyMtSUQO/Cm8Klmhx5QR+R400he1vP65Mc6EBzMYiyfTbBc5nkYn8oKc
 X00g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DIKfZ2h/OsqeEjg5s5ssaDZDoJKCseBDD+tGu/EIuW4=;
 b=DnKnbNcLFJ4JZzk/BsFFvecqG3wZbwad3qw3x7eq4KkmjIN+S0SFWUrI4DJNnv+8Oi
 GtKDK0RB1DgxAfkfpdSQhw7IQnkQbMXN9RAQ/Exmg4/88+Sa9ShxIjvyWhCqRMOGFryd
 ot5+nh8DePjG16Im0hucLUUvtoLswjoXVo/MZf2VbI/O/fIXJdLHGRQ+qAYPOdtmJ/66
 UwXzBFoXsus1oBoRSvtBwjcby/I3uBgnDXnaUunF2wOa4UjCfUZnQxT1w5iDUzdWtrm5
 ES24oEfgTa9Dbn5FGQfgTuyz3ptiY3yELXLrd/UmD8RwofmLIXaSybUNnpbKOxowgtmD
 g9nQ==
X-Gm-Message-State: AOAM532okx0Sd0GATQr+GhsHHK/4A04gSW9MjwLTdgHawsrz/Jyjfsrd
 QkuYUs2mjJdFfHyBFf6Wjg0=
X-Google-Smtp-Source: ABdhPJxgZ/UW5D6dLsCW3Vjn0xw5bnMpFN7wql1vOqCF0jjPLQZMMG99ddPCF2aZok2eCLNa5zpJJA==
X-Received: by 2002:a17:90a:f6d8:: with SMTP id
 er24mr17144956pjb.203.1595156164592; 
 Sun, 19 Jul 2020 03:56:04 -0700 (PDT)
Received: from DV.bbrouter ([117.242.250.233])
 by smtp.gmail.com with ESMTPSA id o26sm13299253pfp.219.2020.07.19.03.56.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Jul 2020 03:56:04 -0700 (PDT)
From: Darshan D V <darshandv10@gmail.com>
To: gregkh@linuxfoundation.org, yuehaibing@huawei.com, ardb@kernel.org,
 contact@christina-quast.de
Subject: [PATCH 1/2] staging: rtl8192e: Fixed a coding style error
Date: Sun, 19 Jul 2020 16:25:56 +0530
Message-Id: <20200719105557.12605-1-darshandv10@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200719092236.GB171181@kroah.com>
References: <20200719092236.GB171181@kroah.com>
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
Cc: devel@driverdev.osuosl.org, darshandv10@gmail.com,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

    rtllib_crypt_ccmp.c: Fixed the error - space required before the
    open parenthesis '(' on line #281.

Signed-off-by: Darshan D V <darshandv10@gmail.com>
---
 drivers/staging/rtl8192e/rtllib_crypt_ccmp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
index 0cbf4a1a326b..b2af802b9451 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_ccmp.c
@@ -278,7 +278,7 @@ static int rtllib_ccmp_decrypt(struct sk_buff *skb, int hdr_len, void *priv)
 		int aad_len, ret;
 
 		req = aead_request_alloc(key->tfm, GFP_ATOMIC);
-		if(!req)
+		if (!req)
 			return -ENOMEM;
 
 		aad_len = ccmp_init_iv_and_aad(hdr, pn, iv, aad);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
