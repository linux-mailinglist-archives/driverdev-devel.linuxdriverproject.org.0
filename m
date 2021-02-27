Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6F6326F1F
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Feb 2021 23:23:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0243B840D6;
	Sat, 27 Feb 2021 22:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DQLGsUf9Cbg1; Sat, 27 Feb 2021 22:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21C2B8409A;
	Sat, 27 Feb 2021 22:23:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3427A1BF41C
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 307684ED58
 for <devel@linuxdriverproject.org>; Sat, 27 Feb 2021 22:23:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rjaEtKM_3Nwo for <devel@linuxdriverproject.org>;
 Sat, 27 Feb 2021 22:23:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com
 [209.85.208.181])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3946D4ED2B
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 22:23:13 +0000 (UTC)
Received: by mail-lj1-f181.google.com with SMTP id e2so7718184ljo.7
 for <devel@driverdev.osuosl.org>; Sat, 27 Feb 2021 14:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8kMhdvIdhbDz43HUBsLUfT2KZzfyvRCqBeoQrZQZUg0=;
 b=D2MPLIf6TPmXIWXZoXs6a9mHwzAf4ff/75KanLAXE2KpNAlniYKoHcrG+PjeqM8Ksd
 DaPv5DKx3tLdwpkvNg7n5/adal9Q9DJpbEjTE21T4KIZU4P1x0eM6MsOG21PJIuhcYMY
 yn2FPN6AWdXwIDuhdn88tWB8AVhmNhWyNZKm/C/0GJo0pn/fe7hvPwiQXLs1iZMrDrIc
 gY1qFleDplA7wPmJ1Du60A7tICkOWhlzPpqXVc0w6C6z7occDLPL54GllpdwBfkqfUrT
 vlOX+Q6bQLYfPp4piy0u0M4d0FlLOJpfNs1+YNlnnNM0qnL4Swdxf4RzYlvgIK9DHZu+
 fChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8kMhdvIdhbDz43HUBsLUfT2KZzfyvRCqBeoQrZQZUg0=;
 b=bmUCX144KeW3Dakh9Zgw649D4K+mEsLRBDl3Bcm4SIxRwXhTjoMCboxST8m5iwLIrp
 k2+wr72HGtdsxy/B3/eEHoasdBy9ztT+O6eE8+iDTnb6+sx/l9G5yK/rs0sVSYDGCM6+
 hy1qeWJG7JcSEK4GriKyf5UVo0T6isVKFoPeA0OiwX7FcYmMR94JNW9i3VFkqK2oSoHJ
 3SW6FNUCzFpQ8eID+H7VbQGscpE2zaDRsFMyFvSndRiqsDmWYr2FYv2jDYl+d5m/nwMs
 7knr98/OL4saZeLScVBil4/Q0tV5UG7Lghg1QOUD5CWPmXarlrqrlXBf8uPf4KCG2ki9
 /Eyg==
X-Gm-Message-State: AOAM530i9Cvt1Bgfa06lzsgIsxSOT0YH519UOFLp0tP5PMzZjirK5pdu
 /ya2rBx8JOUsz4AnxE9hP54=
X-Google-Smtp-Source: ABdhPJwMVPpvlUsx5RRd4Ifhi7BF3evaQBUuh0fKFTNMx/OPXpl3epAq6KhqTwDkJgAIc7k1AczRfQ==
X-Received: by 2002:a2e:88cb:: with SMTP id a11mr5438089ljk.394.1614464590917; 
 Sat, 27 Feb 2021 14:23:10 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id w25sm1804278lfn.198.2021.02.27.14.23.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Feb 2021 14:23:10 -0800 (PST)
Received: (nullmailer pid 581544 invoked by uid 1000);
 Sat, 27 Feb 2021 22:23:09 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/4] staging:rtl8712: replace get_(d|s)a with
 ieee80211_get_(D|S)A
Date: Sun, 28 Feb 2021 01:22:34 +0300
Message-Id: <20210227222236.581490-2-insafonov@gmail.com>
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

get_da()/get_sa() duplicate native ieee80211_get_(D|S)A functions.
Remove get_(d|s)a, use ieee80211_get_(D|S)A instead.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.c |  4 +--
 drivers/staging/rtl8712/wifi.h         | 45 --------------------------
 2 files changed, 2 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index eb4e46a7f743..efd783e7ccbc 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -466,8 +466,8 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
 
 	bretry = GetRetry(ptr);
-	pda = get_da(ptr);
-	psa = get_sa(ptr);
+	pda = ieee80211_get_DA((struct ieee80211_hdr *)ptr);
+	psa = ieee80211_get_SA((struct ieee80211_hdr *)ptr);
 	pbssid = get_hdr_bssid(ptr);
 	if (!pbssid)
 		return _FAIL;
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 1b32b3510093..5de0e67b1876 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -264,51 +264,6 @@ static inline unsigned char get_tofr_ds(unsigned char *pframe)
 
 #define GetAddr4Ptr(pbuf)	((unsigned char *)((addr_t)(pbuf) + 24))
 
-static inline unsigned char *get_da(unsigned char *pframe)
-{
-	unsigned char	*da;
-	unsigned int	to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);
-
-	switch (to_fr_ds) {
-	case 0x00:	/* ToDs=0, FromDs=0 */
-		da = GetAddr1Ptr(pframe);
-		break;
-	case 0x01:	/* ToDs=0, FromDs=1 */
-		da = GetAddr1Ptr(pframe);
-		break;
-	case 0x02:	/* ToDs=1, FromDs=0 */
-		da = GetAddr3Ptr(pframe);
-		break;
-	default:	/* ToDs=1, FromDs=1 */
-		da = GetAddr3Ptr(pframe);
-		break;
-	}
-	return da;
-}
-
-static inline unsigned char *get_sa(unsigned char *pframe)
-{
-	unsigned char	*sa;
-	unsigned int	to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);
-
-	switch (to_fr_ds) {
-	case 0x00:	/* ToDs=0, FromDs=0 */
-		sa = GetAddr2Ptr(pframe);
-		break;
-	case 0x01:	/* ToDs=0, FromDs=1 */
-		sa = GetAddr3Ptr(pframe);
-		break;
-	case 0x02:	/* ToDs=1, FromDs=0 */
-		sa = GetAddr2Ptr(pframe);
-		break;
-	default:	/* ToDs=1, FromDs=1 */
-		sa = GetAddr4Ptr(pframe);
-		break;
-	}
-
-	return sa;
-}
-
 static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 {
 	unsigned char	*sa;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
