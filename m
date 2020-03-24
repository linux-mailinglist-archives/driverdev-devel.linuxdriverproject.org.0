Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1D71905E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 07:46:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BF2286910;
	Tue, 24 Mar 2020 06:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y34xgs4JPBAX; Tue, 24 Mar 2020 06:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D57AB868B6;
	Tue, 24 Mar 2020 06:46:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FB211BF35E
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6A634204AB
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 06:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ImohuFtn5PBJ for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 06:46:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B08922041B
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 06:46:13 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id w2so6505225oic.5
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 23:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
 b=b1jpTp4B/e8ld6W7K2xPIhclIcEVsAnvAe+EMuzBiS31/s3QhUZXKhkCgm3fPyQ1gx
 TQ20cmvwMjxCRuIA8NJ79kYdOSYNrlNgQp3X6sxNUcLdmEcIjnBwLNnnBXn4xVDbM+tS
 9lhk1q/ObYf6vvmpG7fZDO3IEqxho3QLE6SSHTH2P8FyHGbDs3idTKvImBmobYGRigQP
 PSwjHklEuXRsI1OwATpb+tEBuBXz7LXS6nEulfEHFzVAgtpmj5bBduh/KEwb0PtVbMMy
 0+u7HO7/LmL4AAycH6dKs6XyshBp2qXxGht81ERf8eIabT80Uhi+LHiu4/1Wr1IDPRii
 YZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y2Cpzw4E1MH/apRZiYWRudyXyqXaavHR/FmSYKlPnKY=;
 b=jTXrbkcU2KZghL8UUse9end7CBcg6+K9YuzkgVupquWMyG7Ez64WPTkcEodR+HflyO
 SrOBRop1sxoKNecdw0WZoAp0+NQTH6zYGJtAMVC+EgRot7fSwZuDxqdnLrJpfTB8npW8
 uWLxpRX8aOS3t7q9FUIPxlfLUCpkJ0NPnSFTY5xPzv0bO+lOnjkSRaqCWYzD8y6aNyqC
 2gvF80sRQJG72G4pe2P6H7Mi1u/I7zZyLUPXhbI+lWzHD2Onw3L5a+WazTwBHU2FhC25
 DgMlrRxfLEOJLbxOL17Aq8+YDHevkLa6GBMmuEk86IXCwU9xqYTZ/bR+XQYIOUdESfws
 bfGg==
X-Gm-Message-State: ANhLgQ2U6+OTOz7DAXyjxvgmLOgRipqrWAT0WQmyFbmmkE2iAgxQ4BqH
 1RylYQ1olGfNsOycCCDkahE=
X-Google-Smtp-Source: ADFU+vsM+mBjfop2NBPyp3ELPu1FSyg2p9oSo3vNcQD9CE6eykdqD8v4ElqykaUcGRIGGvZM9AHhAg==
X-Received: by 2002:aca:bd0b:: with SMTP id n11mr2240979oif.90.1585032372991; 
 Mon, 23 Mar 2020 23:46:12 -0700 (PDT)
Received: from localhost.localdomain ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id x1sm2910134ota.7.2020.03.23.23.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 23:46:12 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Date: Mon, 23 Mar 2020 23:45:44 -0700
Message-Id: <20200324064545.1832227-2-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200324064545.1832227-1-jbwyatt4@gmail.com>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
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
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unneeded variable ret; replace with 0 for the return value.

Update function documentation (comment) on the return status as
suggested by Julia Lawall <julia.lawall@inria.fr>.

Issue reported by coccinelle (coccicheck).

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/vt6656/card.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..05b57a2489a0 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -716,13 +716,11 @@ int vnt_radio_power_off(struct vnt_private *priv)
  *  Out:
  *      none
  *
- * Return Value: true if success; otherwise false
+ * Return Value: 0
  *
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = 0;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -741,7 +739,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return 0;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
