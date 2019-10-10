Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD469D1ED0
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Oct 2019 05:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49C0388546;
	Thu, 10 Oct 2019 03:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YAnV3e0ww70g; Thu, 10 Oct 2019 03:13:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D84B88522;
	Thu, 10 Oct 2019 03:13:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 361DF1BF9B9
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2FCF323E8D
 for <devel@linuxdriverproject.org>; Thu, 10 Oct 2019 03:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpBv3ZuAt4GG for <devel@linuxdriverproject.org>;
 Thu, 10 Oct 2019 03:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id AFA4A23B88
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 03:13:19 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id h195so2938909pfe.5
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 20:13:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ZQcFgWUIrTcWj7FyEedzTRJF4iB85mO1ITqvOndRRj8=;
 b=ZpMmeBjM7WLUJLHtImTbPCHC6yufQ4tGvkyHc35VqQpOM9u/hUsfG3SRdnXx9D5Sz6
 3EpL3CW1Kcn/hUkWVnpPlXgFij00bHxnvOOKR6JuUqjN/A/dhMdLTWY1a6JAMtofNuaU
 QWr0wqeyFwifaHbb6fGw485T+AY5jYI09qdERMvvSSZqpetr47+Lm0rr3wwLrmytIAWD
 6OOwe3Zyv37gI6hFmaAbtWDme5BBS5axWUpb1qVcKzmeu9HOMDX7Sy8AN4b+rlxJmhbT
 abVQODQTIfQ285K0G+UXNvC0KHGu1mDlrqWtp+tBXPGhlfCGw+Jzil/KUuyVXaNL25QT
 gKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ZQcFgWUIrTcWj7FyEedzTRJF4iB85mO1ITqvOndRRj8=;
 b=QxU8Qx1CfTPbSTC9mVEUi/pL9chfwqLFzLiHChWOoX7k+wGGOJkgj5TyxJe+2EBcaw
 lOY96RqfEpcLOUbUxlhV3GLHVnQa6oDZ5DFw+UhqvZHZXx2tcJOR7xPsl+mOE1fKU5/q
 m8QAO5P0Ied7TBGfptAvIbaaMyIgJ4y14DSaznQfZUjGKrQUP9syWCTBtX4mnVUrAZhz
 sfwnaywFPd+5wcgQRpTxVqnj4nGaa+pwtjfMz2ujQe0wBcynMH6bQLnOahnHX9mezNV9
 Wqfb5sMHj7eVKQOt+9lwB09WZw0XESCODii8ankLPAoTTW7jUudoA6Tuq/27x/G6/ryu
 NzMw==
X-Gm-Message-State: APjAAAV0kHOgfeEl/C/EnGTGs3XThxEax5j9S8Y3kzf4/J+jn/QYugA0
 7Xj/mmEdod+yjIUMvbsNT5A=
X-Google-Smtp-Source: APXvYqwBO47alOWhJ/L2D3mbujH52tPnfBNWao80sTi2OzvKzEqXncqlFQnTWtVg1oKKEux4yMsqBQ==
X-Received: by 2002:a63:231e:: with SMTP id j30mr8348953pgj.419.1570677199234; 
 Wed, 09 Oct 2019 20:13:19 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id r23sm3712164pgk.46.2019.10.09.20.13.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 09 Oct 2019 20:13:18 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix style issues (Unecessary
 parenthesis)
Date: Wed,  9 Oct 2019 20:13:10 -0700
Message-Id: <1570677190-4301-1-git-send-email-chandra627@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 fabian.krueger@fau.de, linux-kernel@vger.kernel.org, simon@nikanor.nu,
 dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Resolved: CHECK: Unnecessary parentheses around table[i]

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 2082d86..e702ada 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -478,7 +478,7 @@ kp_spi_probe(struct platform_device *pldev)
 	/* register the slave boards */
 #define NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(table) \
 	for (i = 0 ; i < ARRAY_SIZE(table) ; i++) { \
-		spi_new_device(master, &(table[i])); \
+		spi_new_device(master, &table[i]); \
 	}
 
 	switch ((drvdata->card_id & 0xFFFF0000) >> 16) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
