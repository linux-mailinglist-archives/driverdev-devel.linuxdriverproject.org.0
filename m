Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5073320B2B
	for <lists+driverdev-devel@lfdr.de>; Sun, 21 Feb 2021 15:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83709870C6;
	Sun, 21 Feb 2021 14:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qUOlkOFNY91v; Sun, 21 Feb 2021 14:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85306870C4;
	Sun, 21 Feb 2021 14:58:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F6D01BF957
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2793C870BD
 for <devel@linuxdriverproject.org>; Sun, 21 Feb 2021 14:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mbk-5IDE5RgH for <devel@linuxdriverproject.org>;
 Sun, 21 Feb 2021 14:58:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0791E870B6
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 14:58:21 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id b21so8469328pgk.7
 for <devel@driverdev.osuosl.org>; Sun, 21 Feb 2021 06:58:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NeI6lcV4YdcFGOphuwk8TMF/Z31kIBB41epzBZ4svCE=;
 b=kEkb0u/QvkvP5guHJYebj9rdDDAivXUjhIaq0/ZOBwuDE783a4gToZZhmQW16gSlUS
 qqQXJRlXl2anhhXGgD9cfHBGwinpfFjrXc+26Lnf8J7qty89XM8cSkXzW6UVs2e2doF3
 bkGJVYgx5dTIbWsUGAC/W88HNPHDBDUCWUjuZqGwPXW5oEdoBAToaxSI/83eyPkDIHpe
 2PwPA4Q1xH4MqqNFR56MMJaHe14wlc4f3DR1kg0ksr9hY1UpG6YlweWl9rWj+9FT6o6l
 2MMsUj0RsuBbHsYCrQHfvJzb07jlqLNA2Lt1Tjcco5CcEaZPhCaAPOr3DvHafpsh+ALm
 xZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NeI6lcV4YdcFGOphuwk8TMF/Z31kIBB41epzBZ4svCE=;
 b=B4iBt/c4cxmuRQDYVk7SHWHOUIyvBSGHOdcGq3++SiC5yyY4NRapqh/Bv//sOuCqzD
 UeXhQAHfNF0qRU/a6lApMkJSFp4kQZZu5BQOA8bfQt4FlzTBi6HnOG3DFs2znlYIeI8J
 Kii3sGb8egdQ5lAm7WBJMbuoXdfPEWnt+QEceRPCuiA8DnY6hADoI6WXr7zq+e06qaMj
 +Q0MlBgWomRT+Gi+LUTf06GaXKrii9jQ9kpuL61jIrTFVTyZc05Y7dZhaqwbDM8pq3dD
 33mLM71mhhhHNrl+lKThD7xkzcfsdnjxeHT2oFPQK06pp0mhBsDAZewTtucp6Hn31O4n
 g7pg==
X-Gm-Message-State: AOAM530kVmn3C59RrPhk2z1ZS7CVKPt2HMXaHrPl5DXpZd9SWeF9rlMh
 9nLdQZE2d903DNPbiKx+mrGdz9PTs9zG3Snd
X-Google-Smtp-Source: ABdhPJzyBucRpeMQwlDEh28RUln/x4ON3mcnJ16/lplRM2oqXYGH5FRqAi7hUwG5fUmp8o/mz+qvWA==
X-Received: by 2002:a63:f704:: with SMTP id x4mr3912666pgh.137.1613919500480; 
 Sun, 21 Feb 2021 06:58:20 -0800 (PST)
Received: from localhost.localdomain ([106.51.142.238])
 by smtp.gmail.com with ESMTPSA id a78sm15906536pfa.10.2021.02.21.06.58.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Feb 2021 06:58:19 -0800 (PST)
From: Shreesh Adiga <16567adigashreesh@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: octeon: refactor interface check logic in ethernet.c
Date: Sun, 21 Feb 2021 20:25:05 +0530
Message-Id: <20210221145505.2869928-1-16567adigashreesh@gmail.com>
X-Mailer: git-send-email 2.30.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The check for interface is duplicated in 3 places and has been refactored
into a function. Also the if condition was wrapping the whole body in all
three places, so it has been changed to return if the condition is false
to reduce the indentation levels.

Signed-off-by: Shreesh Adiga <16567adigashreesh@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 209 +++++++++++++++---------------
 1 file changed, 102 insertions(+), 107 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 5dea6e96ec90..8357ce9bc11b 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -228,6 +228,12 @@ static struct net_device_stats *cvm_oct_common_get_stats(struct net_device *dev)
 	return &dev->stats;
 }
 
+static int cvm_oct_validate_interface(int interface)
+{
+	return interface < 2 && (cvmx_helper_interface_get_mode(interface) !=
+				 CVMX_HELPER_INTERFACE_MODE_SPI);
+}
+
 /**
  * cvm_oct_common_change_mtu - change the link MTU
  * @dev:     Device to change
@@ -245,42 +251,42 @@ static int cvm_oct_common_change_mtu(struct net_device *dev, int new_mtu)
 	int vlan_bytes = 0;
 #endif
 	int mtu_overhead = ETH_HLEN + ETH_FCS_LEN + vlan_bytes;
+	int index;
+	/* Add ethernet header and FCS, and VLAN if configured. */
+	int max_packet = new_mtu + mtu_overhead;
 
 	dev->mtu = new_mtu;
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
-		int index = INDEX(priv->port);
-		/* Add ethernet header and FCS, and VLAN if configured. */
-		int max_packet = new_mtu + mtu_overhead;
-
-		if (OCTEON_IS_MODEL(OCTEON_CN3XXX) ||
-		    OCTEON_IS_MODEL(OCTEON_CN58XX)) {
-			/* Signal errors on packets larger than the MTU */
-			cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface),
-				       max_packet);
-		} else {
-			/*
-			 * Set the hardware to truncate packets larger
-			 * than the MTU and smaller the 64 bytes.
-			 */
-			union cvmx_pip_frm_len_chkx frm_len_chk;
-
-			frm_len_chk.u64 = 0;
-			frm_len_chk.s.minlen = VLAN_ETH_ZLEN;
-			frm_len_chk.s.maxlen = max_packet;
-			cvmx_write_csr(CVMX_PIP_FRM_LEN_CHKX(interface),
-				       frm_len_chk.u64);
-		}
+	if (!cvm_oct_validate_interface(interface))
+		return 0;
+
+	index = INDEX(priv->port);
+
+	if (OCTEON_IS_MODEL(OCTEON_CN3XXX) || OCTEON_IS_MODEL(OCTEON_CN58XX)) {
+		/* Signal errors on packets larger than the MTU */
+		cvmx_write_csr(CVMX_GMXX_RXX_FRM_MAX(index, interface),
+			       max_packet);
+	} else {
 		/*
-		 * Set the hardware to truncate packets larger than
-		 * the MTU. The jabber register must be set to a
-		 * multiple of 8 bytes, so round up.
+		 * Set the hardware to truncate packets larger
+		 * than the MTU and smaller the 64 bytes.
 		 */
-		cvmx_write_csr(CVMX_GMXX_RXX_JABBER(index, interface),
-			       (max_packet + 7) & ~7u);
+		union cvmx_pip_frm_len_chkx frm_len_chk;
+
+		frm_len_chk.u64 = 0;
+		frm_len_chk.s.minlen = VLAN_ETH_ZLEN;
+		frm_len_chk.s.maxlen = max_packet;
+		cvmx_write_csr(CVMX_PIP_FRM_LEN_CHKX(interface),
+			       frm_len_chk.u64);
 	}
+	/*
+	 * Set the hardware to truncate packets larger than
+	 * the MTU. The jabber register must be set to a
+	 * multiple of 8 bytes, so round up.
+	 */
+	cvmx_write_csr(CVMX_GMXX_RXX_JABBER(index, interface),
+		       (max_packet + 7) & ~7u);
+
 	return 0;
 }
 
@@ -293,51 +299,46 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	int interface = INTERFACE(priv->port);
+	union cvmx_gmxx_rxx_adr_ctl control;
+	int index;
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
-		union cvmx_gmxx_rxx_adr_ctl control;
-		int index = INDEX(priv->port);
-
-		control.u64 = 0;
-		control.s.bcst = 1;	/* Allow broadcast MAC addresses */
-
-		if (!netdev_mc_empty(dev) || (dev->flags & IFF_ALLMULTI) ||
-		    (dev->flags & IFF_PROMISC))
-			/* Force accept multicast packets */
-			control.s.mcst = 2;
-		else
-			/* Force reject multicast packets */
-			control.s.mcst = 1;
-
-		if (dev->flags & IFF_PROMISC)
-			/*
-			 * Reject matches if promisc. Since CAM is
-			 * shut off, should accept everything.
-			 */
-			control.s.cam_mode = 0;
-		else
-			/* Filter packets based on the CAM */
-			control.s.cam_mode = 1;
-
-		gmx_cfg.u64 =
-		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
-		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
-			       gmx_cfg.u64 & ~1ull);
-
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CTL(index, interface),
-			       control.u64);
-		if (dev->flags & IFF_PROMISC)
-			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
-				       (index, interface), 0);
-		else
-			cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN
-				       (index, interface), 1);
-
-		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
-			       gmx_cfg.u64);
-	}
+	if (!cvm_oct_validate_interface(interface))
+		return;
+
+	index = INDEX(priv->port);
+
+	control.u64 = 0;
+	control.s.bcst = 1;	/* Allow broadcast MAC addresses */
+
+	if (!netdev_mc_empty(dev) || (dev->flags & IFF_ALLMULTI) ||
+	    (dev->flags & IFF_PROMISC))
+		/* Force accept multicast packets */
+		control.s.mcst = 2;
+	else
+		/* Force reject multicast packets */
+		control.s.mcst = 1;
+
+	if (dev->flags & IFF_PROMISC)
+		/*
+		 * Reject matches if promisc. Since CAM is
+		 * shut off, should accept everything.
+		 */
+		control.s.cam_mode = 0;
+	else
+		/* Filter packets based on the CAM */
+		control.s.cam_mode = 1;
+
+	gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+		       gmx_cfg.u64 & ~1ull);
+
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CTL(index, interface), control.u64);
+	if (dev->flags & IFF_PROMISC)
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN(index, interface), 0);
+	else
+		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM_EN(index, interface), 1);
+
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
 }
 
 static int cvm_oct_set_mac_filter(struct net_device *dev)
@@ -345,40 +346,34 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	struct octeon_ethernet *priv = netdev_priv(dev);
 	union cvmx_gmxx_prtx_cfg gmx_cfg;
 	int interface = INTERFACE(priv->port);
+	int i;
+	u64 mac = 0;
+	u8 *ptr;
+	int index;
+
+	if (!cvm_oct_validate_interface(interface))
+		return 0;
+
+	ptr = dev->dev_addr;
+	index = INDEX(priv->port);
+
+	for (i = 0; i < 6; i++)
+		mac = (mac << 8) | (u64)ptr[i];
+
+	gmx_cfg.u64 = cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
+		       gmx_cfg.u64 & ~1ull);
+
+	cvmx_write_csr(CVMX_GMXX_SMACX(index, interface), mac);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM0(index, interface), ptr[0]);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM1(index, interface), ptr[1]);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM2(index, interface), ptr[2]);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM3(index, interface), ptr[3]);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM4(index, interface), ptr[4]);
+	cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM5(index, interface), ptr[5]);
+	cvm_oct_common_set_multicast_list(dev);
+	cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface), gmx_cfg.u64);
 
-	if ((interface < 2) &&
-	    (cvmx_helper_interface_get_mode(interface) !=
-		CVMX_HELPER_INTERFACE_MODE_SPI)) {
-		int i;
-		u8 *ptr = dev->dev_addr;
-		u64 mac = 0;
-		int index = INDEX(priv->port);
-
-		for (i = 0; i < 6; i++)
-			mac = (mac << 8) | (u64)ptr[i];
-
-		gmx_cfg.u64 =
-		    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
-		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
-			       gmx_cfg.u64 & ~1ull);
-
-		cvmx_write_csr(CVMX_GMXX_SMACX(index, interface), mac);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM0(index, interface),
-			       ptr[0]);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM1(index, interface),
-			       ptr[1]);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM2(index, interface),
-			       ptr[2]);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM3(index, interface),
-			       ptr[3]);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM4(index, interface),
-			       ptr[4]);
-		cvmx_write_csr(CVMX_GMXX_RXX_ADR_CAM5(index, interface),
-			       ptr[5]);
-		cvm_oct_common_set_multicast_list(dev);
-		cvmx_write_csr(CVMX_GMXX_PRTX_CFG(index, interface),
-			       gmx_cfg.u64);
-	}
 	return 0;
 }
 
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
