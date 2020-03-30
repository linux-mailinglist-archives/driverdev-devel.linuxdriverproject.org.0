Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6961986C2
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 23:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BF0088615;
	Mon, 30 Mar 2020 21:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LAfG4TGUv2bx; Mon, 30 Mar 2020 21:46:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8833888604;
	Mon, 30 Mar 2020 21:46:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6D1551BF3C3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6942E868EF
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 21:46:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5CegT5AGDIC for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 21:46:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ADE3186722
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 21:46:27 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c21so8625354pfo.5
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 14:46:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3dcAoN1+dU5RRo0qINqwezngMlazlEYMLnB6EmXTGbk=;
 b=gfMsUMHA4Pj+mLP3dWOOZyyRsxv5bDcLC9BidEGTSQ7NW9TvGI91+zRGqK0yyy5U6x
 gAOQq0qrBTTm70t5+5tP7DkIG1xzxdTFpnly5Z/fztRTKFPbxV79ssKcqiTjSNbgZ9vk
 PEfs7JFtlM/1pR+BGeTWQzvf9Dtz9dwxcEmkCG4YaD69Cd9F7R1y5IS6ogrdi7nS0WFA
 Z3xDilkr1yhnZBQGijvSByqe11SdRg7tFFGPjp8mlr5/py8kat4vxrupCdnuimdxz1kj
 EaOdRGf0Cjhh3Z1zmjmFlP+k1lvQf3/HgcNrAmz9HxaJKstu1+nJFpD5PZQic89HbJTN
 Hynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3dcAoN1+dU5RRo0qINqwezngMlazlEYMLnB6EmXTGbk=;
 b=cRBb7C0KQaPgEnWER0WJfa98x311oFy436d6h93r6HuEheO6lOQQ4ER35n9mDbfzL/
 wrNg+s+gZZnu65CcGFLEAir7VZuWqAkj8L0g7xMJiqrjPcp5Oo+tzdItCJQRDgRrtF2t
 S4cFOa8bJB6dqzJZ+lPR7+rU3GUdjXCUx/BOcRx2bvifgkQ317N+LyOBOMQVhNzmEPyc
 lozN9uQ8tjhTZqSBYwNYhceT8xWXcolzcrZuF23P5F3ULGgWgEDr9Mm5x4ImzacV9V6d
 C8MsqkFKCkcHytpI94HkQAM+NH6L7Ilf0s42CCksjnJLsoK294OllQRyBpmDS/WDuTrj
 LXWA==
X-Gm-Message-State: ANhLgQ15TpuvymUBVGmiXWLlqoE8Q5wRW6eDOFGn6+ou93sX4Od7oPrT
 CXulkMwy+31m0n96iwClG/0=
X-Google-Smtp-Source: ADFU+vsWWWw+27Zr3XdfpX0Y8ZYk9FUe5zGzgJbqIr8iQx1frk620ctEY9spPZSzsBtxANrpi36Luw==
X-Received: by 2002:a63:b40d:: with SMTP id s13mr15459446pgf.268.1585604787127; 
 Mon, 30 Mar 2020 14:46:27 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id q6sm403410pja.34.2020.03.30.14.46.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 14:46:26 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v6] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 14:46:13 -0700
Message-Id: <20200330214613.31078-1-jbwyatt4@gmail.com>
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
index dc3ab10eb630..c947e8188384 100644
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
