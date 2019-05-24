Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB8529402
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 10:59:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57E5986D0F;
	Fri, 24 May 2019 08:59:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9vGycJ1lJbDZ; Fri, 24 May 2019 08:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86E2686BBB;
	Fri, 24 May 2019 08:59:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E89B91BF958
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E5C3B221FF
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 08:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DW4zeLIw6rLJ for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 08:58:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 7EC67221B1
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 08:58:57 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id w7so3913656plz.1
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 01:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JWACF3SIPoHGy5EkRZoqUNZ3AjzJ3mymMn0aw/d37Uk=;
 b=g2xv1OoPAO5xli3xO7oBgaNvngcVXWrFOWU+s2iAMJ6mauapv25jjOTC4bkryNgiLf
 UATKBOk4EjF27bJCf47K2U82fiK54MXBpy9mgzlVLOs5JLF8aYTpsvelmce8HqOd3XEf
 Tn2qWxLxtsmwupSRz8d4d/RGBlGrCWiHIUGhFnUMWOcCBJIpQG++kxW4LGc0k3xrwCnR
 yR2ru+JG/pf2Svttek2pjS8TWjyIKTseP6tE6z3H+bC2KUmeioYvHP24MTF+lqVFdRp/
 NWYUmSpp//MOma3OuNav/Fg27M58rI8MpinOOLDr+Hs0fv6fNeYTDliLKP3w8pxxcVw9
 72CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JWACF3SIPoHGy5EkRZoqUNZ3AjzJ3mymMn0aw/d37Uk=;
 b=DYNtriO3wRBJIJ+TlQE8oho4b9tWaVzLdbNVrK6VrB2YL6wQQhMztGT0bkWleUvxvn
 ulWP5hYyk0VDVdtpfmsumrI+rIhZ7t5vxAkX79K5lcXTxBL7z7GaaxjvdefHQ4bXBMsv
 bxrUBxOZi/vDIW9+Pbj2zBEYm8BOHKpn9jwKwXRMe0Zh6byHkFmckUXZM165LDRJ3rr8
 Gv1W2gHcGcmhi3jWctixParjBCf0AEtZVhAHs9byVsB5HYXAul2e6YAEZPHCorW0K61J
 PfsVF5KrBnCOULyYsN2/SNdR17Dk88T/552U2vHH/aTRtSKDdWw/4mn0zwbAZB7GhST1
 V4fQ==
X-Gm-Message-State: APjAAAWQcKPoXQFOoB6BzEnSTbytwQWWIdPrXmi4wmzDKaCtPo01UhLJ
 IoPnZ9ooYTULWn+5netv3D4=
X-Google-Smtp-Source: APXvYqxd0j3L5+yAIsyKGXeQQVEfGbfAXSc6Rua6tZ0I2R7hm3Clg/aYloU0p4HMiTN+J9CnT7b+2w==
X-Received: by 2002:a17:902:2d:: with SMTP id
 42mr105677421pla.34.1558688337271; 
 Fri, 24 May 2019 01:58:57 -0700 (PDT)
Received: from localhost.localdomain ([110.225.17.212])
 by smtp.gmail.com with ESMTPSA id z14sm3236286pfk.73.2019.05.24.01.58.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:58:56 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: ks7010: Remove initialisation in ks7010_sdio.c
Date: Fri, 24 May 2019 14:28:42 +0530
Message-Id: <20190524085842.6515-1-nishkadg.linux@gmail.com>
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
Changes in v3:
- Edited subject line and commit message

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
