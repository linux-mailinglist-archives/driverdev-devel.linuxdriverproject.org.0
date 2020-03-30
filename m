Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCEA198197
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 18:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88972868AF;
	Mon, 30 Mar 2020 16:46:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOIA_6oH4hBP; Mon, 30 Mar 2020 16:46:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54DB785B12;
	Mon, 30 Mar 2020 16:46:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D68CD1BF349
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D18AB86DF3
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 16:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ls-EzkQVDrqO for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 16:45:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
 [209.85.210.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A293E86B3B
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 16:45:56 +0000 (UTC)
Received: by mail-pf1-f171.google.com with SMTP id 23so8882082pfj.1
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1jHmmqwn2svjDpJo/PqcecI2nv0o43iwqhoUvWD12Vs=;
 b=UtaEHMs0yz7OzsCgZpF68S16mE3rpzMGRscsJpWv+NrjN1/ike3O51+Q+Wejvo0baN
 m0UHlGFc13NiDBP55M5QExJcxOwwqQSiwT4ODoytwiX5YW75t9VaupearIW/bs/UXUak
 iGToo5V8SQQIEquNd4I5b4wNnAQJQrgBXhpPFFzplNKWpTZoQvUpGjd918V4WKC0/6n9
 16Edgr0PuVfUlvAJDA53+FiCxJvO6m1S5L8UnUMrnk+sHrcZyJUyRwcYpmXeMHlIDOUn
 WAuQ8OfjPo03bghgj+9d7Vy1bvTI04+PUxWBsPxxvsjk8P9nOWk3NV71Kwwzinr9uE3A
 kOBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1jHmmqwn2svjDpJo/PqcecI2nv0o43iwqhoUvWD12Vs=;
 b=I87n6bf05OBSO5arvUTrtZl6tTcfy1HVeVJtL+Yc67edzrZREhg6+J5SswF168CeCH
 86KlYKtgTB3BYfRi6o4G2IcfLo+Ko91VrXUlo7SeXl/LBP1oWLdVpR/aq7cmQL4byMku
 /JBb3vungpEiZmSSTvXZsGvYU5gOawEuZBw0eXRjQdVYcgXZGvQzr9Q0GYgEaf5gEw7k
 XPmWFvxYgfOE9UKybMWKHbmQEqUI5i4FDPk/xz+mnjeStMKqcvhebqxIuVI084DhdkBn
 mm1lva6k194Nz+RmefpbyORaKczwRlElw6D6f09+97h1ExjIr1hz4xRhdp1U6hMKNNwq
 QB+w==
X-Gm-Message-State: ANhLgQ0r6C9Gsy5d6UBZ7HD71CZ+qzPQB7360NNZ6gK5mubnGfqReaPb
 52qbJsXVMLsN/d77b/VNkc0=
X-Google-Smtp-Source: ADFU+vtOhZClSPuPt9LL+z7Wgq9KBychguJqh6cRzsTPUxU7Inz3i+Lc6EnI2CAJBYVtbDwyze8TGQ==
X-Received: by 2002:a05:6a00:42:: with SMTP id
 i2mr13604943pfk.108.1585586756115; 
 Mon, 30 Mar 2020 09:45:56 -0700 (PDT)
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id d3sm56194pjz.2.2020.03.30.09.45.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 09:45:55 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@inria.fr>,
 Stefano Brivio <sbrivio@redhat.com>,
 Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Colin Ian King <colin.king@canonical.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 09:45:30 -0700
Message-Id: <20200330164530.2919-1-jbwyatt4@gmail.com>
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
Suggested-by: Julia Lawall <julia.lawall@inria.fr>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.
    Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

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
