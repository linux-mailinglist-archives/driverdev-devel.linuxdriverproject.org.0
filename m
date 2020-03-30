Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9697E198869
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 01:39:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 82B3D23DA9;
	Mon, 30 Mar 2020 23:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q+kjagpr8TEx; Mon, 30 Mar 2020 23:39:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ABD8C23B7F;
	Mon, 30 Mar 2020 23:39:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBF411BF329
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 23:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C5BBD8869B
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 23:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MefCSWP2LfJL for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 23:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5344188699
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 23:39:11 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t4so1434360plq.12
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 16:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pxcOcpWIjOsjvgQ2bPjI1PSxQO2talzx0dTKC3l3L4=;
 b=kC396dGlRCxUqoC3rJNV8jYlr3wqGleHoOt8yaq0lqdFuSL0Of16FsXKKU/XAzjRzQ
 pGr1zi0rM3ZE/SaC2B6/PAr+/2ZQqOEZAGp+D/WVuWmWZ4xEf8IcV7mXVnb02PBsvupX
 CHxglgpl3K+eoPJiil0sa5ALVtYysVoMzlAYeCJ/qnMQRPOA1L+N3kQPNfsyH/+2scAI
 ClvPIhuCrU46Qewkjl9zTWIbb5+Kea0kx/IM86bKYa2Jda6D4aRmlt7YUQo+Gl7ob9mE
 bGAD7gHZRqNlmlLJmgzmXlK6vBTvfa50NHi1NJ4VmIpaww4cizFs4PqMlmIuMBgKTFLh
 D3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8pxcOcpWIjOsjvgQ2bPjI1PSxQO2talzx0dTKC3l3L4=;
 b=HDiUw0DLxjHFHGH/S3Wa4PaB/wuamMgXHyqhmLztIpbzYjs5j0qZ7730bgRGpWAPwW
 EAhVsxRBMH774aWMaZx9UKtXmVQnm+1aM8P7k1Vais0vauBbmQHYceNm5+zL16+Fah3o
 Ywwg88M8n17hFZDx7SfltO0p/yRfY9uYB4FprcQlB0ijGTp5LYxs9MTYGfbvxSeVYUVp
 wSu/cbYWPrw6ZFtIte6nTLMZqXLiBBA5sxBqgWyfngUWcM0zIm7x8r0HJeS2TNMHDhhI
 R6an/wMsto+LtKQgakrTzMFuZCuxm4kc/9YwQq3Ww6JJ0eDv7qiShI5EqDmkA3b8vWQ6
 4XxQ==
X-Gm-Message-State: AGi0PuYCf4Hv0HelBO0y7pV/i1f+ghnbmRd0zovI6nMEa+ZToUpd0LWI
 9sY3MXJNamMZnvoLH+bYDd0=
X-Google-Smtp-Source: APiQypKlxoA/ONi9CDJo1gNa6nL6Gyga6987LV8cZAMa12hHmHi/qm3/QxQYl7+FwWhNV03EMLwK8A==
X-Received: by 2002:a17:90a:fd90:: with SMTP id
 cx16mr613505pjb.41.1585611550428; 
 Mon, 30 Mar 2020 16:39:10 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id a15sm10961425pfg.77.2020.03.30.16.39.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:39:09 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 16:39:00 -0700
Message-Id: <20200330233900.36938-1-jbwyatt4@gmail.com>
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
v8: Fix trailing space reported by checkpatch
    Fix alignment issue suggested by:
    Stefano Brivio <sbrivio@redhat.com>

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
index dc3ab10eb630..1ef1f6b22195 100644
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
+					   SOFTPWRCTL_SWPE3));
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
