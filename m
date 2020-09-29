Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A049227BD23
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Sep 2020 08:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AD0887057;
	Tue, 29 Sep 2020 06:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iOMWksUF54Zo; Tue, 29 Sep 2020 06:32:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C03D0868E7;
	Tue, 29 Sep 2020 06:32:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD491BF2F9
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 801378558A
 for <devel@linuxdriverproject.org>; Tue, 29 Sep 2020 06:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pN0UNzLC3Mhh for <devel@linuxdriverproject.org>;
 Tue, 29 Sep 2020 06:32:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A29B185549
 for <devel@driverdev.osuosl.org>; Tue, 29 Sep 2020 06:32:33 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id k14so5111714edo.1
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 23:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3M5ujbbZ1hfkRm2nDqqv+/JD+dL+jj2LWYrUL1PkHA=;
 b=DwR+0DTh2zdf4kVcNAQKvS9+LQ+CTPhV26VvAYSBEggwEssnMv82TQgGSMySkJm4au
 l3P2y8hyJmXkNRw0nj+heaJmcnITdn/IyaYz1FkJHVXVIZDq0g/8VfjCEilMou9bHGoZ
 +uhYWcLv/XB6gDUIJAekVHHm2sXv5udYelzsUmr5S3qBXj990zeATl3NS8tTRdNo4SEs
 ZgiGpp1d+oMeFIS6HHXG6afRlM16SdVL53J6gL2kXtzRR8WAOSszYJH0Z72+FhWJHSTG
 rfvNFDcBAK4MKHBgfgA7wDsNKGFk3YGyyNkSxPdNoMbfwnGpsPW4kJtf5m0UxprD6AJO
 /jxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=k3M5ujbbZ1hfkRm2nDqqv+/JD+dL+jj2LWYrUL1PkHA=;
 b=Rr63HjcjXmUMLc5iRGF6+Qxdb0GL7uaZV1vxCJKgJ7fEf+HKqlYa1wAIajyYCrSuae
 PUazBzDC95TEx7G2eu4pyyHI1cg22cC+DHxYqK/55/8dnbtJKtxGr9kJX1tR/YLyb8u4
 BeRK7Ml0Fc/5U8QF+x+YCfSKW7OMuFIAIsHIoWb9tiPUX/t1IFUHChOXdTXvtitFCj7J
 Pv3l1EKwoiDJ4RxNJkSb688zcBH5lXWPgM47AKtw5JrKOaxAeIFxPEuhVxt/tI0UFTB7
 O7guszJ4xR3eV/cVezvLo21Nu3Y+cjeiBlKhKnBHUU9L+wcBqQi/HL2aaKnEBDKDouym
 7cgQ==
X-Gm-Message-State: AOAM530IMqmfTSjRItX02BAuicTqvFuHZ5g0lXnMuyrDJ5yG7vsfkT7L
 sU8tsFahZV5i/USNsGILlm8=
X-Google-Smtp-Source: ABdhPJyoWxrwuCvX4juqD497cE1ktpBX529HxwiCBvIYClzUHmlqiC19i6K6WDcwOSSpaqGyCjbwXw==
X-Received: by 2002:a05:6402:10c9:: with SMTP id
 p9mr1618938edu.156.1601361151974; 
 Mon, 28 Sep 2020 23:32:31 -0700 (PDT)
Received: from localhost.localdomain
 (ipservice-092-219-207-039.092.219.pools.vodafone-ip.de. [92.219.207.39])
 by smtp.gmail.com with ESMTPSA id r8sm4730915edy.87.2020.09.28.23.32.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Sep 2020 23:32:31 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/8] staging: rtl8188eu: remove unused macros and definitions
Date: Tue, 29 Sep 2020 08:28:40 +0200
Message-Id: <20200929062847.23985-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Removep unused macros and definitions from rtw_security.h leftover
from previous cleanup patches.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 .../staging/rtl8188eu/include/rtw_security.h  | 58 -------------------
 1 file changed, 58 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_security.h b/drivers/staging/rtl8188eu/include/rtw_security.h
index 8ba02a7cea60..5f418003647b 100644
--- a/drivers/staging/rtl8188eu/include/rtw_security.h
+++ b/drivers/staging/rtl8188eu/include/rtw_security.h
@@ -228,64 +228,6 @@ struct mic_data {
 	u32  nBytesInM;      /*  # bytes in M */
 };
 
-extern const u32 Te0[256];
-extern const u32 Td0[256];
-extern const u32 Td1[256];
-extern const u32 Td2[256];
-extern const u32 Td3[256];
-extern const u32 Td4[256];
-extern const u32 rcon[10];
-extern const u8 Td4s[256];
-extern const u8 rcons[10];
-
-#define RCON(i) (rcons[(i)] << 24)
-
-static inline u32 rotr(u32 val, int bits)
-{
-	return (val >> bits) | (val << (32 - bits));
-}
-
-#define TE0(i) Te0[((i) >> 24) & 0xff]
-#define TE1(i) rotr(Te0[((i) >> 16) & 0xff], 8)
-#define TE2(i) rotr(Te0[((i) >> 8) & 0xff], 16)
-#define TE3(i) rotr(Te0[(i) & 0xff], 24)
-
-/* ===== start - public domain SHA256 implementation ===== */
-
-/* This is based on SHA256 implementation in LibTomCrypt that was released into
- * public domain by Tom St Denis.
- */
-
-/* the K array */
-static const unsigned long K[64] = {
-	0x428a2f98UL, 0x71374491UL, 0xb5c0fbcfUL, 0xe9b5dba5UL, 0x3956c25bUL,
-	0x59f111f1UL, 0x923f82a4UL, 0xab1c5ed5UL, 0xd807aa98UL, 0x12835b01UL,
-	0x243185beUL, 0x550c7dc3UL, 0x72be5d74UL, 0x80deb1feUL, 0x9bdc06a7UL,
-	0xc19bf174UL, 0xe49b69c1UL, 0xefbe4786UL, 0x0fc19dc6UL, 0x240ca1ccUL,
-	0x2de92c6fUL, 0x4a7484aaUL, 0x5cb0a9dcUL, 0x76f988daUL, 0x983e5152UL,
-	0xa831c66dUL, 0xb00327c8UL, 0xbf597fc7UL, 0xc6e00bf3UL, 0xd5a79147UL,
-	0x06ca6351UL, 0x14292967UL, 0x27b70a85UL, 0x2e1b2138UL, 0x4d2c6dfcUL,
-	0x53380d13UL, 0x650a7354UL, 0x766a0abbUL, 0x81c2c92eUL, 0x92722c85UL,
-	0xa2bfe8a1UL, 0xa81a664bUL, 0xc24b8b70UL, 0xc76c51a3UL, 0xd192e819UL,
-	0xd6990624UL, 0xf40e3585UL, 0x106aa070UL, 0x19a4c116UL, 0x1e376c08UL,
-	0x2748774cUL, 0x34b0bcb5UL, 0x391c0cb3UL, 0x4ed8aa4aUL, 0x5b9cca4fUL,
-	0x682e6ff3UL, 0x748f82eeUL, 0x78a5636fUL, 0x84c87814UL, 0x8cc70208UL,
-	0x90befffaUL, 0xa4506cebUL, 0xbef9a3f7UL, 0xc67178f2UL
-};
-
-/* Various logical functions */
-#define RORc(x, y) \
-	(((((unsigned long)(x) & 0xFFFFFFFFUL) >> (unsigned long)((y) & 31)) | \
-	 ((unsigned long)(x) << (unsigned long)(32 - ((y) & 31)))) & 0xFFFFFFFFUL)
-#define Ch(x, y, z)       (z ^ (x & (y ^ z)))
-#define Maj(x, y, z)      (((x | y) & z) | (x & y))
-#define S(x, n)         RORc((x), (n))
-#define R(x, n)         (((x) & 0xFFFFFFFFUL) >> (n))
-#define Sigma0(x)       (S(x, 2) ^ S(x, 13) ^ S(x, 22))
-#define Sigma1(x)       (S(x, 6) ^ S(x, 11) ^ S(x, 25))
-#define Gamma0(x)       (S(x, 7) ^ S(x, 18) ^ R(x, 3))
-#define Gamma1(x)       (S(x, 17) ^ S(x, 19) ^ R(x, 10))
-
 void rtw_secmicsetkey(struct mic_data *pmicdata, u8 *key);
 void rtw_secmicappendbyte(struct mic_data *pmicdata, u8 b);
 void rtw_secmicappend(struct mic_data *pmicdata, u8 *src, u32 nBytes);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
