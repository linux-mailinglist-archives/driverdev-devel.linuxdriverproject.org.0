Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848731EE35
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 19:25:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0DAE360694
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 18:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-DMQW9TMYqo for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 18:25:21 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 441BA60688; Thu, 18 Feb 2021 18:25:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 33B9360673;
	Thu, 18 Feb 2021 18:24:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D80031BF33A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D3B33873CA
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 18:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id raqOWugqzAsw for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 18:24:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
 [209.85.210.170])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FE87873CF
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 18:24:34 +0000 (UTC)
Received: by mail-pf1-f170.google.com with SMTP id m6so1887095pfk.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 10:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nmYatdd9Kvf8g3bNRTakGJ8JnaKdh6hW5vuFhAf8L1w=;
 b=Q+LFMDuMt+asXUyu4RIxtSVL/rO0zZkcfVys/19i83XSrTlLf0JoHpryNuQUpjsQGV
 WzN2YjYzVAkxD6GGhW4FnDJrEIyU7suLhi0GKiVgrqhfaw13HuKd5+xZwBc0/4RKy8F7
 4hJEULvZfezon9W3GHupqWIb89eSVNM0btvavj+VKXFx+lCgom4uF0GGnbj8oH2W7HRq
 XfBSxYE5wrlunha4JA6Fv7wBL7/DXqv0ndNIUH+p++kyUdCbtVxPr0gDdfJfZv43nSsc
 OmYO7PVR/mK7b/6/rDbSWQNqR6FRSndEpz7kIGla1eIK3dtpajuW6iJ/TE+YOrChy/Iu
 uK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nmYatdd9Kvf8g3bNRTakGJ8JnaKdh6hW5vuFhAf8L1w=;
 b=Zi+HkwDXeDLkPPwwH3KT3ru/nMW8iUbpzurzvRtoR1gG/apAy6Cq1prHxliv5xgWwy
 IroddNH5+dNGg/h1qojThCA7TBgxdmT8Z9ctBRbdSrVk/SducqqCi2d2wlkprYTDrdzj
 8qMJIOJ8kTAmIFWTgDhUQjrWsok9SW5HfTn+3Nrq1pZb2xPWlhcDZjSqlr+lWmh6LvHN
 vUbUh5C6ImatDl8LZ50wpiyi6XaA/WTOcd0RHZ3yxo/mtqxgEEXnV7KkVrfOppYMOcOt
 ZOjcYBZw0zekXmUNUNWsc4O71jPesTDDKuribS/Fr8gpFYrXdVEy4mkqzpYBm/CfuVBR
 DOGQ==
X-Gm-Message-State: AOAM530Ae75QwZqJWt2VNUla78VsXy5kLtzCO6FuH9ihrR1Xn4FO8CS8
 rLHfzIKkFe6F3M1lm9A2XYA=
X-Google-Smtp-Source: ABdhPJxkCcgci/1ZZN4IINUm8J3Sz606oKW6ZItoR8ELQUIZr7S/s865+Dh8wNz4KB9wLBQwMZV4+Q==
X-Received: by 2002:a62:e808:0:b029:1e5:f10a:e6d8 with SMTP id
 c8-20020a62e8080000b02901e5f10ae6d8mr5521210pfi.23.1613672674180; 
 Thu, 18 Feb 2021 10:24:34 -0800 (PST)
Received: from localhost ([115.96.167.252])
 by smtp.gmail.com with ESMTPSA id c26sm7988281pfj.183.2021.02.18.10.24.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 10:24:33 -0800 (PST)
From: Suryashankar Das <suryashankardas.2002@gmail.com>
To: gregkh@linuxfoundation.org,
	Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8188eu: Format comments
Date: Thu, 18 Feb 2021 23:54:15 +0530
Message-Id: <20210218182414.49107-1-suryashankardas.2002@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <YC6oONjckmrSP2ip@kroah.com>
References: <YC6oONjckmrSP2ip@kroah.com>
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
Cc: devel@driverdev.osuosl.org,
 Suryashankar Das <suryashankardas.2002@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the checkpatch.pl warnings:
WARNING: Block comments use * on subsequent lines
WARNING: Block comments should align the * on each line

Signed-off-by: Suryashankar Das <suryashankardas.2002@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_security.c | 72 ++++++++-----------
 1 file changed, 29 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 46ba55a8952a..da26a3c705f8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -126,9 +126,7 @@ static __le32 getcrc32(u8 *buf, int len)
 	return cpu_to_le32(~crc);    /* transmit complement, per CRC-32 spec */
 }
 
-/*
-	Need to consider the fragment  situation
-*/
+/* Need to consider the fragment  situation */
 void rtw_wep_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
 	int	curfragnum, length;
@@ -465,23 +463,17 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
   }
 };
 
- /*
-**********************************************************************
-* Routine: Phase 1 -- generate P1K, given TA, TK, IV32
-*
-* Inputs:
-*     tk[]      = temporal key			 [128 bits]
-*     ta[]      = transmitter's MAC address	    [ 48 bits]
-*     iv32      = upper 32 bits of IV		  [ 32 bits]
-* Output:
-*     p1k[]     = Phase 1 key			  [ 80 bits]
-*
-* Note:
-*     This function only needs to be called every 2**16 packets,
-*     although in theory it could be called every packet.
-*
-**********************************************************************
-*/
+/**
+ * phase1() - generate P1K, given TA, TK, IV32
+ * @tk[]: temporal key [128 bits]
+ * @ta[]: transmitter's MAC address [ 48 bits]
+ * @iv32: upper 32 bits of IV [ 32 bits]
+ *
+ * This function only needs to be called every 2**16 packets,
+ * although in theory it could be called every packet.
+ *
+ * Return: p1k[] - Phase 1 key [ 80 bits]
+ */
 static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 {
 	int  i;
@@ -504,29 +496,23 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 	}
 }
 
-/*
-**********************************************************************
-* Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
-*
-* Inputs:
-*     tk[]      = Temporal key			 [128 bits]
-*     p1k[]     = Phase 1 output key		   [ 80 bits]
-*     iv16      = low 16 bits of IV counter	    [ 16 bits]
-* Output:
-*     rc4key[]  = the key used to encrypt the packet   [128 bits]
-*
-* Note:
-*     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
-*     across all packets using the same key TK value. Then, for a
-*     given value of TK[], this TKIP48 construction guarantees that
-*     the final RC4KEY value is unique across all packets.
-*
-* Suggested implementation optimization: if PPK[] is "overlaid"
-*     appropriately on RC4KEY[], there is no need for the final
-*     for loop below that copies the PPK[] result into RC4KEY[].
-*
-**********************************************************************
-*/
+/**
+ * phase2() - generate RC4KEY, given TK, P1K, IV16
+ * @tk[]: Temporal key [128 bits]
+ * @p1k[]: Phase 1 output key [ 80 bits]
+ * @iv16: low 16 bits of IV counter [ 16 bits]
+ *
+ * The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
+ * across all packets using the same key TK value. Then, for a
+ * given value of TK[], this TKIP48 construction guarantees that
+ * the final RC4KEY value is unique across all packets.
+ *
+ * Suggested implementation optimization: if PPK[] is "overlaid"
+ * appropriately on RC4KEY[], there is no need for the final
+ * for loop below that copies the PPK[] result into RC4KEY[].
+ *
+ * Return: rc4key[] - the key used to encrypt the packet [128 bits]
+ */
 static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 {
 	int  i;
-- 
2.30.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
