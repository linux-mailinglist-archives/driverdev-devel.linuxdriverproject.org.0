Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E516A2D820C
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 23:29:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 780F8228AE;
	Fri, 11 Dec 2020 22:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hbj9Eq4M50wx; Fri, 11 Dec 2020 22:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9DBC52D946;
	Fri, 11 Dec 2020 22:28:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 494F31BF397
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 22:28:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4615C86427
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 22:28:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZkoSwaQ9eIgI for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 22:28:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 53AF186360
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 22:28:49 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id x15so10286397ilq.1
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 14:28:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=ebnYpvw7dbdH744q7Pg5KgX2Rz/kzMnO2KBcj1GPjco=;
 b=HEAZDS3BmCR8Tm3r62ZsNuQqfBteju58xHXQtSgMcI5XmW/Viksf/iSlSlg56vafCk
 xSKOxj0AlYSF5gFYVkTZ+su3DtlWpgoC/R289Xl5awTHp2uBZWfE91M/9q5/Rhpd12al
 BPyJXlDKE0GERg8XhWM2oOBwdehSZ2EROe5t4+nI1ithcYyRZmfRNlDvRXxO8EY1lyE3
 cyo6U2B/K4DBIClOUkX9veQOwhf43KdY8skoXU8o8FeDbU6JUpxXDR6lZBFpmPjBaScI
 DKBI3jw80CAmKxfzDkFWnek5JaBP//5NUookG0BV/3fJlzrej74d5I+UhIOkos8G2pCU
 unMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=ebnYpvw7dbdH744q7Pg5KgX2Rz/kzMnO2KBcj1GPjco=;
 b=V9YUnV+LSBvd+OChCPst+g+QiHZlqi818ZCfmlBDMrNoruUzUCwL0Mt98KkvB9r/0P
 eCB5v5orJpIV78MTCdVTqYH9U4e8Nh6iQU42FHNcpTDUTdokONk3u5KfhSWTAYua0dmp
 32OEkzwyvGxMKqJChLQBFA9rcdCqpLqf2rbp6dGEbusqG2CYC39nrfZpcghANe3TSIgd
 pT/yZX3ldVzzLh0r8Xnmy91W+NpmI4/l21NyiACzqoPHAgxyqRjrgho5ci99XMf/+9Er
 vBTXehVaJarCdUX0zW5If2Io7Ko4sWV3tgfYilnwTcbCs/MHLA+HP/yi3XaK/lBsOdvi
 VDaA==
X-Gm-Message-State: AOAM531Akgf5/apufuDpV+Fdbgtn2mtLKNmiB36kYOW8TG5HSHUCx5AL
 29Xi0Qcp0a96r6hq6V/Vjsk=
X-Google-Smtp-Source: ABdhPJzESa2ZuUOYwBj0QMnueenCrDAw+gxlg4EYLZryOWF0y8OKdWyTvvnnbb+hYGGtMxEYuLKPfQ==
X-Received: by 2002:a92:dc0f:: with SMTP id t15mr18707886iln.267.1607725728454; 
 Fri, 11 Dec 2020 14:28:48 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id a7sm6322612iln.63.2020.12.11.14.28.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 14:28:47 -0800 (PST)
Date: Fri, 11 Dec 2020 16:28:45 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, hdegoede@redhat.com,
 Larry.Finger@lwfinger.net, ross.schm.dev@gmail.com,
 longman@redhat.com, dhowells@redhat.com, hannes@cmpxchg.org,
 joe@perches.com, john.oldman@polehill.co.uk, singhalsimran0@gmail.com
Subject: [PATCH] Staging: rtl8723bs/core: fix braces coding style issues
Message-ID: <20201211222845.GA543167@a>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix all the braces coding style issues found by checkpatch.pl in
rtw_security.c.

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 24 +++++++------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index a83d8f7f611c..a311595deafb 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -171,9 +171,8 @@ static void crc32_init(void)
 
 		for (i = 0; i < 256; ++i) {
 			k = crc32_reverseBit((u8)i);
-			for (c = ((u32)k) << 24, j = 8; j > 0; --j) {
+			for (c = ((u32)k) << 24, j = 8; j > 0; --j)
 				c = c & 0x80000000 ? (c << 1) ^ CRC32_POLY_BE : (c << 1);
-			}
 			p1 = (u8 *)&crc32_table[i];
 
 			p1[0] = crc32_reverseBit(p[3]);
@@ -195,9 +194,8 @@ static __le32 getcrc32(u8 *buf, sint len)
 
 	crc = 0xffffffff;       /* preload shift register, per CRC-32 spec */
 
-	for (p = buf; len > 0; ++p, --len) {
+	for (p = buf; len > 0; ++p, --len)
 		crc = crc32_table[(crc ^ *p) & 0xff] ^ (crc >> 8);
-	}
 	return cpu_to_le32(~crc);    /* transmit complement, per CRC-32 spec */
 }
 
@@ -320,9 +318,8 @@ static u32 secmicgetuint32(u8 *p)
 	s32 i;
 	u32 res = 0;
 
-	for (i = 0; i < 4; i++) {
+	for (i = 0; i < 4; i++)
 		res |= ((u32)(*p++)) << (8*i);
-	}
 
 	return res;
 }
@@ -396,9 +393,8 @@ void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst)
 	rtw_secmicappendbyte(pmicdata, 0);
 	rtw_secmicappendbyte(pmicdata, 0);
 	/*  and then zeroes until the length is a multiple of 4 */
-	while (pmicdata->nBytesInM != 0) {
+	while (pmicdata->nBytesInM != 0)
 		rtw_secmicappendbyte(pmicdata, 0);
-	}
 	/*  The appendByte function has already computed the result. */
 	secmicputuint32(dst, pmicdata->L);
 	secmicputuint32(dst+4, pmicdata->R);
@@ -918,9 +914,8 @@ static void xor_128(u8 *a, u8 *b, u8 *out)
 {
 		sint i;
 
-		for (i = 0; i < 16; i++) {
+		for (i = 0; i < 16; i++)
 			out[i] = a[i] ^ b[i];
-		}
 }
 
 
@@ -928,9 +923,8 @@ static void xor_32(u8 *a, u8 *b, u8 *out)
 {
 		sint i;
 
-		for (i = 0; i < 4; i++) {
+		for (i = 0; i < 4; i++)
 			out[i] = a[i] ^ b[i];
-		}
 }
 
 
@@ -969,9 +963,8 @@ static void byte_sub(u8 *in, u8 *out)
 {
 		sint i;
 
-		for (i = 0; i < 16; i++) {
+		for (i = 0; i < 16; i++)
 			out[i] = sbox(in[i]);
-		}
 }
 
 
@@ -1259,9 +1252,8 @@ static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
 {
 		sint i;
 
-		for (i = 0; i < 16; i++) {
+		for (i = 0; i < 16; i++)
 			out[i] = ina[i] ^ inb[i];
-		}
 }
 
 static sint aes_cipher(u8 *key, uint	hdrlen,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
