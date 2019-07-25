Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 106C274373
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 04:52:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85E28860AD;
	Thu, 25 Jul 2019 02:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBtFXh_RAXaf; Thu, 25 Jul 2019 02:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A87F986090;
	Thu, 25 Jul 2019 02:52:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47C0E1BF5AC
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 02:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 44F2F2001D
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 02:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 272iJSldlGwV for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 02:52:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id CC8122000A
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 02:52:09 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id b3so22786946plr.4
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 19:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m7uFTn+wdUyY6FftVjNKnXfk6vSQHgFo0Xy22iR7DoA=;
 b=my3er5fJAwtBvMUkVZV+AWlRF3hSSlzyMPmRDPSBe4xkSXH28IHLlhXMwODJAWVKqd
 A9u3ZVhULFzLu7Q+7Vi1TI/AlWes2deS6zaTOPf+A+YQQegUddfE8RbvmXzA3tiO7bLS
 Zv+J8ea9u7pbGVOi8oqHvSpwWzRTsL2eByOqxxbhRPn5UwnBJqP98eBrg496MRa3DNTr
 gni8hyzZmLmZBoygCAdlPZKSeWgUEHmnpaNYye/4oou5enGlHh1Ko84piaS+1gBIp5R8
 q/Lxx26+4ihmrt6w4De3X7dw42ek++Htl5KCuEksCzS0lM2RGGm1eLLZYRbDmPkpt5xy
 QKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m7uFTn+wdUyY6FftVjNKnXfk6vSQHgFo0Xy22iR7DoA=;
 b=MtMqEQXeRN+nY6RohGPMLljUwWBuuuPIUAAcks0yknniLKBExp93wQxX0VDCGvrz/X
 WQsXhnTJMB//brVQ1xyoMm2Yzx3ULUNaJqud/lOE+AbrmQ+Oa+NfbbtfHKwsUyF92oRJ
 VX7AOLKRd8RAybqq5gR3Jy92Gwcbtggha3AY2fFOl9YbnAak7Nh6ozTHVj34DvdS0FWZ
 ZTRdYk/hL4UFcatF4W69cjPfrHNueZWzX31+1/ns3nN87Ytew6FqSzn9vfcoY3SbPrei
 v4eZXf4oqrsWTTuOrR5yILVDioD+haX7WlzGcMWNXeI6bEhqDQCuOHp0Upby8k5G91+T
 7ThQ==
X-Gm-Message-State: APjAAAXCtul8MIvGsYdgbjN78qgInJ7xpvHcHL8hHr7h8MKCHAINBcqr
 CihOYsbLjC4LTZybs/j9J2A=
X-Google-Smtp-Source: APXvYqyrUO7NZ2PJ3hkWF7aJ8vDZzi9nuamErbVVvaw17u++wG3U88xnYdPJeVfQ+mpCWuJn0aSu0Q==
X-Received: by 2002:a17:902:549:: with SMTP id
 67mr88439874plf.86.1564023129477; 
 Wed, 24 Jul 2019 19:52:09 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id k64sm29362195pge.65.2019.07.24.19.52.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 19:52:08 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Date: Thu, 25 Jul 2019 10:52:03 +0800
Message-Id: <20190725025203.8772-1-hslester96@gmail.com>
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
  - Merge the previous two patches which
    have the same subject line.

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
