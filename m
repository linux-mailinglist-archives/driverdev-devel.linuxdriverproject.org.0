Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7724C80172
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 21:56:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF500203CE;
	Fri,  2 Aug 2019 19:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wWOHq47bpp4p; Fri,  2 Aug 2019 19:56:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 77C2B203A5;
	Fri,  2 Aug 2019 19:56:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 54B2F1BF2A3
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:56:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51540865C1
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 19:56:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vleEcmVCKKc3 for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 19:56:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7F7FA864D1
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 19:56:07 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id n11so75130750qtl.5
 for <devel@driverdev.osuosl.org>; Fri, 02 Aug 2019 12:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+BctC5jWKogaVe7+UbMIlXNT7jLhgV51cvWIOtS6af4=;
 b=ScRD9wbQ/omA/d9fsFfShN0M+dsAUZ5uFcVWUV/FkR5YEkPwKafqHoZKaiORu33iyv
 zV4NRZwB8jn0KdmrkfcD8EpZsYDsZuBGcHo6sSIitZDoPbpRjhUvpe0xaMwG1RtWpxmQ
 RDpWAK65t3sA3WwaMAwmXD4Y9NsdEV5Sp1XWuXs/6oYubqxKlRHLT0/yyS06r+uGjuAS
 P0PkxmVb3Z2EWuHieWsA46prIenNaG+ouxYrslGbGjK36dMKne6VhChJR3Q/0IaEABMY
 MqW3tHzL17upAK1vGEXppDwdLc5bqzZtQsD+W0Jf8M2NJCDA+d5jFDRPMYOi4Xx1z7yo
 G1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+BctC5jWKogaVe7+UbMIlXNT7jLhgV51cvWIOtS6af4=;
 b=POhdbjTMVrDSh6zLYGLmrO3Y9hSLXtbRmktCXKRuyzLjImN+iRPBVjKcvSEB8AMUZ6
 v0YwNw2tjkZn5wzKfxRDLDS6f1Q2uqPixVROtmjVbNrJuB9LQDuqcm9BV5+Yp/Mn65ys
 yNXOO91PJzgu47cyzczTCbIr54tX7RXN0Jt/jwJnqMJBu5KSW65cqNLeeTPRmc1aza9y
 JUWWHg/DO2An/9cRHDqtMsH4edHUXUOtn0hTseJeeazTe4sy8SCOXI3b1NQyU91Xzd4L
 lErwRKCEzYdaLAC7n7WSRIn3qt2+vWvnQrVlbAfXeqQVb8hNZvR4OgHIEQHIxL0Kfu+m
 pIag==
X-Gm-Message-State: APjAAAXrxizp/jYoZ4rAHewTdf+N7AL18YpdpdohARStM89tcgiPYDib
 iUw2AaQikV3hqFzM2hmlP9I=
X-Google-Smtp-Source: APXvYqxKRujYjipBlqcoCW5qnSeveADtV9x9i/nbKHoKSeB55C2OFv2s/SASRVRL1PQ5ui8wuVElfQ==
X-Received: by 2002:ac8:27d4:: with SMTP id x20mr94666394qtx.138.1564775766288; 
 Fri, 02 Aug 2019 12:56:06 -0700 (PDT)
Received: from 0366fb520575.ime.usp.br ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id q56sm38597831qtq.64.2019.08.02.12.56.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 02 Aug 2019 12:56:05 -0700 (PDT)
From: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
To: isdn@linux-pingi.de,
	gregkh@linuxfoundation.org
Subject: [PATCH] isdn: hysdn: Fix error spaces around '*'
Date: Fri,  2 Aug 2019 19:56:02 +0000
Message-Id: <20190802195602.28414-1-joseespiriki@gmail.com>
X-Mailer: git-send-email 2.20.1
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpath error:
CHECK: spaces preferred around that '*' (ctx:WxV)
+extern hysdn_card *card_root;        /* pointer to first card */

Signed-off-by: Jose Carlos Cazarin Filho <joseespiriki@gmail.com>
---
 Hello all!
 This is my first commit to the Linux Kernel, I'm doing this to learn and be able
 to contribute more in the future
 Peace all! 

 drivers/staging/isdn/hysdn/hysdn_defs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/isdn/hysdn/hysdn_defs.h b/drivers/staging/isdn/hysdn/hysdn_defs.h
index cdac46a21..f20150d62 100644
--- a/drivers/staging/isdn/hysdn/hysdn_defs.h
+++ b/drivers/staging/isdn/hysdn/hysdn_defs.h
@@ -220,7 +220,7 @@ typedef struct hycapictrl_info hycapictrl_info;
 /*****************/
 /* exported vars */
 /*****************/
-extern hysdn_card *card_root;	/* pointer to first card */
+extern hysdn_card * card_root;	/* pointer to first card */
 
 
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
