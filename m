Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4422326F20
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D410E4F027;
	Sat, 27 Feb 2021 22:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcgsXwEWuVvu; Sat, 27 Feb 2021 22:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B06714ED2B;
	Sat, 27 Feb 2021 22:23:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0B0A1BF41C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C0CC54315B
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GzJBn2AYpdZ1 for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0343843094
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:23:13 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id m22so19439656lfg.5
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rfZlWxI/R5xeKS28z3X5cfpl9ggNIMoV6qqOm9PUtc4=;
 b=SQQKwE2G7ik0j8QvgTl2ClhKr4v7QE/u6FU1kJmegjXXJwhqD7W1I5A00X3v0xMEZH
 WpABduC6wgZ6gvJIaVFkc0llCt8DBbALHyyQtd9JEJ2WhTJVPd/H6G3VpK7ekJq/TKLG
 i9T4a7/aDFFagVCEQ4SLhR05SI4KlbGlZt+LE1G66U7xIiBCXY9DSTG95AgZK9sc1LGU
 HVKehPgL35ujf2sLHL+Z2Ml102+1y+21junHnHpYVqnMVl3ln0vD5Wfy6SoNR4YIrC/h
 pFqR5dg/v+B0+eyrnIcEh3c0J+5SjZL+7fkDiUSwvmeYkF8KKhpgEBx/FHqz3AH5RN/5
 xBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rfZlWxI/R5xeKS28z3X5cfpl9ggNIMoV6qqOm9PUtc4=;
 b=ikOlyw7Mm6BO+NVWrs7AsXKKrJZddyyXiD9L8qSaz55uKyc/EuWAdUTv7ZpGVvgr6H
 nBFgas7hmo1D4Y4kUsV4C48OEE86V6oVld6OooXWNt2ioauEn2/Ikkjfjg7Oo9vQsizL
 fyu5JscAX3xV6gnHtDiHDDCsMMhrYA1cJtTR+AXrZazjIpluB/aHuADAhPTtLl8KVSzS
 /NZ7kfNo38r5HvCEGWUWPLEOKQpsj/Ge3k40qQjdS8caghN+8CxjnE/hDJuAfa7lC5Pa
 peSPotcUSmVeB/sHnCHcZ540AkMBb89+7s4Tbvpa6VyqsCZ3Gtk0D7Ka25Jtwxa6UDTi
 2org==
X-Gm-Message-State: AOAM532XAGQdZOKOTPsRukNJRuT0VcvfMzGejs/irwGJ/HHyumjj1OK9
 lRA6NjnD9Z0pFGLwBSWf+qo=
X-Google-Smtp-Source: ABdhPJy3FSYBMb4amkT06YcI80Ky0u5a2Vh8ts6I27irMGLcuXgrJfIBtbcOYxH4Ae27AG1pvVPsYw==
X-Received: by 2002:a05:6512:33b6:: with SMTP id
 i22mr5230727lfg.251.1614464591978; 
 Sat, 27 Feb 2021 14:23:11 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id u12sm1841988lff.250.2021.02.27.14.23.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:23:11 -0800 (PST)
Received: (nullmailer pid 581551 invoked by uid 1000);
 Sat, 27 Feb 2021 22:23:10 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/4] staging:rtl8712: replace cap_* definitions with native
 kernel WLAN_CAPABILITY_*
Date: Sun, 28 Feb 2021 01:22:37 +0300
Message-Id: <20210227222236.581490-5-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210227222236.581490-1-insafonov@gmail.com>
References: <20210227222236.581490-1-insafonov@gmail.com>
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
Cc: Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 linux-kernel@vger.kernel.org, Pascal Terjan <pterjan@google.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

cap_* definitions duplicate WLAN_CAPABILITY_*. Remove cap_* definitions,
improve code consistency.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/ieee80211.c | 6 +++---
 drivers/staging/rtl8712/wifi.h      | 7 -------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index b4a099169c7c..13fc3c1ec0db 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -173,11 +173,11 @@ int r8712_generate_ie(struct registry_priv *registrypriv)
 	ie += 2;
 	/*capability info*/
 	*(u16 *)ie = 0;
-	*(__le16 *)ie |= cpu_to_le16(cap_IBSS);
+	*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_IBSS);
 	if (registrypriv->preamble == PREAMBLE_SHORT)
-		*(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
 	if (dev_network->Privacy)
-		*(__le16 *)ie |= cpu_to_le16(cap_Privacy);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
 	sz += 2;
 	ie += 2;
 	/*SSID*/
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index b7889ac3dce9..f941efb1f4e2 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -278,13 +278,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 #define AUTH_ODD_TO				0
 #define AUTH_EVEN_TO			1
 
-#define cap_ESS BIT(0)
-#define cap_IBSS BIT(1)
-#define cap_CFPollable BIT(2)
-#define cap_CFRequest BIT(3)
-#define cap_Privacy BIT(4)
-#define cap_ShortPremble BIT(5)
-
 /*-----------------------------------------------------------------------------
  *			Below is the definition for 802.11i / 802.1x
  *------------------------------------------------------------------------------
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
