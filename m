Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB31290A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 08:00:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D053387FAF;
	Fri, 24 May 2019 06:00:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 54DZNv6ZKiIC; Fri, 24 May 2019 06:00:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD31A87F79;
	Fri, 24 May 2019 06:00:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A4D221BF3BE
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A121F86C9E
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 06:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfE_aTG1dbsC for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 06:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A555D86C8F
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 06:00:47 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id h17so4441810pgv.0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 23:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hAzC15VtGYfFmuEPXoJrQruEFJeSFaf2/TbSODbm3dQ=;
 b=n6BVL6c5ohCZ171zptj4gzdJgP7LSURoPtfb5w5kTIIwAGrGgpeMfJDOq7Y2Zek1Is
 LqYCNovu9ARHejtRQoqP9UlBer3YD500KOMOaIu2iPOEJaSlr1ilpwbtWsWWq7GizYsD
 HuXxWRLGQNuS/BgxvlBdS2uv9TX8qID2px+T22dqS0NmuEMcho0fQiy67SJLRclqSsKD
 CYnVqPJK+wty90EBJ0OLM+ywxT2aJsYQ2YhXGcXkEJ+IKBpt1ga4IwlakdKBBr8/9+1H
 KX1uhdEal5YaELsg78kbgzHLjQGTNZ8YmRi0rdVFpIu5yhEE8OqZu/PXVNiAaqJQ0mmP
 YHdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hAzC15VtGYfFmuEPXoJrQruEFJeSFaf2/TbSODbm3dQ=;
 b=WmEl19LEXfsDVgxhwHAh1c6w/DWGSjdkhboFMjvL5yHororNHATsj3t9eWyLCnlQIY
 vqhX5RkbpXYVPZlqaDU4E0Z1kdS02da07oO9CETzL4meW5PaEtG7qyOimR3RLhJAXTSb
 O93yfvLqtb2N175ySSkAz3kCGYUeb07GNABlmf9ppV2ecqGxdXOY1i2ZnoFDheQjs+CA
 aB6a5yelDtGXTS3xb6vWmHn+nvMga0Z0uQiS1/o4Xw0dJCdRdm+i4a1hlw0WTgnyI/28
 uLeuXKN6iiUwl74CRrseY6z4dxJpEk1uDjUP649AIyZtOXVW5tsZButiTxTduUsCFnKA
 lCmw==
X-Gm-Message-State: APjAAAWCG9vGgZp4qPaw2Hr0wMZUNjRaNmVP/5++TdppiYe/b9V1wVL5
 wOJcIcpHc8y24fP7Qkaa1M4=
X-Google-Smtp-Source: APXvYqzW+yjgetDg9TlBzArx/WPeD7mReWHkCB8ZhoLCukdNArsjI2s8Tc5xSAFnKWZO/IgstJDDFg==
X-Received: by 2002:a17:90a:bc42:: with SMTP id
 t2mr6798697pjv.107.1558677647323; 
 Thu, 23 May 2019 23:00:47 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id 5sm1267426pfh.109.2019.05.23.23.00.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 23:00:46 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, colin.king@canonical.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: gdm724x: Remove variable
Date: Fri, 24 May 2019 11:30:26 +0530
Message-Id: <20190524060026.3763-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190524060026.3763-1-nishkadg.linux@gmail.com>
References: <20190524060026.3763-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The return variable is used only twice (in two different branches), and
both times it is assigned the same constant value. These can therefore
be merged into the same assignment, placed at the point that both
these branches (and no other) go to. The return variable itself can be
removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/gdm724x/gdm_usb.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index d023f83f9097..8145ae2afba7 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -295,7 +295,6 @@ static void release_usb(struct lte_udev *udev)
 
 static int init_usb(struct lte_udev *udev)
 {
-	int ret = 0;
 	int i;
 	struct tx_cxt *tx = &udev->tx;
 	struct rx_cxt *rx = &udev->rx;
@@ -326,7 +325,6 @@ static int init_usb(struct lte_udev *udev)
 	for (i = 0; i < MAX_NUM_SDU_BUF; i++) {
 		t_sdu = alloc_tx_sdu_struct();
 		if (!t_sdu) {
-			ret = -ENOMEM;
 			goto fail;
 		}
 
@@ -337,7 +335,6 @@ static int init_usb(struct lte_udev *udev)
 	for (i = 0; i < MAX_RX_SUBMIT_COUNT * 2; i++) {
 		r = alloc_rx_struct();
 		if (!r) {
-			ret = -ENOMEM;
 			goto fail;
 		}
 
@@ -349,7 +346,7 @@ static int init_usb(struct lte_udev *udev)
 	return 0;
 fail:
 	release_usb(udev);
-	return ret;
+	return -ENOMEM;
 }
 
 static int set_mac_address(u8 *data, void *arg)
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
