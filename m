Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C871D6E580
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 14:17:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6910988223;
	Fri, 19 Jul 2019 12:17:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dALwQBPTK0JP; Fri, 19 Jul 2019 12:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B600880C1;
	Fri, 19 Jul 2019 12:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD4DA1BF35D
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 12:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D5C9486457
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 12:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4J43eOuujLGQ for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 12:17:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64C3785660
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 12:17:45 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id i2so15575059plt.1
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 05:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VdW91kGbtMx1/wFOgVLAAmhmR53/Mmovc2B4qKSLVoM=;
 b=tPV17GxCfw5GOn9Z0SM0asoH6tv9DsX2Mclc+LSSVLakBXKMFML2Nz1RqCm69dXf+4
 MdNq5/hych7y5E5zSSQn3QbuoCIZJ+yFtf6KM6jbGBLY8qxp7sk9isvGd4mS7j0ecQ3q
 RShEFu0wZ2yyQkTD2bmGjPnelmS9Cz4K8GIYnjzmYbtfhtej4sZ+ELlk9/v+QNtspy+i
 k1/ffZR6ZiJD4stuV0bDxMIzzDhgYDg1BAynZHpK1M9YTvsLNswDyxb6MfP5ZG2E2JU8
 U/2nswAdXaMprd/cETjMj26I3jnB+dOuO9mjr172uRQeZ+F4Nwob4C5fhUO+k8/AsA67
 hfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VdW91kGbtMx1/wFOgVLAAmhmR53/Mmovc2B4qKSLVoM=;
 b=HpKVe9VCOAyXooYuGiT6i/l/k8KTDRlSkIH85EV8EH4sYkxfDE4fQjs7TgsZm4NqwU
 Z4+rF15Ms5eoh/U3TewfKGR+Sl6Pi+TwZXPoFuc5oH6VR/3rGXSt8BU1xpLR6TLOOJ8H
 VliNGaQwhDiFJJptBQRaXDZmJ8n+ACMp0jG/4FxZ85d8UydkibvWzzImZcH1SqNs6Wcm
 wudqAn2EM2XJGn4Z0VnnoTyJrgxh1kThSEJMIP667LAOLhD2p+8qplT3oOnS9uxzS3Sn
 4qQDKmXnIB5ysdktEPX7TiGEjE9P1Te+qntmAABc3iVGBejksPTd3jo/lgp04B0mNO3a
 sxGw==
X-Gm-Message-State: APjAAAU9x+CRm8N90rkBQc45o4Qf3maKMI1degfnR+Zsv5jZlEfhM3OA
 5KUoWA7kbi2Nh3hXyMGNskM=
X-Google-Smtp-Source: APXvYqwN+QPUUYQwwFwo9H5EL3ZGPZ+sUtXsif9yiR1QJxdwfi6TZS0sbm/Job3/qEJ0qpOejVDGeQ==
X-Received: by 2002:a17:902:4501:: with SMTP id
 m1mr56949207pld.111.1563538665054; 
 Fri, 19 Jul 2019 05:17:45 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id z2sm27019181pgg.58.2019.07.19.05.17.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 05:17:44 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Date: Fri, 19 Jul 2019 20:16:07 +0800
Message-Id: <20190719121605.22640-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org, Ajay Singh <ajay.kathat@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chuhong Yuan <hslester96@gmail.com>,
 Adham Abozaeid <adham.abozaeid@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Merge the combo use of memcpy and le32_to_cpus.
Use get_unaligned_le32 instead.
This simplifies the code.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
 - Merge the two patches with the same
   subject line.

 drivers/staging/wilc1000/wilc_mon.c               | 3 +--
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 drivers/staging/wilc1000/wilc_wlan.c              | 9 +++------
 3 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_mon.c b/drivers/staging/wilc1000/wilc_mon.c
index 7d7933d40924..d6f14f69ad64 100644
--- a/drivers/staging/wilc1000/wilc_mon.c
+++ b/drivers/staging/wilc1000/wilc_mon.c
@@ -35,8 +35,7 @@ void wilc_wfi_monitor_rx(struct net_device *mon_dev, u8 *buff, u32 size)
 		return;
 
 	/* Get WILC header */
-	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
-	le32_to_cpus(&header);
+	header = get_unaligned_le32(buff - HOST_HDR_OFFSET);
 	/*
 	 * The packet offset field contain info about what type of management
 	 * the frame we are dealing with and ack status
diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index d72fdd333050..12fb4add05ec 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -1038,8 +1038,7 @@ void wilc_wfi_p2p_rx(struct wilc_vif *vif, u8 *buff, u32 size)
 	s32 freq;
 	__le16 fc;
 
-	memcpy(&header, (buff - HOST_HDR_OFFSET), HOST_HDR_OFFSET);
-	le32_to_cpus(&header);
+	header = get_unaligned_le32(buff - HOST_HDR_OFFSET);
 	pkt_offset = GET_PKT_OFFSET(header);
 
 	if (pkt_offset & IS_MANAGMEMENT_CALLBACK) {
diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
index d46876edcfeb..7d438ae90c3e 100644
--- a/drivers/staging/wilc1000/wilc_wlan.c
+++ b/drivers/staging/wilc1000/wilc_wlan.c
@@ -703,8 +703,7 @@ static void wilc_wlan_handle_rx_buff(struct wilc *wilc, u8 *buffer, int size)
 
 	do {
 		buff_ptr = buffer + offset;
-		memcpy(&header, buff_ptr, 4);
-		le32_to_cpus(&header);
+		header = get_unaligned_le32(buff_ptr);
 
 		is_cfg_packet = (header >> 31) & 0x1;
 		pkt_offset = (header >> 22) & 0x1ff;
@@ -874,10 +873,8 @@ int wilc_wlan_firmware_download(struct wilc *wilc, const u8 *buffer,
 
 	offset = 0;
 	do {
-		memcpy(&addr, &buffer[offset], 4);
-		memcpy(&size, &buffer[offset + 4], 4);
-		le32_to_cpus(&addr);
-		le32_to_cpus(&size);
+		addr = get_unaligned_le32(&buffer[offset]);
+		size = get_unaligned_le32(&buffer[offset + 4]);
 		acquire_bus(wilc, WILC_BUS_ACQUIRE_ONLY);
 		offset += 8;
 		while (((int)size) && (offset < buffer_size)) {
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
