Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B900E45F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 10:42:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B1EEC876C2;
	Fri, 25 Oct 2019 08:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jFGPGjAB5tk; Fri, 25 Oct 2019 08:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04711874F7;
	Fri, 25 Oct 2019 08:41:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E80141BF2B7
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E4FA887586
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 08:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dhNO2ODSajfB for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 08:41:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D6894874F7
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 08:41:34 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n15so1278983wrw.13
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 01:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vJ5sG92Ta/upeDjeKszRRrmFqGV/Y3qIhkYyJc9HkaY=;
 b=oo5Irtr7Suknd10jlrdcB397VgK1KAgOUl16rO8h1dDQN2ELottim6ODhFbTRIorJo
 Awgn6ik9XsCf2WMLly3zRnz/UCSqG7OjzbAueP56/dFEhIh3R/4a/N/97eIoQeWT5g2H
 bTYhLyb/i/SLjrFhkVx7HP+oPJZ2s/HSZERiSwRCEd6EoQCNr4y5nmoqVRd1HVFfvied
 czaWVIYbpb5y5PkvngroUyvAL8vf6OP0EtjrkpRmms0LgdOf4AG5Q/NxwT/4zPKPZYih
 lYwPYwegE9gmbahR26U4LffyJD1YmKoBYivNljM7k/hpWV83qAretfmKA9abNt/fG4oy
 20MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vJ5sG92Ta/upeDjeKszRRrmFqGV/Y3qIhkYyJc9HkaY=;
 b=QzwiWN2ygi36ErZRAaahU2NwAYxVtOjZZ2aJijKVZOZZFkSV1ecpFkAbYWJrE4TFws
 mgBLuz8bl7BueAysTIRCD4Is09q13x5gdcJPC5cr6Yg7ZOgYGiO0zuTS7gCF7+raUdnK
 9aZa5Yt2Tuj6/elV9P3IvOkEEAApGFeAaGHpdupNOveFqGoPsb9ag09iyXuMSJg65ofg
 fiqzv8ecezgvtszJ1SI6nkGrUrq7NNg5OQwvIhrWn8AuXygWym6JwsPUWsqUkztrb/1D
 /hEbSt3tlSyCOwcVsgMn7M2OQBl4FO9iA2l2XnA2unkD8k1DRSCx7GTxGCTRIECfbUWS
 U1cg==
X-Gm-Message-State: APjAAAXeZGrmtpDxWDH2gqGmnZXz404zFrkunMcmrscWft2rkVgrXdtL
 dyxlhKnGquDl+HA5a0bK6+OZPbs/
X-Google-Smtp-Source: APXvYqxHFJ/GkgIxhXJWe076jJQAOzVcUFW7wrJKuE4UPsNiFNpEI8H+BW1AUFNZjJt1mH2H9v0rZA==
X-Received: by 2002:adf:e585:: with SMTP id l5mr1799482wrm.156.1571992893427; 
 Fri, 25 Oct 2019 01:41:33 -0700 (PDT)
Received: from meriadoc.middleearth ([80.2.21.148])
 by smtp.gmail.com with ESMTPSA id 200sm2257986wme.32.2019.10.25.01.41.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 01:41:32 -0700 (PDT)
From: Tim Collier <osdevtc@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/5] staging: wlan-ng: shorten lines over 80 characters in
 hfa384x.h
Date: Fri, 25 Oct 2019 09:41:23 +0100
Message-Id: <20191025084126.9181-3-osdevtc@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025084126.9181-1-osdevtc@gmail.com>
References: <20191025084126.9181-1-osdevtc@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Shorten several lines reported as over 80 characters by checkpatch.pl.

Signed-off-by: Tim Collier <osdevtc@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 5ff740a8837d..2d3d8b1e2c1b 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -1337,7 +1337,9 @@ struct hfa384x {
 						  * interface
 						  */
 
-	struct hfa384x_caplevel cap_act_sta_mfi; /* sta f/w to modem interface */
+	struct hfa384x_caplevel cap_act_sta_mfi; /*
+						  * sta f/w to modem interface
+						  */
 
 	struct hfa384x_caplevel cap_act_ap_cfi;	/*
 						 * ap f/w to controller
@@ -1359,7 +1361,9 @@ struct hfa384x {
 
 	struct hfa384x_inf_frame *scanresults;
 
-	struct prism2sta_authlist authlist;	/* Authenticated station list. */
+	struct prism2sta_authlist authlist;	/*
+						 * Authenticated station list.
+						 */
 	unsigned int accessmode;		/* Access mode. */
 	struct prism2sta_accesslist allow;	/* Allowed station list. */
 	struct prism2sta_accesslist deny;	/* Denied station list. */
@@ -1375,7 +1379,8 @@ int hfa384x_drvr_disable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_enable(struct hfa384x *hw, u16 macport);
 int hfa384x_drvr_flashdl_enable(struct hfa384x *hw);
 int hfa384x_drvr_flashdl_disable(struct hfa384x *hw);
-int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len);
+int hfa384x_drvr_flashdl_write(struct hfa384x *hw, u32 daddr, void *buf,
+			       u32 len);
 int hfa384x_drvr_getconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len);
 int hfa384x_drvr_ramdl_enable(struct hfa384x *hw, u32 exeaddr);
 int hfa384x_drvr_ramdl_disable(struct hfa384x *hw);
@@ -1383,7 +1388,8 @@ int hfa384x_drvr_ramdl_write(struct hfa384x *hw, u32 daddr, void *buf, u32 len);
 int hfa384x_drvr_readpda(struct hfa384x *hw, void *buf, unsigned int len);
 int hfa384x_drvr_setconfig(struct hfa384x *hw, u16 rid, void *buf, u16 len);
 
-static inline int hfa384x_drvr_getconfig16(struct hfa384x *hw, u16 rid, void *val)
+static inline int
+hfa384x_drvr_getconfig16(struct hfa384x *hw, u16 rid, void *val)
 {
 	int result = 0;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
