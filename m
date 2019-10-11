Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ED1E2D390F
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 08:03:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2AC8686EB5;
	Fri, 11 Oct 2019 06:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XDhu5mfOO1d8; Fri, 11 Oct 2019 06:03:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FBD486EA2;
	Fri, 11 Oct 2019 06:03:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 579811BF841
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 34E2225518
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 06:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5QdzAsg5Sh32 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 06:03:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 366BB20461
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 06:03:19 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id e10so1150637pgd.11
 for <devel@driverdev.osuosl.org>; Thu, 10 Oct 2019 23:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qz3Pn3iXTIAiE5Vxrx22/mL18yJZNqUc+hQQr9LyuGk=;
 b=qRw947YLIcc9aPdljmXnyA/xH0POdjYEa92ZTsYn+nL5Xdk2MjpmQIMKvPT+Fk8PNT
 CNoQPCcCnEkBxcZlxSeGajPaVjv8ive0kdMZN1tZhV5xmpbZbdnrruqT70ceWXUsNjEH
 tVPp++edETPFa5n7v/TL2CRj11yWwyTWoUMQS1Mg2lfcxByj5xKSlb2xNCivzshc/F2z
 vdEk1+Pup1096N721pH2WV7vA+B4OQgGF4q8StprvbbbSUsPWl6hSLUy0L3Qn6bYiaWp
 3/nYTzz9v2MpWYcIdbnyavV6lyeX2W0QMecnG8E+wxFwXH7F2XW8FX6G352oXeYOz8QH
 WGgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qz3Pn3iXTIAiE5Vxrx22/mL18yJZNqUc+hQQr9LyuGk=;
 b=TgFTzMXRpeev41LICXk3jvDTVMjuYPEVwADZw6JivNPtBnvpKpP8V/1/piLdZiqtHB
 kcxLfCZ+WHjClXf08dXl6Y3myQyTvUVrrpGnjYxrXfL1wbbyX8dmyFG60At6CSL1JAS7
 U97FGOsM8ZEwe5ivANXJ0dnD25UJp2jHpO2vUpu14CbwT7b4vlHTVWPq3tUB/YINo0Ro
 qXeHQx3nHN3Wp02slRMrThTwT08Bi6b9jJqc16vWIvia73Q+ZjQPgFdN3ChmRaxb4Zzb
 beP+B1CLGzx23bEgV2RBlHjGXcrj/acVcbURwruSieiVToUzuGkCBmbRtL1cPcpadGuS
 2nFA==
X-Gm-Message-State: APjAAAXYDubIG+nbDDA90l/NM81Fvf/TDRwHkJQ0tqjQ2ORhfxWxjsLA
 uMrLtrbV4FwFGGFMxtbT6ys=
X-Google-Smtp-Source: APXvYqwyzKMM75Cft1OKVW9Jt6akVe0ytXSGjl13uwCrlJOem0eKVsftuj36yrTACVJiv/+7Y/ISWw==
X-Received: by 2002:a17:90a:de14:: with SMTP id
 m20mr15695383pjv.10.1570773798627; 
 Thu, 10 Oct 2019 23:03:18 -0700 (PDT)
Received: from wambui.zuku.co.ke ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id p11sm9395715pgb.1.2019.10.10.23.03.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 23:03:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/5] staging: octeon: remove typedef declaration for
 cvmx_helper_link_info_t
Date: Fri, 11 Oct 2019 09:02:39 +0300
Message-Id: <78e2c3a4089261e416e9b890cdf81ef029966b75.1570773209.git.wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <cover.1570773209.git.wambui.karugax@gmail.com>
References: <cover.1570773209.git.wambui.karugax@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove declaration of union cvmx_helper_link_info_t as typedef in
drivers/staging/octeon/octeon-stubs.h.
Also replace its previous uses with new union declaration.
Issue found by checkpatch.pl

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/staging/octeon/ethernet-mdio.c   |  6 +++---
 drivers/staging/octeon/ethernet-rgmii.c  |  4 ++--
 drivers/staging/octeon/ethernet.c        |  4 ++--
 drivers/staging/octeon/octeon-ethernet.h |  2 +-
 drivers/staging/octeon/octeon-stubs.h    | 10 +++++-----
 5 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
index ffac0c4b3f5c..847081549373 100644
--- a/drivers/staging/octeon/ethernet-mdio.c
+++ b/drivers/staging/octeon/ethernet-mdio.c
@@ -65,7 +65,7 @@ int cvm_oct_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 }
 
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li)
+			  union cvmx_helper_link_info_t li)
 {
 	if (li.s.link_up) {
 		pr_notice_ratelimited("%s: %u Mbps %s duplex, port %d, queue %d\n",
@@ -81,7 +81,7 @@ void cvm_oct_note_carrier(struct octeon_ethernet *priv,
 void cvm_oct_adjust_link(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 
 	link_info.u64		= 0;
 	link_info.s.link_up	= dev->phydev->link ? 1 : 0;
@@ -106,7 +106,7 @@ int cvm_oct_common_stop(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int index = INDEX(priv->port);
 
diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
index d91fd5ce9e68..f815be830ce0 100644
--- a/drivers/staging/octeon/ethernet-rgmii.c
+++ b/drivers/staging/octeon/ethernet-rgmii.c
@@ -53,7 +53,7 @@ static void cvm_oct_set_hw_preamble(struct octeon_ethernet *priv, bool enable)
 static void cvm_oct_check_preamble_errors(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	unsigned long flags;
 
 	link_info.u64 = priv->link_info;
@@ -103,7 +103,7 @@ static void cvm_oct_check_preamble_errors(struct net_device *dev)
 static void cvm_oct_rgmii_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	bool status_change;
 
 	link_info = cvmx_helper_link_get(priv->port);
diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 3de209b7d0ec..1f7a7ebe1a60 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -460,7 +460,7 @@ int cvm_oct_common_open(struct net_device *dev,
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
 	int index = INDEX(priv->port);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 	int rv;
 
 	rv = cvm_oct_phy_setup_device(dev);
@@ -496,7 +496,7 @@ int cvm_oct_common_open(struct net_device *dev,
 void cvm_oct_link_poll(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
-	cvmx_helper_link_info_t link_info;
+	union cvmx_helper_link_info_t link_info;
 
 	link_info = cvmx_helper_link_get(priv->port);
 	if (link_info.u64 == priv->link_info)
diff --git a/drivers/staging/octeon/octeon-ethernet.h b/drivers/staging/octeon/octeon-ethernet.h
index 042220d86d33..5a0d754b0c70 100644
--- a/drivers/staging/octeon/octeon-ethernet.h
+++ b/drivers/staging/octeon/octeon-ethernet.h
@@ -91,7 +91,7 @@ int cvm_oct_common_stop(struct net_device *dev);
 int cvm_oct_common_open(struct net_device *dev,
 			void (*link_poll)(struct net_device *));
 void cvm_oct_note_carrier(struct octeon_ethernet *priv,
-			  cvmx_helper_link_info_t li);
+			  union cvmx_helper_link_info_t li);
 void cvm_oct_link_poll(struct net_device *dev);
 
 extern int always_use_pow;
diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
index fd7522f70f7e..78f42597cee5 100644
--- a/drivers/staging/octeon/octeon-stubs.h
+++ b/drivers/staging/octeon/octeon-stubs.h
@@ -191,7 +191,7 @@ struct cvmx_wqe_t {
 	uint8_t packet_data[96];
 };
 
-typedef union {
+union cvmx_helper_link_info_t {
 	uint64_t u64;
 	struct {
 		uint64_t reserved_20_63:44;
@@ -199,7 +199,7 @@ typedef union {
 		uint64_t full_duplex:1;	    /**< 1 if the link is full duplex */
 		uint64_t speed:18;	    /**< Speed of the link in Mbps */
 	} s;
-} cvmx_helper_link_info_t;
+};
 
 typedef enum {
 	CVMX_FAU_REG_32_START	= 0,
@@ -1267,15 +1267,15 @@ static inline cvmx_helper_interface_mode_t cvmx_helper_interface_get_mode(int
 	return 0;
 }
 
-static inline cvmx_helper_link_info_t cvmx_helper_link_get(int ipd_port)
+static inline union cvmx_helper_link_info_t cvmx_helper_link_get(int ipd_port)
 {
-	cvmx_helper_link_info_t ret = { .u64 = 0 };
+	union cvmx_helper_link_info_t ret = { .u64 = 0 };
 
 	return ret;
 }
 
 static inline int cvmx_helper_link_set(int ipd_port,
-				cvmx_helper_link_info_t link_info)
+				       union cvmx_helper_link_info_t link_info)
 {
 	return 0;
 }
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
