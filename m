Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFB867C8B
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 02:20:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B50C87B59;
	Sun, 14 Jul 2019 00:20:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Doigo70wwNwD; Sun, 14 Jul 2019 00:20:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA1B78798D;
	Sun, 14 Jul 2019 00:20:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 56E881BF41C
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 00:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4EE3520420
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 00:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SvAm5reyk0iJ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 00:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 6492F20131
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 00:20:16 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id r6so9184690qkc.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 13 Jul 2019 17:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhx7NIpokwkYhhoEIOD8zmy5v3YVaxOhWoYk5y/SP+k=;
 b=seI8XyCMUgCQgEKY/1zXOBFhdl26+Lc1/q5Amq9nGQ+l6Uip0n3P/4m+WkuoKq23Q0
 5I/R7P6kDrJCc+sZPvf2RgoZvOf8d8FYdw6WfRpP3Y8LayPmYb9emiNJi1DQhbY1sRXo
 VdXZjW6KoDr1qctZ91+sWAOgHaVHRyC9b2n/Oc9/5vQdQuh3p7B19Uy9nDArnCvmO6XX
 1AOVp6dG8vUxyhE9Eu6hCLCbIZzNmuNeurdafaGtQ+GJCaLPTMml4vgRxx0ucQWWtXAG
 660AFu3CxNoYLHjp1ByQddzrsIvdpz9ICPyev3+NShLEQJuPviTOiPRsFFiIY2shghGU
 ng3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rhx7NIpokwkYhhoEIOD8zmy5v3YVaxOhWoYk5y/SP+k=;
 b=ly57roSlLc7YA6Di9GB8RlF9CPT8YNhkgcagx1sT2nMjsuRrcbJnpFHG8Rx3CSvff4
 fycl+wr2W1BuKhVZ4wo8G7bY29pjLXGZPqVuXJGMvYrxR4fS0OL8uPUOnc/B42cMHG0L
 9EJDapAgztj2QbeiE3HTGPgPAM/eIwWuSnzh7oLWXs1jcBn5UnMkbAbI7ZOzDOBGHS8c
 sdaR+aaR62ALXicXsitzQB5LAiT25g/D4VMBDv2H7XKXcgmPuHwNdpgUsIcGje2ZoOU6
 nV+EkWH7Es3+Dv0Q0fzGNUwEgqMBa2u5y4dA4kHkioInVNlZE8nqnEC62GuAlTlPTrqV
 YEEQ==
X-Gm-Message-State: APjAAAXbQMZcBKxg0VyCsDRCTPYXlHIHN+oqYMAetoK9IeWT8NToK0B5
 anM5pqnm7UYvjmGUchvsBbQ=
X-Google-Smtp-Source: APXvYqw4NPhl98N8116F+zJFmPwBB0mkxAR73VLmL5Ey89kI5ButlPlVrbc8foU0nO4fp3dKi0KRkQ==
X-Received: by 2002:a37:6086:: with SMTP id
 u128mr11867128qkb.270.1563063615252; 
 Sat, 13 Jul 2019 17:20:15 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id z33sm6067526qtc.56.2019.07.13.17.20.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 13 Jul 2019 17:20:14 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: Fix CHECK reported by checkpatch
Date: Sat, 13 Jul 2019 21:20:05 -0300
Message-Id: <20190714002005.14303-1-christianluciano.m@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Change local variable name to avoid CamelCase.
Align code to the open parenthesis to fix alignment issues.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 67 ++++++++++++-------------
 1 file changed, 33 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 00babd011a62..62aad2f7259d 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -65,7 +65,7 @@ void r8712_efuse_reg_uninit(struct _adapter *padapter)
 
 static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 {
-	u8 tmpidx = 0, bResult;
+	u8 tmpidx = 0, b_result;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -78,17 +78,17 @@ static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = r8712_read8(padapter, EFUSE_CTRL);
-		bResult = true;
+		b_result = true;
 	} else {
 		*data = 0xff;
-		bResult = false;
+		b_result = false;
 	}
-	return bResult;
+	return b_result;
 }
 
 static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 {
-	u8 tmpidx = 0, bResult;
+	u8 tmpidx = 0, b_result;
 
 	/* -----------------e-fuse reg ctrl -------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -101,16 +101,16 @@ static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100)
-		bResult = true;
+		b_result = true;
 	else
-		bResult = false;
-	return bResult;
+		b_result = false;
+	return b_result;
 }
 
 static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 			    u8 *data)
 {
-	u8 tmpidx = 0, tmpv8 = 0, bResult;
+	u8 tmpidx = 0, tmpv8 = 0, b_result;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
 	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
@@ -124,10 +124,10 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 			tmpidx++;
 		if (tmpidx < 100) {
 			*data = r8712_read8(padapter, EFUSE_CTRL);
-			bResult = true;
+			b_result = true;
 		} else {
 			*data = 0;
-			bResult = false;
+			b_result = false;
 		}
 	} else {
 		r8712_write8(padapter, EFUSE_CTRL, *data); /* data */
@@ -136,11 +136,11 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100)
-			bResult = true;
+			b_result = true;
 		else
-			bResult = false;
+			b_result = false;
 	}
-	return bResult;
+	return b_result;
 }
 
 static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
@@ -208,20 +208,21 @@ static void pgpacket_copy_data(const u8 word_en, const u8 *sourdata,
 
 u16 r8712_efuse_get_current_size(struct _adapter *padapter)
 {
-	int bContinual = true;
+	int b_continual = true;
 	u16 efuse_addr = 0;
 	u8 hworden = 0;
 	u8 efuse_data, word_cnts = 0;
 
-	while (bContinual && efuse_one_byte_read(padapter, efuse_addr,
-	       &efuse_data) && (efuse_addr < efuse_available_max_size)) {
+	while (b_continual &&
+	       efuse_one_byte_read(padapter, efuse_addr, &efuse_data) &&
+	       (efuse_addr < efuse_available_max_size)) {
 		if (efuse_data != 0xFF) {
 			hworden =  efuse_data & 0x0F;
 			word_cnts = calculate_word_cnts(hworden);
 			/* read next header */
 			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 		} else {
-			bContinual = false;
+			b_continual = false;
 		}
 	}
 	return efuse_addr;
@@ -300,18 +301,16 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 		for (i = 0; i < PGPKG_MAX_WORDS; i++) {
 			if (BIT(i) & word_en) {
 				if (BIT(i) & pkt.word_en) {
-					if (efuse_one_byte_read(
-							padapter, addr,
-							&value))
+					if (efuse_one_byte_read(padapter,
+								addr,
+								&value))
 						pkt.data[i * 2] = value;
 					else
 						return false;
-					if (efuse_one_byte_read(
-							padapter,
-							addr + 1,
-							&value))
-						pkt.data[i * 2 + 1] =
-							value;
+					if (efuse_one_byte_read(padapter,
+								addr + 1,
+								&value))
+						pkt.data[i * 2 + 1] = value;
 					else
 						return false;
 				}
@@ -360,7 +359,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	u8 efuse_data, target_word_cnts = 0;
 	int repeat_times;
 	int sub_repeat;
-	u8 bResult = true;
+	u8 b_result = true;
 
 	/* check if E-Fuse Clock Enable and E-Fuse Clock is 40M */
 	efuse_data = r8712_read8(padapter, EFUSE_CLK_CTRL);
@@ -382,7 +381,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 		while (!efuse_one_byte_read(padapter, efuse_addr,
 					    &efuse_data)) {
 			if (++sub_repeat > _REPEAT_THRESHOLD_) {
-				bResult = false; /* continue to blind write */
+				b_result = false; /* continue to blind write */
 				break; /* continue to blind write */
 			}
 		}
@@ -400,16 +399,16 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 				if (!efuse_one_byte_read(padapter,
 							 efuse_addr + i,
 							 &efuse_data))
-					bResult = false;
+					b_result = false;
 				else if (*(data + i) != efuse_data) /* fail */
-					bResult = false;
+					b_result = false;
 			}
 			break;
 		}
 		/* write header fail */
-		bResult = false;
+		b_result = false;
 		if (efuse_data == 0xFF)
-			return bResult; /* nothing damaged. */
+			return b_result; /* nothing damaged. */
 		/* call rescue procedure */
 		if (!fix_header(padapter, efuse_data, efuse_addr))
 			return false; /* rescue fail */
@@ -418,7 +417,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 			break;
 		/* otherwise, take another risk... */
 	}
-	return bResult;
+	return b_result;
 }
 
 u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
