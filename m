Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9249080BF9
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 20:13:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E46D858DD;
	Sun,  4 Aug 2019 18:13:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QvD9OvChJen; Sun,  4 Aug 2019 18:13:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE06B85617;
	Sun,  4 Aug 2019 18:13:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6533F1BF403
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 18:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 512778796C
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 18:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ierCqytPsHzp for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 18:13:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1285878C8
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 18:13:39 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o13so38470073pgp.12
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 11:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FmcZ2hRM/N0fqpxXPyaJgm9RQypUKj6pFQyAEiitRbQ=;
 b=QOq+dD8238vDhFCumvsPRVNAJc/w1AyJQ/yrJFybIR9DotuEndkSxPBenU8MwE/JOL
 QJDUFUBAfuWKeU+tj4PNo47FpLroyJdURQK0hUJIetVMVo0t4Nkdd7nFyxNJtlhXzbLt
 G9kc/VzDZ20eUbrSPPrXNIvgb9sWvunDgBd4r80WIap4JOlATzOkEmCXHWrbhLkKdVHr
 M6R8auxV4rBHG0rbXq333kqNqvH6U0w2LFcjiX/YIs2i9PwiZ01zdi1kqkj9CSQWot5e
 +/KJBtjjdrSd4vkqlLLcJxBMEkVK7rGRR6wQpZoM889o3XVem6wRnRGV++gVTuPodwQF
 HC7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FmcZ2hRM/N0fqpxXPyaJgm9RQypUKj6pFQyAEiitRbQ=;
 b=qPrMBBw+iGte92BtnXxCCcMNJAFHJzTa4uQOZ16JOC9mQ1cE/gpIT5YGc78/VA7Otx
 DFj9F+vLl59Dm7yvCS2/qEJwWUQYAtsjgaAiF/Wy/uw7slOZFH5CsLftStN/jJDxrlZ7
 P9V+eHqoFZNYbM56MG1JfL9/Cw8HRLCIOvsz1xvcpVTxFoBqhUit1JnAc/Q1Jz00ocLC
 h/qhfqoBJX4hqSRgrkW5pmegDXGxwaOeVd/LR+wSYiCGSHfK0za3sFJbnK1zRKh3aFuy
 DxmKCdRjnWUkhBZYuK00Z2X3f2o+G5Z7/0l+k0r8oAYR9+HeCnVBfoblBRK5McLx647k
 2BAA==
X-Gm-Message-State: APjAAAXsGbG80W4fRpZ9UQQK/GMtTnPGg1OIAl7jWF9xCT2Sib9I5Nxf
 509pGzFgmpXpu+YVgERcuA4=
X-Google-Smtp-Source: APXvYqz+l8k+a1rHIiexacBDBVj9Dzb05Jm7BxC5GzUYlYQWnvFLMNZKJ25VJep+sij+hZ3Yez+v2A==
X-Received: by 2002:a63:d84e:: with SMTP id
 k14mr133530694pgj.234.1564942419120; 
 Sun, 04 Aug 2019 11:13:39 -0700 (PDT)
Received: from localhost.localdomain ([116.75.76.55])
 by smtp.gmail.com with ESMTPSA id f64sm85201258pfa.115.2019.08.04.11.13.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 11:13:38 -0700 (PDT)
From: Giridhar Prasath R <cristianoprasath@gmail.com>
To: 
Subject: [PATCH] Fix the following checkpatch warnings:
Date: Mon,  5 Aug 2019 05:13:19 +0530
Message-Id: <20190804234322.4410-1-cristianoprasath@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Giridhar Prasath R <cristianoprasath@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

WARNING: line over 80 characters
FILE: drivers/staging/pi433/pi433_if.h

Signed-off-by: Giridhar Prasath R <cristianoprasath@gmail.com>
---
 drivers/staging/pi433/pi433_if.h | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 9feb95c431cb..915bd96910c6 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -117,9 +117,14 @@ struct pi433_rx_cfg {
 
 	/* packet format */
 	enum option_on_off	enable_sync;
-	enum option_on_off	enable_length_byte;	  /* should be used in combination with sync, only */
-	enum address_filtering	enable_address_filtering; /* operational with sync, only */
-	enum option_on_off	enable_crc;		  /* only operational, if sync on and fixed length or length byte is used */
+	/* should be used in combination with sync, only */
+	enum option_on_off	enable_length_byte;
+	/* operational with sync, only */
+	enum address_filtering	enable_address_filtering;
+	/* only operational,
+	 * if sync on and fixed length or length byte is used
+	 */
+	enum option_on_off	enable_crc;
 
 	__u8			sync_length;
 	__u8			fixed_message_length;
@@ -132,10 +137,14 @@ struct pi433_rx_cfg {
 
 #define PI433_IOC_MAGIC			'r'
 
-#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
-#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_tx_cfg)])
 
-#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
-#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+char[sizeof(struct pi433_rx_cfg)])
 
 #endif /* PI433_H */
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
