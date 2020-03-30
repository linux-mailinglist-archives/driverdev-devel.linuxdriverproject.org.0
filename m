Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FB41983A1
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 20:45:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 030F8227E1;
	Mon, 30 Mar 2020 18:45:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mtATC2BBZk+T; Mon, 30 Mar 2020 18:45:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B830E20768;
	Mon, 30 Mar 2020 18:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C15D1BF324
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 18:45:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 984718701E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 18:45:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDw0X79ENsfE for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 18:45:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FD1F87015
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 18:45:34 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id a24so2196542pfc.8
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 11:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9wol+ovrMueDkx4O+ZEeXlUF+lPxlG2M/9hBMAq0rDQ=;
 b=lGnsXInSBhi87I3QI6h7raDe/x4KeVUALH840j659Z+daNe6ehRqhKNObsT3XqRPhU
 IVFjIOJraw2Zqj5f8mk1vZfJPESaRljbCjPHrHI54d3Dy5Gn2YmDgQIeU/xC6Gf1ro1k
 KU56WeJm8XFDW4ql8U4Xlhl9K5r+XIY1kVDQCLv6qWszf5Br27oQTYRXwpu1g/K0KcvN
 K5q/iwRgxpx+1XzGfa6qcGG2pDWeNrzJ32nsGVLhoMuRwSFLKUXlGZm4ESxLw4sf/hsc
 SoVhYcwJZ5YljDPwr/PW+7+cjHsLQqIOvkshbfwQubTQIBfKi1aU+Drs2SXAqm4vv8WT
 bMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9wol+ovrMueDkx4O+ZEeXlUF+lPxlG2M/9hBMAq0rDQ=;
 b=ogzDWZOzHVSLWjilxoFBdWlga1fvhRtUdiLBjVN9TKlXCl7GIsdPGpPuvb8RJeor9T
 q3utpE8wPrYTzldD1heksIePZfzYBvUfhh9tijOPPSRSrnYuW5r/Qq4Ku/Tw9IqEt0ns
 5CjIFvKBVlIQ82ExDecm/SAtTZA9suyUjVqzFzHYZ/gMsB8YomEsKI9BkwSra07R4OYJ
 NYrCOyVqoShQNIAtL1BJk2i3417E2qCzIqqajwXsVYRdAKDhl6T1g5F6GbvcQ9S0/dip
 a/qZBsUp5BRRTUQtLgf7Qnx7EkPryW8+6n1ChpS00ZeuT8N4DPF6653Y5xITsq+lWrWY
 hXqg==
X-Gm-Message-State: ANhLgQ2fmrL/I7tAJNUPOryx+XFrm1IODw3caovBJW08zdNrvKjoynes
 KnlinyE3ZlqBmkpaUis7jk0=
X-Google-Smtp-Source: ADFU+vunmqPw2uT4eqPeeR1QoIac+sHhFAoghR7V0FCU1nrZrah2LDXbaq3rdhqY0m1rnQCVSk8JJw==
X-Received: by 2002:a62:1ace:: with SMTP id
 a197mr13951840pfa.105.1585593933473; 
 Mon, 30 Mar 2020 11:45:33 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id 13sm3347202pfn.131.2020.03.30.11.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 11:45:33 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 11:45:17 -0700
Message-Id: <20200330184517.33074-1-jbwyatt4@gmail.com>
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

 drivers/staging/vt6656/card.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..27fc53accdfd 100644
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
@@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 | 
+					  SOFTPWRCTL_SWPE3));
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
