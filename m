Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6FF2926B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 10:06:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA20786AB1;
	Fri, 24 May 2019 08:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e0vcsabA4qDZ; Fri, 24 May 2019 08:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED36186AAA;
	Fri, 24 May 2019 08:06:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40BAF1BF958
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3DBC92264A
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KJXAXEdm2wID for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 08:06:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id BCB0C220A2
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 08:06:35 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id 33so1654534pgv.9
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 01:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTdIOmj1SS151jb6XK8udh0fxhXIkCdxxTWwvFE+/JQ=;
 b=VSGsRuhS/Kd+oARJmriP5B1RIIi2hPENzu6c4tSUn8sHlGh5Uaz/lBMWus63IetDV4
 uuT5yUT+oIGirKOeuxQHH4dGqkUGGtz1/+u7T6K1R5aQeZORQgQ18QKlRBEWbM6YrLWu
 ygk9az5+rFJfQO2yp8b3ANxACLKznVV6hLLXVyaILY3vQ+ni4c3uvTOC2+/0LJKukuW0
 F95X39i6peFsFfRrvYtjeKkbyoc68ivuSL+zFgcY0xJjUZtu5483WO633tN/nAb92Jd/
 fEz2eeGUCXaPT5cDQMFqRC41msB9rqmwhj0HIMGYDSxpXfYYaMODKRiPOSzRFuFFz22b
 sjUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QTdIOmj1SS151jb6XK8udh0fxhXIkCdxxTWwvFE+/JQ=;
 b=YmpoOf5imJK5952G2160qTNhwyiynksphrSEKxg73dEPz6ur+UfwqIFjdA3zvadDSL
 FtjZe7p7gxqBqmIUJIKx419w4a0M1EYPYOVVPMjouEI1N6imGFfEg7fdWFJUBYc/FV7F
 dhwkCpOPrn/nf5xdd5zuVXA6cMepyY8qMy31dUWcFMgQXHSfIf8BGmqAmPkmcyeVaGSh
 27xPHJSfFkgO53zS2sFI1y4rPsxSGrmSOAwPLjXHelPVs0L4LTmhtC6Eti2GzJCsn1St
 O2z3R7Zljc9EnyP1b/FTddHyKoAiFiBNUoBi3pHgbpCNJvsqcdchLZEVqHHmIx4gUMQf
 XxAA==
X-Gm-Message-State: APjAAAUMl9zEpTYb/PfRjzsN7w2HHKHqKs4Cn/A421ueAMCvw7QnX7f4
 pbNhDJBW674Wo4rvfJdBp54=
X-Google-Smtp-Source: APXvYqxfcBtSzL3kpQs+wUBMcShVj1c66L7EVJ8uduwff5auuOlymKp4c8PSwyfZO/z0D2gIVKW6DQ==
X-Received: by 2002:a63:1d1d:: with SMTP id d29mr104116236pgd.63.1558685195519; 
 Fri, 24 May 2019 01:06:35 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id u11sm1607991pfh.130.2019.05.24.01.06.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:06:35 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] staging: ks7010: Remove initialisation in
Date: Fri, 24 May 2019 13:36:22 +0530
Message-Id: <20190524080622.4801-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

As the initial value of the return variable result is never used, it can
be removed.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
Changes in v2:
- Clarified subject line

 drivers/staging/ks7010/ks7010_sdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index 74551eb717fc..4b379542ecd5 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -380,7 +380,7 @@ int ks_wlan_hw_tx(struct ks_wlan_private *priv, void *p, unsigned long size,
 					   struct sk_buff *skb),
 		  struct sk_buff *skb)
 {
-	int result = 0;
+	int result;
 	struct hostif_hdr *hdr;
 
 	hdr = (struct hostif_hdr *)p;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
