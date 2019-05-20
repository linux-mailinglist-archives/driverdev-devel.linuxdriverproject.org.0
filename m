Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E29A23C23
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 17:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 541DF24368;
	Mon, 20 May 2019 15:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uChouo4IYz4C; Mon, 20 May 2019 15:29:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC7032344A;
	Mon, 20 May 2019 15:29:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D955C1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 15:29:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D62DE85082
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 15:29:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9IWSCHFTwD-V for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 15:29:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 247B080EC7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 15:29:32 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id w13so4355417wru.11
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=R09/KmbxD/tQQhd6oxu0ukeGEfAA87AXC1YxNhNR3sU=;
 b=aajAgIPwyYhsD+tdEyvZeY3SP+gY1IDYVhHL/ZjYBCwKrpyvhSF82VHrgf1kzEA0ky
 L8+6Zh3cppRrcsHeWX6I9TpY57vYdCo9xbOddAtGjqArx5Bp06dzgTBCSwZoQQ4lgDrD
 I+U8CqwC47LbRv8nyRJxWoe5xvSwinQUFQPGsU1gTagDCATwzkIDEGG6IYgJKJIqUUyf
 oRLNJi5i0hW79Kxg0ZwAqism3tTA+ZNVbTQ4cDoE2VZPyFztciKpS4Oj1JOlhZq2hphU
 72Romsq+woC+G8CP3B8RVzHkoRTMyXFnqEXXdKh7VmEFZS9KN/FGdMaBoJ7XFX78pxs+
 K9Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=R09/KmbxD/tQQhd6oxu0ukeGEfAA87AXC1YxNhNR3sU=;
 b=n6gCA0iAxLJ2lMZYuAP7khgTKH9yuM3ZPUp/z7nzsZBnPO7bF93kk9TqAL8x+1b0v2
 wUR1kH5vDKIcacLUXnwGb5pQ/iPrRahAwMNWIxQTI49I8CII/vt4cjwFaf4pI5HQtUw4
 L2Y2CmT3w884WjiAPH5wYYyU6SZgOk+EL/1EMOFtlRWQRYo2/Jb45Ut59RPde/uBxXwo
 7LVXUUYAA4FO6vDpF9MZDb44dkqy3NXLXR4N1T7ql15ECwZ9ibxwRYmvep56BjLUK3S1
 rKUOt3IX5TI1PCgclbE3KUqoOdp38xSzV1Rw5N/PJC1wiFH3iFFKjpGPptbrz0y6QjdK
 e2Pg==
X-Gm-Message-State: APjAAAUEfLwxbyrH0ljdlhhuSrxysajflcMAbfBOkjqz0XaHAp706ChW
 dJNpsy1uIatySGFDYkqGr9U=
X-Google-Smtp-Source: APXvYqx2+r1DZV1br2Ag4BktpDHSY0O/7iWH1Zle1AkOcU4/LIyAOoVob07VTzqO5Ef967ldQR3WtA==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr10373508wrj.230.1558366170546; 
 Mon, 20 May 2019 08:29:30 -0700 (PDT)
Received: from lab-pc05.sra.uni-hannover.de (lab.sra.uni-hannover.de.
 [130.75.33.87])
 by smtp.googlemail.com with ESMTPSA id y18sm14035176wmi.37.2019.05.20.08.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 08:29:29 -0700 (PDT)
From: Yannick Loeck <yannick.loeck@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: pi433: fix misspelling of packet
Date: Mon, 20 May 2019 17:28:52 +0200
Message-Id: <20190520152852.12420-1-yannick.loeck@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, Yannick Loeck <yannick.loeck@gmail.com>,
 linux-kernel@vger.kernel.org, linux-kernel@i4.cs.fau.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes the misspelling of packet in
<MASK_PACKETCONFIG1_PAKET_FORMAT_VARIABLE>

Signed-off-by: Yannick Loeck <yannick.loeck@gmail.com>
---
 drivers/staging/pi433/rf69.c           | 4 ++--
 drivers/staging/pi433/rf69_registers.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index 4cd16257f0aa..7d86bb8be245 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -722,10 +722,10 @@ int rf69_set_packet_format(struct spi_device *spi,
 	switch (packet_format) {
 	case packet_length_var:
 		return rf69_set_bit(spi, REG_PACKETCONFIG1,
-				    MASK_PACKETCONFIG1_PAKET_FORMAT_VARIABLE);
+				    MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 	case packet_length_fix:
 		return rf69_clear_bit(spi, REG_PACKETCONFIG1,
-				      MASK_PACKETCONFIG1_PAKET_FORMAT_VARIABLE);
+				      MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 	default:
 		dev_dbg(&spi->dev, "set: illegal input param");
 		return -EINVAL;
diff --git a/drivers/staging/pi433/rf69_registers.h b/drivers/staging/pi433/rf69_registers.h
index f925a83c3247..be5497cdace0 100644
--- a/drivers/staging/pi433/rf69_registers.h
+++ b/drivers/staging/pi433/rf69_registers.h
@@ -395,7 +395,7 @@
 #define  MASK_SYNC_CONFIG_SYNC_TOLERANCE	0x07
 
 /* RegPacketConfig1 */
-#define  MASK_PACKETCONFIG1_PAKET_FORMAT_VARIABLE	0x80
+#define  MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE	0x80
 #define  MASK_PACKETCONFIG1_DCFREE			0x60
 #define  MASK_PACKETCONFIG1_CRC_ON			0x10 /* default */
 #define  MASK_PACKETCONFIG1_CRCAUTOCLEAR_OFF		0x08
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
