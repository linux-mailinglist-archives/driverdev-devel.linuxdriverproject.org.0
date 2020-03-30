Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B64198784
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 00:37:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35567875DB;
	Mon, 30 Mar 2020 22:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2kuIPMThUXS8; Mon, 30 Mar 2020 22:37:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D5E3B8760E;
	Mon, 30 Mar 2020 22:37:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 07E2E1BF3B5
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:37:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E99B520379
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 22:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIGnnyjLdVYm for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 22:37:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 56AB220357
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 22:37:29 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id t4so1375611plq.12
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YkvMuoIYK/X5jlUXAbGp136wP0Q9T5tr7KcVd6q5dxI=;
 b=SYt0aT//aArSMQ/UNzfekQzd0uvKBRqacpgJcWiAUN7HREbwlIsEVwcinfFwcBTEFA
 /fI0lPz5LZkn8m9qzEqPVK4DtytYMrndVNcN37GQV3SnDVElPUpPs5kwj99gYr8rE9Uv
 wK3jp5lDTiEip7wtN1BvRmYG6Q73TkRYHgW+nB3JW6Q2kiPaq6JlK8yucO6wsGc7weFr
 5MWJgKScJEl7yYRkpxIJobghTWzpJXGHqf48Lz99CpLNLM+KXZXl71l3XgoCuW2JY6LR
 NIvvbyxcFjKhs+ByXJnTOna1I58jRULZ9ldefpACM0lclCci8ybYTqNKiSoWA1od7QIz
 Yt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YkvMuoIYK/X5jlUXAbGp136wP0Q9T5tr7KcVd6q5dxI=;
 b=iMSWQv0KQVKStp2/tSkpDCqrFV67KiPzp5cGprVa23VweYmieyv3MA2MMVe9HK2BA+
 Ei02cARbza2Qf4vh18hRWEdp3U0uDdebcskWdMygDW4MuoF2a1RhqnTrYDS1CMSxzNLy
 GkI9T69y5+38/z1mv31nVuI5/Y0KVHSVZgvYH5EXgNMsa6A8/9puQld4HuxCWRKV9vFl
 5RXeh07sVagTltS0HI2adD0gRfqXjN6umJ9NGInB1hYJ5pkRshNdbboR7Ob4TrMyFXRf
 8/X4qbNxnk0ZeKZDlv82yxAr8UjR+06fGeie2rJmyKINCmn0LJnZtqhnyXnQ2qHfJhbu
 wKVQ==
X-Gm-Message-State: AGi0PuaY1ME0EBYMrCEzYawI3GK6Rmn//qMKX17PdHuG6EyTBNMFWAfw
 JC0VYknjXuwMS49MmhwY+1M=
X-Google-Smtp-Source: APiQypLTlPYdWDWjEIMfZYMepqLmhFkJU0jHbxBovrLGm8To7rOQU5pfUL3kI8E6NbE7pHdgLaTOjQ==
X-Received: by 2002:a17:90a:240f:: with SMTP id
 h15mr385069pje.176.1585607848766; 
 Mon, 30 Mar 2020 15:37:28 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id m14sm474522pje.19.2020.03.30.15.37.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 15:37:28 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v7] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 15:37:18 -0700
Message-Id: <20200330223718.33885-1-jbwyatt4@gmail.com>
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
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v7: Move an if check.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v6: Forgot to add all the v5 code to commit.

v5: Remove Suggested-by: Julia Lawall above seperator line.
    Remove break; statement in switch block.
    break; removal checked by both gcc compile and checkpatch.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..df12c73097e0 100644
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
-		break;
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 | 
+					  SOFTPWRCTL_SWPE3));
+		if (ret)
+			return ret;
 	}
 
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
