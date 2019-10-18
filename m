Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2E0DBC25
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 06:58:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 860D320524;
	Fri, 18 Oct 2019 04:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 52rff-zwwRDW; Fri, 18 Oct 2019 04:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 41BB42041A;
	Fri, 18 Oct 2019 04:58:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F4F01BF361
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 04:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9912720356
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 04:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoExn-XFRLZe for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 04:58:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mta-p8.oit.umn.edu (mta-p8.oit.umn.edu [134.84.196.208])
 by silver.osuosl.org (Postfix) with ESMTPS id DCD3920358
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 04:58:07 +0000 (UTC)
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 3B1BEC97
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 04:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jfkAUuvhhGQU for <devel@driverdev.osuosl.org>;
 Thu, 17 Oct 2019 23:58:07 -0500 (CDT)
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 12861CBC
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 23:58:06 -0500 (CDT)
Received: by mail-io1-f72.google.com with SMTP id w8so6968895iol.20
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 21:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=DvCdMzTpfcgTdM5FNIL3SmoCatqgS5bfknocDxp/cjQ=;
 b=I3KLTDHTGjfBbu0VTQnqOAqkus9ZWIle+c83vxb65BuPr+SnL0WXvRA0zgd9pSbhZY
 /jWnlNxJKkwZFARVmcNBBMBPS2G6RcmJNJL8kMRNIoxE6AK8gOXt3Mi8mrBZAwdhPK7s
 clBOJbFg40XKT+cjSUutDThqhI5tnTWaTsnwPiyDi/vNGAMdzvyyNJ6jml0YAqxekaOE
 2Rjt7GWqH26CUYDPcBS0QReinF6ejqKrB5o2tECtDc5yQOsFxdQbzomV8cfMG8ZVUbXv
 BdCPdThNmHEamWpFrHf1n7Hu9+Fupw2xuTj1R0Ffpto77qLteWEIqilNOLD0uaigZ1SQ
 AGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DvCdMzTpfcgTdM5FNIL3SmoCatqgS5bfknocDxp/cjQ=;
 b=hIw2wI5aa2jVqTVvTE4gLEAbbSMWiJGFjAuSRZohd6LucCl/iKwzWCzonHW+8oih1L
 B7jdK+Or+/0zItF+JHS8LpzQ7c+zgjljHLc6kvDFM3DQ04rqLjrHNnr5Sdiaf2K79Pyi
 Q0Dh1xMghJ3FuR4D/ZxnUwY12K+GnTldrfKUPmEdebNwJj0qjqJcteg43x5xcAzfZCve
 t6m2vSEzLI4Xd4x/v/RNMeESVSiPvNXHWtI1cgwMB+iSMdJrmsHa/AcnRhbtqM/+i/B0
 Bt1n+pungsKZS1Y8MkQEVs0YL/QsQ4RyAEuEsDlLrUqjgFMtJz2LD4RTxHZ7elN/en06
 YhiQ==
X-Gm-Message-State: APjAAAXi3tV9HYMi0RzYlg24UpTEeM3ewPSXfq2VYkQmCBn5sZ390Az6
 F0e6M6Q5n/Q0fAqXpd4ZQhwprOu1mUyYVs+lbcxvnb0L392HbF7EyjpBgJtAJWzL0TVMbUNPYrG
 VecZuOhklBk29yPpcSfT4af5qCA==
X-Received: by 2002:a6b:e401:: with SMTP id u1mr6900816iog.1.1571374686575;
 Thu, 17 Oct 2019 21:58:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwK5CXIQFUEytsTQuW9pdgHMGv2efU6PTSg8JPovkgAAk1DVOm6KhHkLb7Z8PtjN5RTRM3UfQ==
X-Received: by 2002:a6b:e401:: with SMTP id u1mr6900805iog.1.1571374686323;
 Thu, 17 Oct 2019 21:58:06 -0700 (PDT)
Received: from bee.dtc.umn.edu (cs-bee-u.cs.umn.edu. [128.101.106.63])
 by smtp.gmail.com with ESMTPSA id v17sm1688965ilg.1.2019.10.17.21.58.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 21:58:05 -0700 (PDT)
From: Kangjie Lu <kjlu@umn.edu>
To: kjlu@umn.edu
Subject: [PATCH] staging: rtl8192e: initializing the wep buffer
Date: Thu, 17 Oct 2019 23:57:58 -0500
Message-Id: <20191018045800.10909-1-kjlu@umn.edu>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The "wep" buffer is not initialized. To avoid memory disclosures,
the fix initializes it, as peer functions like rtllib_ccmp_set_key
do.

Signed-off-by: Kangjie Lu <kjlu@umn.edu>
---
 drivers/staging/rtl8192e/rtllib_crypt_wep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8192e/rtllib_crypt_wep.c b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
index b1ea650036d2..0931777ed157 100644
--- a/drivers/staging/rtl8192e/rtllib_crypt_wep.c
+++ b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
@@ -232,6 +232,7 @@ static int prism2_wep_set_key(void *key, int len, u8 *seq, void *priv)
 	if (len < 0 || len > WEP_KEY_LEN)
 		return -1;
 
+	memset(wep, 0, sizeof(*wep));
 	memcpy(wep->key, key, len);
 	wep->key_len = len;
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
