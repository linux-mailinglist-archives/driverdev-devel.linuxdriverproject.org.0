Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E67480C00
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Aug 2019 20:33:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F4A62046F;
	Sun,  4 Aug 2019 18:33:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id olfkk6viUqRA; Sun,  4 Aug 2019 18:33:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4B70F20436;
	Sun,  4 Aug 2019 18:33:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C3F41BF403
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 18:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 992888798B
 for <devel@linuxdriverproject.org>; Sun,  4 Aug 2019 18:32:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 55FdBMUr+XM0 for <devel@linuxdriverproject.org>;
 Sun,  4 Aug 2019 18:32:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 018AB87985
 for <devel@driverdev.osuosl.org>; Sun,  4 Aug 2019 18:32:57 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d1so5682147pgp.4
 for <devel@driverdev.osuosl.org>; Sun, 04 Aug 2019 11:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1Gvzhgkq3uypUYE0BK54gI1jvg+vB6OQn9HgeGo1C4=;
 b=uiKScfPaDZyKdF3E6bF2WUbY+A+cK/IXsc+XjPVPHuEMba1IHc3yHGjLEEb8tFDXxk
 6w9dLIIM9ET/Jvg16knHG0mFyUtY+Wil9NBk0zaTDEsddqGYiZ8VErWwIkH3eiiVYjpS
 O0sSpV3nAk8yTHmT3RuOTVdRBotUYbvdfIK5UFDG8DB9dSuam1rdkJEVoI0yum5SEsV1
 mfAWuIm80AIwxHVOawLgisIxUtyvkcTbJdQCDRLNcvtVFdQcGNrqtDLu62tEvgoSwr+J
 eq9tv+iNUiFF2MQR+jbPDHa/bAFOGaix0l92loEPvock4Pksc0WW81rw+vyw7bNd/tXR
 SwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M1Gvzhgkq3uypUYE0BK54gI1jvg+vB6OQn9HgeGo1C4=;
 b=UtHEuXr8GT5DX9QvW8Xqqb7GvLpZ6PP3rss1OxMZnLEz0PN76Y06Xame50E4PXBzkU
 N1AsTg159+0+Je6Auv0lpvQnqZWJ667yUjSO1GMTt0JN1TzMLgIzul1AeKjXBsl8nGLn
 1+NlxURGR5jzq6gNcJZ8aIfEhgW4UgklkJN6DMdyBeL51gQAzHJN2KsLQhl8mb/qoH+M
 AKlTL6wluQoO0aaQqyfinysGGetQbtxEpBuYnPfQizKBJ7bAajZN2xRrazm8gaNdFHpY
 un0DBpn6aOGD7SLmqmceefJchy/D5O1qGsEobYAwne7hg5+tCJmyi0NFLxhSJ7TZZfcL
 UFGA==
X-Gm-Message-State: APjAAAWZiJoptDrlr120iT4KeyrjS6/4+b0rfsNL7l5JkYf1VeyppV67
 oPIn7DH70zr41ApgKte3jLQ=
X-Google-Smtp-Source: APXvYqwK5WbGPiyo0oQxjvJnrjYzvciabM3qjZqtVBvYB0ircVXV3sf8ELBElcx0XW2M0wHMW+pPVw==
X-Received: by 2002:a62:1ccd:: with SMTP id
 c196mr70133403pfc.102.1564943577435; 
 Sun, 04 Aug 2019 11:32:57 -0700 (PDT)
Received: from localhost.localdomain ([116.75.76.55])
 by smtp.gmail.com with ESMTPSA id w2sm71009773pgc.32.2019.08.04.11.32.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 11:32:56 -0700 (PDT)
From: Giridhar Prasath R <cristianoprasath@gmail.com>
To: 
Subject: [PATCH] staging: pi433 line over 80 characters in multiple places
Date: Mon,  5 Aug 2019 05:32:45 +0530
Message-Id: <20190805000248.4902-1-cristianoprasath@gmail.com>
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

Fix the following checkpatch warnings:

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
