Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 732B7196ADC
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 05:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 06A2222621;
	Sun, 29 Mar 2020 03:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8RuUUxzh2YP7; Sun, 29 Mar 2020 03:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 139F8204F6;
	Sun, 29 Mar 2020 03:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7721BF859
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 03:35:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 28645868BF
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 03:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97oLPT5wegJS for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 03:35:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13D90868AF
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 03:35:32 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g32so844123pgb.6
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 20:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cF2fdmFT4y8poKQgykSEvBARpVMuKdcuHdJc6rFcq9w=;
 b=N7zLTeCISvKUnj4MGL6o9owyLBSCH99tXRh/ASuxP9IDLdm5DiaD+EBAdeWvWh+PIa
 kaX/PMghFGM2V1z/GCEOEQBmO6CajtTQ010SFPYgl2z07B9LR9qQALKhAc4Jbvm7V7Mn
 4aKin703vIMgt9GleCK58cqWP2ZSwyIE/0hztDW9Cq25NzTy8Zf7q/md1G1CMsCscWn3
 l0vw7dLx9299kn17N1wEYQs+6g1AyqwegMhgAv/m6jLE31MiZNe/hVDNJzajW6A3m0Gp
 0miOyoyxk8h58/w/6GXPetEbamfqAhTn4wZ/oTCXfP7RrxtVpDCC0sjkHhVrMFZ49v6E
 izig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cF2fdmFT4y8poKQgykSEvBARpVMuKdcuHdJc6rFcq9w=;
 b=GyENbS3ET/6uDpWZa18+MZ/70Owr5XZvrx/oc/JCaLZuYhfgyFJuprCEF0zmo58E2v
 0Uz//KzCqY18EhsMf7h0aOWUFQJyo4XD+3a1cmJyaA7W0r2gceaOU/xAu5/vgwzIXMQu
 BwwPLVJLhzkl/8wxNhyVypR72S4vzqTawVZADIfjBHCYByBMwbZpPVZQNNp3HonPDmWN
 OcIr+5Ac11z7/hVMfBQThuetkGMVH6NHwdH5Nv4BehpJY37QFRNIWabzENOqs6QdSO4W
 8FdoGRVNsHWWda6C93nScHXWE+/8LrHGAFBVpcUganT8KmRmunjTKI4JARilIlCgF3Fd
 gxKQ==
X-Gm-Message-State: ANhLgQ31288lfpge5qQyZFRsfLisssiSkTVfleDxfegHMNXlT7kzs1Ol
 1NTO38TccPXtxn17CZewwgM=
X-Google-Smtp-Source: ADFU+vuZUT/X9VxJIMZrQj0la5108iEnXqvQeZz13RQeUqJhiGt2CctKeng+NKKpZ0lOEQfgWzdHXQ==
X-Received: by 2002:aa7:9471:: with SMTP id t17mr6780192pfq.272.1585452931595; 
 Sat, 28 Mar 2020 20:35:31 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id i24sm4943223pgb.57.2020.03.28.20.35.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 20:35:31 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Oscar Carter <oscar.carter@gmx.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: add error code handling to unused variable
Date: Sat, 28 Mar 2020 20:34:35 -0700
Message-Id: <20200329033435.498485-1-jbwyatt4@gmail.com>
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
 drivers/staging/vt6656/card.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..9d23c3ec1e60 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,13 +738,18 @@ int vnt_radio_power_on(struct vnt_private *priv)
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
+		goto end;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	if (ret)
+		goto end;
 
+end:
 	return ret;
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
