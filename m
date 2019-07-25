Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D642674368
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 04:46:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F2F308658D;
	Thu, 25 Jul 2019 02:46:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7j2ovTJAauva; Thu, 25 Jul 2019 02:46:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A68A853F2;
	Thu, 25 Jul 2019 02:46:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BEEDF1BF5AC
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 02:46:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC03B85459
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 02:46:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V3PrpEio+xxi for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 02:46:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 28EFE853F2
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 02:46:19 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id n9so15972315pgc.1
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 19:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fGb+53W3+gVi5IhRG8bYdezC8LvWPACMjaeRX6JLss8=;
 b=TL/rqBtftf+PW2Gv4BMOCqIn5e5e8A/pFGqG6XXkzVseQ7n84Qn732l0EXBGS+pk2L
 w0ijV3UB45+bYRzkNYlpyCv78lszpntKYjHidT7MvL2VwoeGoSXFFSm4gV819TsGTncD
 Cx4brIDiumMiZLqDBo7eaZNBpDxRhj3DloMKkarUiIFMaoU2C1u62/GU+kQtOxtrBYCU
 JqxJ7qMhLkAGEgQu6YmJWUzV0GIIUQH2a3V+VLZxcclf696iyxS0V+MLB3q0lSWNyFAi
 RNiw1oEgCRM43EgZXqabZc8HqC8h6GuSulc2FMJlp2UvDBu7eODeejbo2Wn6Rtiv/+00
 IJsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fGb+53W3+gVi5IhRG8bYdezC8LvWPACMjaeRX6JLss8=;
 b=ptiNU4vI+V8C/zY2pt4Pm7jbvjm4Xx2smIdM+M+U5Fa9+bsqyDwdBviQOgJrcdjJtL
 Oy2hrNbAzfcx6AZtS1SnqlaqNTw72EjwV6SOU3jpMVZNIPXBGCWtUMa3sGEIKER1jV7g
 b6z+sK7m1STeTidOw9NyIiIL9cBJav2+xMUkwqzsetNG8yNH1tZ+whgHp4x0chMgrxn3
 ERmVpBQRRTEt0F0GbPqW0ZmTa7A+yY6SCq1U0h00/z56fALqtOqItsxRa2xaX7nGEw6t
 e4J3HioHr2SXc1ifBwyoUhLUTzarYmvw2kUjSadcqef1HjM7j7GX57lz7F6gB5TMf1m/
 6Z8A==
X-Gm-Message-State: APjAAAWiGzdblKPr8wsid+1YogkwYoaph7EcQ9QrwaYZdbMlb0dXKxUC
 dx2J3Y+aNzanFzaB29b2+KU=
X-Google-Smtp-Source: APXvYqzCUCQN8nnmTYZHETQ9ZiqagR86HgVQISOEyQ0ACAhdNbK1st9YpRwV3J7qsO8BnlaI78/v+A==
X-Received: by 2002:a62:e806:: with SMTP id c6mr14504052pfi.158.1564022778701; 
 Wed, 24 Jul 2019 19:46:18 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([89.31.126.54])
 by smtp.gmail.com with ESMTPSA id e17sm38910176pgm.21.2019.07.24.19.46.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 19:46:17 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Date: Thu, 25 Jul 2019 10:46:12 +0800
Message-Id: <20190725024612.8604-1-hslester96@gmail.com>
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
