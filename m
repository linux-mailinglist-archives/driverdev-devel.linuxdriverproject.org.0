Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E478E6E2F7
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 10:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E3257203B4;
	Fri, 19 Jul 2019 08:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HgntTxrkvkVi; Fri, 19 Jul 2019 08:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A257203D5;
	Fri, 19 Jul 2019 08:55:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E1311BF3BC
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 08:55:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4B25F866C8
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 08:55:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5xiPLubUAUp for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 08:55:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DA0E3866A9
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 08:55:40 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so15270208pla.7
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 01:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lV5j+XUqWBJfA9H3lN3dIsabShwNTCRmUvxvYq2uiYc=;
 b=Cwjj8OImi4J89USf/o0U1of0m4rjg+Hknu7KKXFkUNWnz2oxGkCPZq7Jh9CMeu/1C/
 WLqzfQ5JfOXJ2feKjfBxKtT8yS/Y+LBr4w+Uq9WcVeslwrHcD6hq2q8WbHXGNWKhKFOp
 etpCPYp+4oYoeqPBxWji7S++4UV9EGiECuYn6jPlv2xXt8g3zrP3SzxiQMBPQX9YXOkF
 vv/skUelxjuOD4SS6yuY67DjiU7H2Lx/d/FUvh6VYSPIFt4aj2ek29qyopemDYPgqrKY
 vPECVO209d4c9ExSulOD0OYsIsvKgGcNOl8Xdd3o/o1Iwd/bqEBB+FAoikOBxI1Fkp2L
 g4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lV5j+XUqWBJfA9H3lN3dIsabShwNTCRmUvxvYq2uiYc=;
 b=j9dtAN3/BA/ze2QRAD7xcGhXl7GSNG8kQZv0g33rSYGlsKGcU080LpaHKbstontG9K
 MBWlgzPlNYj0IaaZkaz85zCpq8Tl1Uj8gS3NtBNFzNW+SaGw8fB5BaQPI+KeOIswNeFV
 xoDd5BvhfjflD+q46NT2WHkNK3m5HfqEqUaxOgcMOkPacuQ3ne09metJlbBE3nNJvpyX
 otAuT4TI6KYXxPIjr+1GZ1A59F46NjllOYKORYxJrt6bdrgXGvi0Rm64ZPeEP7GHDICm
 PTmDYmEHmGRazwjdXHurkv7+ry3m97qoTrwck/lYCkhqaYSJbebtgvQ5Mcgq0jDxRtHL
 CIDA==
X-Gm-Message-State: APjAAAWt3jEBQ5Nn9OpWmESOwZrcqPDVBjWbLGJJoMYJPjmEupRpmiBU
 wxbnSmGL8GeH9wFifdrVrUk=
X-Google-Smtp-Source: APXvYqzr5/czZtUj4SwnWAsLsaUxE/e+JZt+xlsEffEtC2SwVU/HV6d1ADK3EWZLW2PIV9wO/RyP8g==
X-Received: by 2002:a17:902:2a68:: with SMTP id
 i95mr56582918plb.167.1563526540523; 
 Fri, 19 Jul 2019 01:55:40 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id k3sm18202640pgq.92.2019.07.19.01.55.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 01:55:39 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Date: Fri, 19 Jul 2019 16:55:08 +0800
Message-Id: <20190719085507.10925-1-hslester96@gmail.com>
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
 drivers/staging/wilc1000/wilc_mon.c  | 3 +--
 drivers/staging/wilc1000/wilc_wlan.c | 9 +++------
 2 files changed, 4 insertions(+), 8 deletions(-)

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
