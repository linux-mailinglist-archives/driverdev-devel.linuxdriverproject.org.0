Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476CD316BEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 18:00:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C905C874E3;
	Wed, 10 Feb 2021 17:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m2oDn3vSnVW6; Wed, 10 Feb 2021 17:00:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E4CB874D2;
	Wed, 10 Feb 2021 17:00:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9DD41BF41C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:00:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C359986CE0
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 17:00:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AeAEJB04ke8O for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 17:00:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3D82986CC8
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 17:00:08 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id m13so3333230wro.12
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 09:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f52jNubWeppUFK3CjhLaeqlhm2HiQ/lG/LaNbIAx5C0=;
 b=X4/N6zuXTfQvs2QxG/bCYsPdqmCOvANyCoWdsxoN+Ldu2i+XuwbIzX8INTQDm9RX+J
 efcjAMwDdeEGzALl7TdJfCvWr0LMS3pGWuoYuLuXcQUxf5aMN+qmX7VXOaJtWsel2jNB
 Sm09FHgIrK20fXWcbBsAwjVh03N2RLszTsjVbd2klGYillyD0UJySnaZCzKY1eaZzrVB
 wCqFfZInZxYPwym544GxvSDZxev72YhaIVV16Y9vn9N4xLiyQBO3+M0JZg5escWWqfg3
 TIIWg9FZKK+Rpke2AzeSkQmmnSIsQHohC8TmpRCaxraw4WUKa3Wxglw6vnDlBxnOCDUv
 8a1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f52jNubWeppUFK3CjhLaeqlhm2HiQ/lG/LaNbIAx5C0=;
 b=TS1dXrUf4f7WsAaa3tml+L8tnshmBQqROLWH9tuiQYMlfWQw6Cw4W27Sa3lPsGS2xC
 J+ah4QSx1xQkfmUUYVQQPL7ql10tio14u8VV8Z+9rVO3tffLgMojttQ6sNTB72pWH3VW
 TydcAxFJURMfFGjdlKkQ8Gw4UwHZV8of7mLrdWhNGVXhZKzY+U85di1+XUgih7gFS2sW
 UZK2QL4bDCEQzSSxSqw5m+QFIWs23FrStEWUqnTVPmQXYoisL1PNk6MYgW2ctGCxlUl0
 yz/GtjwArkqjYtWwBxLftCI2qczRxNR3krC1rrVOrBbMXtArymlLD/zhZpyzlqV44o9r
 +6Bw==
X-Gm-Message-State: AOAM5333sXlKW6XxcaGP3Bu/OwEj1+aGAMeABK/7dMKohd5coVHnmIOZ
 cQ8KpvLLhsRvE97tYbJhkSyLCQ==
X-Google-Smtp-Source: ABdhPJx5EvknDyldDtZ0k46H95CbsUhT1EhdFUe30CLTxNqUN4lrBz2Qc0lI24T/Eg3f+n2NiCUZ/Q==
X-Received: by 2002:adf:f8c8:: with SMTP id f8mr4710717wrq.132.1612976406806; 
 Wed, 10 Feb 2021 09:00:06 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id x4sm4120335wrn.64.2021.02.10.09.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 09:00:06 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: cleanup macros within include/rtw_debug.h
Date: Wed, 10 Feb 2021 17:00:03 +0000
Message-Id: <20210210170003.100880-1-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, luk@wybcz.pl, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove do/while loops from DBG_871X, MSG_8192C and DBG_8192C. Also
fix opening brace placements and trailing single statement layout within
RT_PRINT_DATA, as well as making newline character placement more
consistent and removing camel case where possible. Finally, add
parentheses for DBG_COUNTER definition.

This fixes 3 checkpatch warnings, 5 checkpatch errors and 3 checkpatch
checks.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/include/rtw_debug.h | 40 +++++++++----------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_debug.h b/drivers/staging/rtl8723bs/include/rtw_debug.h
index c90adfb87261..d06ac9540cf7 100644
--- a/drivers/staging/rtl8723bs/include/rtw_debug.h
+++ b/drivers/staging/rtl8723bs/include/rtw_debug.h
@@ -201,19 +201,16 @@
 #ifdef DEBUG
 #if	defined(_dbgdump)
 	#undef DBG_871X
-	#define DBG_871X(...)     do {\
-		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	} while (0)
+	#define DBG_871X(...)\
+		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
 
 	#undef MSG_8192C
-	#define MSG_8192C(...)     do {\
-		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	} while (0)
+	#define MSG_8192C(...)\
+		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
 
 	#undef DBG_8192C
-	#define DBG_8192C(...)     do {\
-		_dbgdump(DRIVER_PREFIX __VA_ARGS__);\
-	} while (0)
+	#define DBG_8192C(...)\
+		_dbgdump(DRIVER_PREFIX __VA_ARGS__)
 #endif /* defined(_dbgdump) */
 #endif /* DEBUG */
 
@@ -235,25 +232,26 @@
 
 #if	defined(_dbgdump)
 	#undef RT_PRINT_DATA
-	#define RT_PRINT_DATA(_Comp, _Level, _TitleString, _HexData, _HexDataLen)			\
-		if (((_Comp) & GlobalDebugComponents) && (_Level <= GlobalDebugLevel))	\
-		{									\
+	#define RT_PRINT_DATA(_comp, _level, _title_string, _hex_data, _hex_data_len)		\
+	do {											\
+		if (((_comp) & GlobalDebugComponents) && ((_level) <= GlobalDebugLevel)) {	\
 			int __i;								\
-			u8 *ptr = (u8 *)_HexData;				\
+			u8 *ptr = (u8 *)_hex_data;						\
 			_dbgdump("%s", DRIVER_PREFIX);						\
-			_dbgdump(_TitleString);						\
-			for (__i = 0; __i < (int)_HexDataLen; __i++)				\
-			{								\
+			_dbgdump(_title_string);						\
+			for (__i = 0; __i < (int)_hex_data_len; __i++) {			\
 				_dbgdump("%02X%s", ptr[__i], (((__i + 1) % 4) == 0)?"  ":" ");	\
-				if (((__i + 1) % 16) == 0)	_dbgdump("\n");			\
-			}								\
-			_dbgdump("\n");							\
-		}
+				if (((__i + 1) % 16) == 0)					\
+					_dbgdump("\n");						\
+			}									\
+			_dbgdump("\n");								\
+		}										\
+	} while (0)
 #endif /* defined(_dbgdump) */
 #endif /* DEBUG_RTL871X */
 
 #ifdef CONFIG_DBG_COUNTER
-#define DBG_COUNTER(counter) counter++
+#define DBG_COUNTER(counter) ((counter)++)
 #else
 #define DBG_COUNTER(counter) do {} while (0)
 #endif
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
