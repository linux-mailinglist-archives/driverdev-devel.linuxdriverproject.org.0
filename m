Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D65196BEC
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 10:43:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAACC86D08;
	Sun, 29 Mar 2020 08:43:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIh1EuhvCfsX; Sun, 29 Mar 2020 08:43:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 359598684A;
	Sun, 29 Mar 2020 08:43:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3DF71BF286
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 08:43:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE48986190
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 08:43:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlZDg-MUZERo for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 08:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6A7808616A
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 08:43:34 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e1so5400919plt.9
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 01:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Id8d23gHqbRL99BSISU6PhbbkVYUSOo5XcJrW6d+fG4=;
 b=nTg8tyH+FegLXOkebwiGJ2y9whQZ/BxUnZJf/tkkoeL2aw3TZOllyMdv0NSpfV9cEm
 MHJFWMcK3dkxiL5EnQ48t+1t2c0xQDnT3yr/gVUAr8sSTS70FQQI6VI6jxGSuXiMGzoJ
 trkwSu6ZaJXH72eyjvNobSkiz060K1jBvdfqbpYE/FBTo0sKuvxPNGZVNiurkFt43s9Q
 Rz5YLdooUXeUK+8V1/Xp9fxGm94aacy4hSkV9z7i+8OXWkxmwdmzNuQ3aIGppdSm1Nng
 ruUN5weC++HGmv7H972u2CwQ6MpeqIBgClgA7q8vHiBQ8nI0+Ktle5mEXpnBxC5mJssN
 /etQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Id8d23gHqbRL99BSISU6PhbbkVYUSOo5XcJrW6d+fG4=;
 b=qcnpbPWsxJgBZ+RyqmhVDvyq747GRqLibSmSheCkO+aiIInqPoT96mJaCbPQXvQW0w
 wyGaomSgYFvBRCKnpsKAWB0d5AYCLx0isADYY0YZ8G/cE1dfBLb2/Wq2gsLo1ya2PJT+
 wEl5257fKGCE9ZLFG5F5WueA3PWDwkzh/w3spqtcLYUjDisBGhE/hhWqQcmdrNFsthep
 lKfZK2j84IIqIc7K5TTwxDhZ2z9WKbBA4BBKfSkf0539naHYysrrkSQYfXK57lab/ZPX
 RePegTvArSTg7nSaUMXXUMuz1LOpT27Auqx+Dva3RGg6OyT1uMmMLrwWRs1BdOqpWij1
 xYCg==
X-Gm-Message-State: ANhLgQ2UV6/nFnjpzwvbDHew+/5em2aJbky4ULjc3dT8V0dhx+SOsz6r
 t5hJFGylUF7UNOMzLKjNEdk=
X-Google-Smtp-Source: ADFU+vsb7aOT1SwSB0fURY5Khnfm+kq8VNwOxOdMweq/f7MvFzJXDZPEJZvBmotlqmuMF/tQwam/rA==
X-Received: by 2002:a17:90a:b003:: with SMTP id
 x3mr9264046pjq.140.1585471414051; 
 Sun, 29 Mar 2020 01:43:34 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id w2sm1525487pff.195.2020.03.29.01.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 01:43:33 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: vt6656: add error code handling to unused variable
Date: Sun, 29 Mar 2020 01:43:20 -0700
Message-Id: <20200329084320.619503-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..239012539e73 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,14 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					 (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
