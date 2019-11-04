Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E63EE4FB
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 17:44:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 09F7B2153E;
	Mon,  4 Nov 2019 16:44:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UVCpIuisw+NI; Mon,  4 Nov 2019 16:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D92B72050E;
	Mon,  4 Nov 2019 16:44:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89BA41BF4D6
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 834372050B
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 16:44:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXuDFnPE6Y2A for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 16:44:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D89D20506
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 16:44:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id t1so11965094wrv.4
 for <devel@driverdev.osuosl.org>; Mon, 04 Nov 2019 08:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0t94XLffreVVovHGukxf8hICR+94LpUO6Px1WI34vBE=;
 b=AcFXtNo0+1Chg6ruZiD0XY+IdNfhv36E7xA73VrgzEJE997OtyuA97IC5jhjJfsGu3
 47iEsxh/TcwAuANiseYMYuZXuQEi3IRW1BZdRi5WGnuL/Vq/ITSSMYylJ+Fc+Oolnhtm
 5WuHyw73MZEBQL8SVVy0FKkmClvWc1mYZbctnnf63FIpjur3DFSM1wDa/UJTIHOhk1c5
 RA7jw7Nfgou10yM84n0tipylKj8b+i6f91pvE5R8GsCBH31/omO46FqNYhdFYXeHOtwH
 EJSHO58d9thdkRpzbMuei09+dX8AvcIS2cSSWKf0Vn7DbGCik0oCIjhdLODmwDAbozot
 dIbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0t94XLffreVVovHGukxf8hICR+94LpUO6Px1WI34vBE=;
 b=YbVkfL8kkt5AlBTg2egaIYY0aCORBbHT6l0/If6BYKlV6eSJPR/tgVVbjKjH1vfrMy
 UsrvDRX410JTMCU+LC7qgmGn/eqb/IdRA4FpLvWnwKP0o9vyolet7gMKhC6VEL848Zho
 bW2afDRxFaMSLMOO4dmuNOlMWCxStQNiH4r//1uclKUN24Xnr397WGyf8EdxkF5tHexn
 TaDhUWkUL2pLEJR+UkziJltU9guRO7siT/1Doqq2Cj5suZ0SeMlW6WpxJk5E43gj96sR
 yG5mVIiq9s/cOeYWV1rwzbWT8fEs5Y7VlnzLm7Ptl4y+PDX9+AUq+1kX2Aavb2n+AaVd
 2otA==
X-Gm-Message-State: APjAAAWpADPwqaLwIK1KEMrLNxol+MHBbXazXPHszDyhGbfmDLAJHI0e
 FdM+MmdYUykjHlINXbiw9Q==
X-Google-Smtp-Source: APXvYqxBesDB4GQs7XQd7MVcpHiy1j4Bh/l/FwCfRsTaZUuicmiqYqSRJ60kQfR5/nFdXZtemuyxBA==
X-Received: by 2002:adf:d1a3:: with SMTP id w3mr25891043wrc.9.1572885851234;
 Mon, 04 Nov 2019 08:44:11 -0800 (PST)
Received: from buntux.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
 by smtp.googlemail.com with ESMTPSA id i3sm17371844wrw.69.2019.11.04.08.44.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 08:44:10 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rts5208: rewrite macro with GNU extension __auto_type
Date: Mon,  4 Nov 2019 16:44:00 +0000
Message-Id: <20191104164400.9935-1-jbi.octave@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Jules Irenge <jbi.octave@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rewrite macro function with GNU extension __auto_type
to remove issue detected by checkpatch tool.
CHECK: MACRO argument reuse - possible side-effects?

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
 1 file changed, 55 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
index bac65784d4a1..4b986d5c68da 100644
--- a/drivers/staging/rts5208/rtsx_chip.h
+++ b/drivers/staging/rts5208/rtsx_chip.h
@@ -386,23 +386,31 @@ struct zone_entry {
 
 /* SD card */
 #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
-#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_HS))
-#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_SDR50))
-#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_DDR50))
-#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_SDR104))
-#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
-					 ((sd_card)->sd_type & SD_HCXC))
-#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
-					 ((sd_card)->capacity <= 0x4000000))
-#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
-					 ((sd_card)->capacity > 0x4000000))
-#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
-					 CHK_SD_DDR50(sd_card) || \
-					 CHK_SD_SDR104(sd_card))
+#define CHK_SD_HS(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_HS); })
+#define CHK_SD_SDR50(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_SDR50); })
+#define CHK_SD_DDR50(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_DDR50); })
+#define CHK_SD_SDR104(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_SDR104); })
+#define CHK_SD_HCXC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
+					 (_sd->sd_type & SD_HCXC); })
+#define CHK_SD_HC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
+					(_sd->capacity <= 0x4000000); })
+#define CHK_SD_XC(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
+					 (_sd->capacity > 0x4000000); })
+#define CHK_SD30_SPEED(sd_card)\
+	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
+					CHK_SD_DDR50(_sd) || \
+					CHK_SD_SDR104(_sd); })
 
 #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
 #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
@@ -420,18 +428,24 @@ struct zone_entry {
 /* MMC card */
 #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
 					 TYPE_MMC)
-#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_26M))
-#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_52M))
-#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_4BIT))
-#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_8BIT))
-#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
-#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
-					 ((sd_card)->sd_type & MMC_DDR52))
+#define CHK_MMC_26M(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_26M); })
+#define CHK_MMC_52M(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_52M); })
+#define CHK_MMC_4BIT(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_4BIT); })
+#define CHK_MMC_8BIT(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+	 (_sd->sd_type & MMC_8BIT); })
+#define CHK_MMC_SECTOR_MODE(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_SECTOR_MODE); })
+#define CHK_MMC_DDR52(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
+					 (_sd->sd_type & MMC_DDR52); })
 
 #define SET_MMC(sd_card)		((sd_card)->sd_type = TYPE_MMC)
 #define SET_MMC_26M(sd_card)		((sd_card)->sd_type |= MMC_26M)
@@ -448,8 +462,9 @@ struct zone_entry {
 #define CLR_MMC_SECTOR_MODE(sd_card)	((sd_card)->sd_type &= ~MMC_SECTOR_MODE)
 #define CLR_MMC_DDR52(sd_card)		((sd_card)->sd_type &= ~MMC_DDR52)
 
-#define CHK_MMC_HS(sd_card)		(CHK_MMC_52M(sd_card) && \
-					 CHK_MMC_26M(sd_card))
+#define CHK_MMC_HS(sd_card)\
+	({__auto_type _sd = sd_card; CHK_MMC_52M(_sd) && \
+					 CHK_MMC_26M(_sd); })
 #define CLR_MMC_HS(sd_card)			\
 do {						\
 	CLR_MMC_DDR52(sd_card);			\
@@ -560,12 +575,15 @@ struct xd_info {
 #define HG8BIT			(MS_HG | MS_8BIT)
 
 #define CHK_MSPRO(ms_card)	(((ms_card)->ms_type & 0xFF) == TYPE_MSPRO)
-#define CHK_HG8BIT(ms_card)	(CHK_MSPRO(ms_card) && \
-				 (((ms_card)->ms_type & HG8BIT) == HG8BIT))
-#define CHK_MSXC(ms_card)	(CHK_MSPRO(ms_card) && \
-				 ((ms_card)->ms_type & MS_XC))
-#define CHK_MSHG(ms_card)	(CHK_MSPRO(ms_card) && \
-				 ((ms_card)->ms_type & MS_HG))
+#define CHK_HG8BIT(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+		((_ms->ms_type & HG8BIT) == HG8BIT); })
+#define CHK_MSXC(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+				 ((_ms)->ms_type & MS_XC); })
+#define CHK_MSHG(ms_card)\
+	({__auto_type _ms = ms_card; CHK_MSPRO(_ms) && \
+				 ((_ms)->ms_type & MS_HG); })
 
 #define CHK_MS8BIT(ms_card)	(((ms_card)->ms_type & MS_8BIT))
 #define CHK_MS4BIT(ms_card)	(((ms_card)->ms_type & MS_4BIT))
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
