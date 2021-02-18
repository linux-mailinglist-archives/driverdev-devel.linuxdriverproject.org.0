Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 159A831ED2F
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 18:22:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70D916068C
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 17:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9geHLBI4cVO for <lists+driverdev-devel@lfdr.de>;
	Thu, 18 Feb 2021 17:22:23 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2024160670; Thu, 18 Feb 2021 17:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7132160663;
	Thu, 18 Feb 2021 17:21:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 156D81BF9B9
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1168987170
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 17:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V40+k80tCbKj for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 17:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0809986F9F
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 17:21:32 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id m6so1767532pfk.1
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 09:21:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W8h7ytYQ7/DYtclLyBd102BCY+Pw8YQBDQUfWvvJWOI=;
 b=gpuhqnmJijI9uuYxjrmv/RhSYDQDvVzKnZcjrzLmMvZwiCz3i+uoHv6qKqfwGwb9vI
 VFmPr/DV+Pc1il1wYak90ZsZzCh4qX3KUclrxmRX6eu8A+A0VBIDgQBckEyx59y1i3gK
 0botZeiPfE7Nndu+0YUq3lQuGVUaPUGvXDmjprWQu52XIMw1Am4+QCr4JIeJT2qWVyCi
 aH03TddGHkG/Hw91og1qw9QuP7cctHVPgS12bsteQeaxxSB/BmMPDHKCZYuY9hFomt6E
 gnvr7w+JKp5/qcSqOAi+3qlAjV0BBmdrRHkZXcAE5mqxJSMbbSUnCqc6WZlExOV6nyQQ
 2GHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=W8h7ytYQ7/DYtclLyBd102BCY+Pw8YQBDQUfWvvJWOI=;
 b=LIZx7ozuXxnvLCybaRlmyXOAuwp9DwGVYfySWMBOKSPIaF+oC0ftUvVqYb5SMFXRd8
 Y08t3trNsYHlP+zVq6+OD6yt94/6AInrryoMLgnQdqn1ZaGGXs387pIQHVflLw1r5Qyt
 NZ0RhZGo3i6FL+R+W0RrmK96ecXLMId75DqlDQgt3M14j6Hj/3815IpjdTFyuTuKl5ox
 YV2oe9AQn51VB2T2XLMfRW2GRq6GjdTcIudzrlq9tZfCOuHZp/ew1tvkJoIOMEvvEL3m
 6/fVyOZcq8PGtQoXK5keRHiRnfJz5O8zUeF8MNMOGWslXsqFeeSgkIcnJHOk10Bpw2Aw
 0x4Q==
X-Gm-Message-State: AOAM532MPV1vQM6l5JFiWdtVcahS5dU81J9uXTYsTqoqXZcsnLkz+nC+
 6uzcwzB1/9UPxnfO0cN/9Ik=
X-Google-Smtp-Source: ABdhPJxfzS1MzulgxuYX08Oxl3CeG3ECUoowILKUEte4fRmphzC9WxCBywMdIIN8AJcyykEcBY2d3w==
X-Received: by 2002:a65:4c08:: with SMTP id u8mr4748497pgq.203.1613668891593; 
 Thu, 18 Feb 2021 09:21:31 -0800 (PST)
Received: from localhost ([115.96.167.252])
 by smtp.gmail.com with ESMTPSA id v15sm2381683pgl.44.2021.02.18.09.21.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Feb 2021 09:21:31 -0800 (PST)
From: Suryashankar Das <suryashankardas.2002@gmail.com>
To: gregkh@linuxfoundation.org,
	Larry.Finger@lwfinger.net
Subject: [PATCH] staging: rtl8188eu: Align block comments
Date: Thu, 18 Feb 2021 22:50:43 +0530
Message-Id: <20210218172042.44597-1-suryashankardas.2002@gmail.com>
X-Mailer: git-send-email 2.30.1
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
 drivers/staging/rtl8188eu/core/rtw_security.c | 82 +++++++++----------
 1 file changed, 41 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 46ba55a8952a..73b78740093b 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -127,8 +127,8 @@ static __le32 getcrc32(u8 *buf, int len)
 }
 
 /*
-	Need to consider the fragment  situation
-*/
+ *	Need to consider the fragment  situation
+ */
 void rtw_wep_encrypt(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
 	int	curfragnum, length;
@@ -465,23 +465,23 @@ static const unsigned short Sbox1[2][256] = {  /* Sbox for hash (can be in ROM)
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
+/*
+ **********************************************************************
+ * Routine: Phase 1 -- generate P1K, given TA, TK, IV32
+ *
+ * Inputs:
+ *     tk[]      = temporal key			 [128 bits]
+ *     ta[]      = transmitter's MAC address	    [ 48 bits]
+ *     iv32      = upper 32 bits of IV		  [ 32 bits]
+ * Output:
+ *     p1k[]     = Phase 1 key			  [ 80 bits]
+ *
+ * Note:
+ *     This function only needs to be called every 2**16 packets,
+ *     although in theory it could be called every packet.
+ *
+ **********************************************************************
+ */
 static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 {
 	int  i;
@@ -505,28 +505,28 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 }
 
 /*
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
+ **********************************************************************
+ * Routine: Phase 2 -- generate RC4KEY, given TK, P1K, IV16
+ *
+ * Inputs:
+ *     tk[]      = Temporal key			 [128 bits]
+ *     p1k[]     = Phase 1 output key		   [ 80 bits]
+ *     iv16      = low 16 bits of IV counter	    [ 16 bits]
+ * Output:
+ *     rc4key[]  = the key used to encrypt the packet   [128 bits]
+ *
+ * Note:
+ *     The value {TA, IV32, IV16} for Phase1/Phase2 must be unique
+ *     across all packets using the same key TK value. Then, for a
+ *     given value of TK[], this TKIP48 construction guarantees that
+ *     the final RC4KEY value is unique across all packets.
+ *
+ * Suggested implementation optimization: if PPK[] is "overlaid"
+ *     appropriately on RC4KEY[], there is no need for the final
+ *     for loop below that copies the PPK[] result into RC4KEY[].
+ *
+ **********************************************************************
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
