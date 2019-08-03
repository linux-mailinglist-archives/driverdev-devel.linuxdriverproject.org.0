Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0411980649
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Aug 2019 15:19:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2405B867B9;
	Sat,  3 Aug 2019 13:18:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OkX2WMZo9dmY; Sat,  3 Aug 2019 13:18:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 82A4D8685A;
	Sat,  3 Aug 2019 13:18:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A85091BF30D
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 13:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 97113881AB
 for <devel@linuxdriverproject.org>; Sat,  3 Aug 2019 13:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pyv5WWFeXF6j for <devel@linuxdriverproject.org>;
 Sat,  3 Aug 2019 13:18:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC58A881A8
 for <devel@driverdev.osuosl.org>; Sat,  3 Aug 2019 13:18:49 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q10so37382579pff.9
 for <devel@driverdev.osuosl.org>; Sat, 03 Aug 2019 06:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=aamm2p5I3o3rvHpRcRKUy1hawshFLWN/FyfeKhOj01A=;
 b=ZIJo+5KmonGoSDNIeWi2Gosh6t5rC5a312iVzV9Y5SIdcg3Vy61jPsrwG32tGDSih+
 Sc6OVlyy4LBIA5lAUwr9vWRM04VDsq0M8r9p3drSrY/pe6TzExHGr2NYzl7/LU7fwM1N
 nNsyJKu+MocMvt3x6yJ8WBEnSQF9tTb6vQuHxzpcfqbqUPoIUp45gVOQCl1XlwPi1AlW
 TY0qiqpMrsZMIXUNEMNMKgEC0LzBxsovvzfWPvi1xN/iUelVc6/HNxLTKFoadqMPZodK
 NscPb3XcdW9SCVXnQ+tlPU8oVLKSi+Kymm76zu0+J7zocaDf1wsLL6BD+j6sL6SdMNm5
 RvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=aamm2p5I3o3rvHpRcRKUy1hawshFLWN/FyfeKhOj01A=;
 b=Kg4q/Ym08WMKrNwpy9LWDDRPk0St+UUm64rk2KKUl8ML4FvbQ0en8eNeqR4GC62xgA
 tsKo3sLZiTi213zUB6uTEiL6ni7zK933n+A9KgvQzzjSUSymDeE0syzZ+/haiC8+QOu3
 38bVfb6t+VQ6NT1Y3FQiSNKhAh8SOyb9XAjf1Ih8LZa8KAcstcVYBU93gkY925S4BVfJ
 Y/hmnQESZxGOV/46Fr7p4m6SV5oVp9Ptvt8ftmpgDUmvEQlsRuIh/6g2hr9C1OEhfGxo
 OMlxUyuWEBM1r6ge5OhjKZ0fn8OZpkvHK31304wGyWYAqoYWISVHmoL6ObJ0PxpiymSN
 U+TA==
X-Gm-Message-State: APjAAAXuZqceuZPA63Q2kNGq225Q2F/9R0PvRX2qv85pXw48iqLu8NF0
 Y//0+4f/d3Fun5gcUoFkwdw=
X-Google-Smtp-Source: APXvYqzQwtiiVTsifIWbpRYr8e7s3+G6Kf0+w/VUjAw5hfFVUwRUc8nIN26iBmzhCfkNBz+OUI/t/g==
X-Received: by 2002:a63:ec13:: with SMTP id j19mr47086334pgh.369.1564838328843; 
 Sat, 03 Aug 2019 06:18:48 -0700 (PDT)
Received: from saurav ([123.201.105.117])
 by smtp.gmail.com with ESMTPSA id bg3sm13532875pjb.9.2019.08.03.06.18.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 06:18:48 -0700 (PDT)
Date: Sat, 3 Aug 2019 18:48:42 +0530
From: Saurav Girepunje <saurav.girepunje@gmail.com>
To: Larry.Finger@lwfinger.net;, gregkh@linuxfoundation.org;,
 straube.linux@gmail.com;, saurav.girepunje@gmail.com;,
 bhaskar.kernel@gmail.com;, gustavo@embeddedor.com;,
 devel@driverdev.osuosl.org;, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8188eu: core: add spaces around '-', '+',
 '>>','<<' and '*' in rtw_efuse.c
Message-ID: <20190803131839.GA14077@saurav>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: saurav.girepunje@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around '-', '+', '>>','<<' and '*' to improve readability
and follow kernel coding style.

Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c | 128 ++++++++++-----------
 1 file changed, 64 insertions(+), 64 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index 533ca1ddffb0..02c476f45b33 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -108,7 +108,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	/*  1. Read the first byte to check if efuse is empty!!! */
 	/*  */
 	/*  */
-	rtemp8 = *(phymap+eFuse_Addr);
+	rtemp8 = *(phymap + eFuse_Addr);
 	if (rtemp8 != 0xFF) {
 		efuse_utilized++;
 		eFuse_Addr++;
@@ -124,10 +124,10 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 		/*  Check PG header for section num. */
 		if ((rtemp8 & 0x1F) == 0x0F) {		/* extended header */
 			u1temp = (rtemp8 & 0xE0) >> 5;
-			rtemp8 = *(phymap+eFuse_Addr);
+			rtemp8 = *(phymap + eFuse_Addr);
 			if ((rtemp8 & 0x0F) == 0x0F) {
 				eFuse_Addr++;
-				rtemp8 = *(phymap+eFuse_Addr);
+				rtemp8 = *(phymap + eFuse_Addr);
 
 				if (rtemp8 != 0xFF && (eFuse_Addr < EFUSE_REAL_CONTENT_LEN_88E))
 					eFuse_Addr++;
@@ -147,13 +147,13 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 			for (i = 0; i < EFUSE_MAX_WORD_UNIT; i++) {
 				/*  Check word enable condition in the section */
 				if (!(wren & 0x01)) {
-					rtemp8 = *(phymap+eFuse_Addr);
+					rtemp8 = *(phymap + eFuse_Addr);
 					eFuse_Addr++;
 					efuse_utilized++;
 					eFuseWord[offset][i] = (rtemp8 & 0xff);
 					if (eFuse_Addr >= EFUSE_REAL_CONTENT_LEN_88E)
 						break;
-					rtemp8 = *(phymap+eFuse_Addr);
+					rtemp8 = *(phymap + eFuse_Addr);
 					eFuse_Addr++;
 					efuse_utilized++;
 					eFuseWord[offset][i] |= (((u16)rtemp8 << 8) & 0xff00);
@@ -165,7 +165,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 			}
 		}
 		/*  Read next PG header */
-		rtemp8 = *(phymap+eFuse_Addr);
+		rtemp8 = *(phymap + eFuse_Addr);
 
 		if (rtemp8 != 0xFF && (eFuse_Addr < EFUSE_REAL_CONTENT_LEN_88E)) {
 			efuse_utilized++;
@@ -178,8 +178,8 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	/*  */
 	for (i = 0; i < EFUSE_MAX_SECTION_88E; i++) {
 		for (j = 0; j < EFUSE_MAX_WORD_UNIT; j++) {
-			efuseTbl[(i*8)+(j*2)] = (eFuseWord[i][j] & 0xff);
-			efuseTbl[(i*8)+((j*2)+1)] = ((eFuseWord[i][j] >> 8) & 0xff);
+			efuseTbl[(i * 8) + (j * 2)] = (eFuseWord[i][j] & 0xff);
+			efuseTbl[(i * 8) + ((j * 2) + 1)] = ((eFuseWord[i][j] >> 8) & 0xff);
 		}
 	}
 
@@ -187,7 +187,7 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 	/*  4. Copy from Efuse map to output pointer memory!!! */
 	/*  */
 	for (i = 0; i < _size_byte; i++)
-		pbuf[i] = efuseTbl[_offset+i];
+		pbuf[i] = efuseTbl[_offset + i];
 
 	/*  */
 	/*  5. Calculate Efuse utilization. */
@@ -218,16 +218,16 @@ static void efuse_read_phymap_from_txpktbuf(
 	u8 *pos = content;
 
 	if (bcnhead < 0) /* if not valid */
-		bcnhead = usb_read8(adapter, REG_TDECTRL+1);
+		bcnhead = usb_read8(adapter, REG_TDECTRL + 1);
 
 	DBG_88E("%s bcnhead:%d\n", __func__, bcnhead);
 
 	usb_write8(adapter, REG_PKT_BUFF_ACCESS_CTRL, TXPKT_BUF_SELECT);
 
-	dbg_addr = bcnhead*128/8; /* 8-bytes addressing */
+	dbg_addr = bcnhead * 128 / 8; /* 8-bytes addressing */
 
 	while (1) {
-		usb_write16(adapter, REG_PKTBUF_DBG_ADDR, dbg_addr+i);
+		usb_write16(adapter, REG_PKTBUF_DBG_ADDR, dbg_addr + i);
 
 		usb_write8(adapter, REG_TXPKTBUF_DBG, 0);
 		start = jiffies;
@@ -246,34 +246,34 @@ static void efuse_read_phymap_from_txpktbuf(
 			u16 aaa;
 
 			lenc[0] = usb_read8(adapter, REG_PKTBUF_DBG_DATA_L);
-			lenc[1] = usb_read8(adapter, REG_PKTBUF_DBG_DATA_L+1);
+			lenc[1] = usb_read8(adapter, REG_PKTBUF_DBG_DATA_L + 1);
 
 			aaabak = le16_to_cpup((__le16 *)lenc);
 			lenbak = le16_to_cpu(*((__le16 *)lenc));
 			aaa = le16_to_cpup((__le16 *)&lo32);
 			len = le16_to_cpu(*((__le16 *)&lo32));
 
-			limit = min_t(u16, len-2, limit);
+			limit = min_t(u16, len - 2, limit);
 
 			DBG_88E("%s len:%u, lenbak:%u, aaa:%u, aaabak:%u\n", __func__, len, lenbak, aaa, aaabak);
 
-			memcpy(pos, ((u8 *)&lo32)+2, (limit >= count+2) ? 2 : limit-count);
-			count += (limit >= count+2) ? 2 : limit-count;
-			pos = content+count;
+			memcpy(pos, ((u8 *)&lo32) + 2, (limit >= count + 2) ? 2 : limit - count);
+			count += (limit >= count + 2) ? 2 : limit - count;
+			pos = content + count;
 
 		} else {
-			memcpy(pos, ((u8 *)&lo32), (limit >= count+4) ? 4 : limit-count);
-			count += (limit >= count+4) ? 4 : limit-count;
-			pos = content+count;
+			memcpy(pos, ((u8 *)&lo32), (limit >= count + 4) ? 4 : limit - count);
+			count += (limit >= count + 4) ? 4 : limit - count;
+			pos = content + count;
 		}
 
-		if (limit > count && len-2 > count) {
-			memcpy(pos, (u8 *)&hi32, (limit >= count+4) ? 4 : limit-count);
-			count += (limit >= count+4) ? 4 : limit-count;
-			pos = content+count;
+		if (limit > count && len - 2 > count) {
+			memcpy(pos, (u8 *)&hi32, (limit >= count + 4) ? 4 : limit - count);
+			count += (limit >= count + 4) ? 4 : limit - count;
+			pos = content + count;
 		}
 
-		if (limit <= count || len-2 <= count)
+		if (limit <= count || len - 2 <= count)
 			break;
 		i++;
 	}
@@ -288,7 +288,7 @@ static s32 iol_read_efuse(struct adapter *padapter, u8 txpktbuf_bndy, u16 offset
 	u8 physical_map[512];
 	u16 size = 512;
 
-	usb_write8(padapter, REG_TDECTRL+1, txpktbuf_bndy);
+	usb_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
 	memset(physical_map, 0xFF, 512);
 	usb_write8(padapter, REG_PKT_BUFF_ACCESS_CTRL, TXPKT_BUF_SELECT);
 	status = iol_execute(padapter, CMD_READ_EFUSE_MAP);
@@ -323,7 +323,7 @@ u8 Efuse_WordEnableDataWrite(struct adapter *pAdapter, u16 efuse_addr, u8 word_e
 		efuse_OneByteWrite(pAdapter, start_addr++, data[1]);
 
 		efuse_OneByteRead(pAdapter, tmpaddr, &tmpdata[0]);
-		efuse_OneByteRead(pAdapter, tmpaddr+1, &tmpdata[1]);
+		efuse_OneByteRead(pAdapter, tmpaddr + 1, &tmpdata[1]);
 		if ((data[0] != tmpdata[0]) || (data[1] != tmpdata[1]))
 			badworden &= (~BIT(0));
 	}
@@ -333,7 +333,7 @@ u8 Efuse_WordEnableDataWrite(struct adapter *pAdapter, u16 efuse_addr, u8 word_e
 		efuse_OneByteWrite(pAdapter, start_addr++, data[3]);
 
 		efuse_OneByteRead(pAdapter, tmpaddr, &tmpdata[2]);
-		efuse_OneByteRead(pAdapter, tmpaddr+1, &tmpdata[3]);
+		efuse_OneByteRead(pAdapter, tmpaddr + 1, &tmpdata[3]);
 		if ((data[2] != tmpdata[2]) || (data[3] != tmpdata[3]))
 			badworden &= (~BIT(1));
 	}
@@ -343,7 +343,7 @@ u8 Efuse_WordEnableDataWrite(struct adapter *pAdapter, u16 efuse_addr, u8 word_e
 		efuse_OneByteWrite(pAdapter, start_addr++, data[5]);
 
 		efuse_OneByteRead(pAdapter, tmpaddr, &tmpdata[4]);
-		efuse_OneByteRead(pAdapter, tmpaddr+1, &tmpdata[5]);
+		efuse_OneByteRead(pAdapter, tmpaddr + 1, &tmpdata[5]);
 		if ((data[4] != tmpdata[4]) || (data[5] != tmpdata[5]))
 			badworden &= (~BIT(2));
 	}
@@ -353,7 +353,7 @@ u8 Efuse_WordEnableDataWrite(struct adapter *pAdapter, u16 efuse_addr, u8 word_e
 		efuse_OneByteWrite(pAdapter, start_addr++, data[7]);
 
 		efuse_OneByteRead(pAdapter, tmpaddr, &tmpdata[6]);
-		efuse_OneByteRead(pAdapter, tmpaddr+1, &tmpdata[7]);
+		efuse_OneByteRead(pAdapter, tmpaddr + 1, &tmpdata[7]);
 		if ((data[6] != tmpdata[6]) || (data[7] != tmpdata[7]))
 			badworden &= (~BIT(3));
 	}
@@ -371,7 +371,7 @@ static u16 Efuse_GetCurrentSize(struct adapter *pAdapter)
 	while (efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data) &&
 	       AVAILABLE_EFUSE_ADDR(efuse_addr)) {
 		if (efuse_data != 0xFF) {
-			if ((efuse_data&0x1F) == 0x0F) {		/* extended header */
+			if ((efuse_data & 0x1F) == 0x0F) {		/* extended header */
 				hoffset = efuse_data;
 				efuse_addr++;
 				efuse_OneByteRead(pAdapter, efuse_addr, &efuse_data);
@@ -383,12 +383,12 @@ static u16 Efuse_GetCurrentSize(struct adapter *pAdapter)
 					hworden = efuse_data & 0x0F;
 				}
 			} else {
-				hoffset = (efuse_data>>4) & 0x0F;
+				hoffset = (efuse_data >> 4) & 0x0F;
 				hworden =  efuse_data & 0x0F;
 			}
 			word_cnts = Efuse_CalculateWordCnts(hworden);
 			/* read next header */
-			efuse_addr = efuse_addr + (word_cnts*2)+1;
+			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 		} else {
 			break;
 		}
@@ -439,15 +439,15 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 						continue;
 					}
 				} else {
-					hoffset = (efuse_data>>4) & 0x0F;
+					hoffset = (efuse_data >> 4) & 0x0F;
 					hworden =  efuse_data & 0x0F;
 				}
 				word_cnts = Efuse_CalculateWordCnts(hworden);
 				bDataEmpty = true;
 
 				if (hoffset == offset) {
-					for (tmpidx = 0; tmpidx < word_cnts*2; tmpidx++) {
-						if (efuse_OneByteRead(pAdapter, efuse_addr+1+tmpidx, &efuse_data)) {
+					for (tmpidx = 0; tmpidx < word_cnts * 2; tmpidx++) {
+						if (efuse_OneByteRead(pAdapter, efuse_addr + 1 + tmpidx, &efuse_data)) {
 							tmpdata[tmpidx] = efuse_data;
 							if (efuse_data != 0xff)
 								bDataEmpty = false;
@@ -456,11 +456,11 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 					if (!bDataEmpty) {
 						ReadState = PG_STATE_DATA;
 					} else {/* read next header */
-						efuse_addr = efuse_addr + (word_cnts*2)+1;
+						efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 						ReadState = PG_STATE_HEADER;
 					}
 				} else {/* read next header */
-					efuse_addr = efuse_addr + (word_cnts*2)+1;
+					efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 					ReadState = PG_STATE_HEADER;
 				}
 			} else {
@@ -469,7 +469,7 @@ int Efuse_PgPacketRead(struct adapter *pAdapter, u8 offset, u8 *data)
 		} else if (ReadState & PG_STATE_DATA) {
 			/*   Data section Read ------------- */
 			efuse_WordEnableDataRead(hworden, tmpdata, data);
-			efuse_addr = efuse_addr + (word_cnts*2)+1;
+			efuse_addr = efuse_addr + (word_cnts * 2) + 1;
 			ReadState = PG_STATE_HEADER;
 		}
 	}
@@ -491,7 +491,7 @@ static bool hal_EfuseFixHeaderProcess(struct adapter *pAdapter, u8 efuseType, st
 
 	if (Efuse_PgPacketRead(pAdapter, pFixPkt->offset, originaldata)) {
 		/* check if data exist */
-		badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr+1, pFixPkt->word_en, originaldata);
+		badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr + 1, pFixPkt->word_en, originaldata);
 
 		if (badworden != 0xf) {	/*  write fail */
 			PgWriteSuccess = Efuse_PgPacketWrite(pAdapter, pFixPkt->offset, badworden, originaldata);
@@ -501,10 +501,10 @@ static bool hal_EfuseFixHeaderProcess(struct adapter *pAdapter, u8 efuseType, st
 			else
 				efuse_addr = Efuse_GetCurrentSize(pAdapter);
 		} else {
-			efuse_addr = efuse_addr + (pFixPkt->word_cnts*2) + 1;
+			efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
 		}
 	} else {
-		efuse_addr = efuse_addr + (pFixPkt->word_cnts*2) + 1;
+		efuse_addr = efuse_addr + (pFixPkt->word_cnts * 2) + 1;
 	}
 	*pAddr = efuse_addr;
 	return true;
@@ -601,7 +601,7 @@ static bool hal_EfusePgPacketWrite1ByteHeader(struct adapter *pAdapter, u8 efuse
 	} else {
 		struct pgpkt	fixPkt;
 
-		fixPkt.offset = (tmp_header>>4) & 0x0F;
+		fixPkt.offset = (tmp_header >> 4) & 0x0F;
 		fixPkt.word_en = tmp_header & 0x0F;
 		fixPkt.word_cnts = Efuse_CalculateWordCnts(fixPkt.word_en);
 		if (!hal_EfuseFixHeaderProcess(pAdapter, efuseType, &fixPkt, &efuse_addr))
@@ -619,7 +619,7 @@ static bool hal_EfusePgPacketWriteData(struct adapter *pAdapter, u8 efuseType, u
 	u32	PgWriteSuccess = 0;
 
 	badworden = 0x0f;
-	badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr+1, pTargetPkt->word_en, pTargetPkt->data);
+	badworden = Efuse_WordEnableDataWrite(pAdapter, efuse_addr + 1, pTargetPkt->word_en, pTargetPkt->data);
 	if (badworden == 0x0F) {
 		/*  write ok */
 		return true;
@@ -681,8 +681,8 @@ static bool hal_EfuseCheckIfDatafollowed(struct adapter *pAdapter, u8 word_cnts,
 	bool ret = false;
 	u8 i, efuse_data;
 
-	for (i = 0; i < (word_cnts*2); i++) {
-		if (efuse_OneByteRead(pAdapter, (startAddr+i), &efuse_data) && (efuse_data != 0xFF))
+	for (i = 0; i < (word_cnts * 2); i++) {
+		if (efuse_OneByteRead(pAdapter, (startAddr + i), &efuse_data) && (efuse_data != 0xFF))
 			ret = true;
 	}
 	return ret;
@@ -721,7 +721,7 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 				}
 			} else {
 				cur_header  =  efuse_data;
-				curPkt.offset = (cur_header>>4) & 0x0F;
+				curPkt.offset = (cur_header >> 4) & 0x0F;
 				curPkt.word_en = cur_header & 0x0F;
 			}
 
@@ -729,10 +729,10 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 			/*  if same header is found but no data followed */
 			/*  write some part of data followed by the header. */
 			if ((curPkt.offset == pTargetPkt->offset) &&
-			    (!hal_EfuseCheckIfDatafollowed(pAdapter, curPkt.word_cnts, startAddr+1)) &&
+			    (!hal_EfuseCheckIfDatafollowed(pAdapter, curPkt.word_cnts, startAddr + 1)) &&
 			    wordEnMatched(pTargetPkt, &curPkt, &matched_wden)) {
 				/*  Here to write partial data */
-				badworden = Efuse_WordEnableDataWrite(pAdapter, startAddr+1, matched_wden, pTargetPkt->data);
+				badworden = Efuse_WordEnableDataWrite(pAdapter, startAddr + 1, matched_wden, pTargetPkt->data);
 				if (badworden != 0x0F) {
 					u32	PgWriteSuccess = 0;
 					/*  if write fail on some words, write these bad words again */
@@ -746,13 +746,13 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 				}
 				/*  partial write ok, update the target packet for later use */
 				for (i = 0; i < 4; i++) {
-					if ((matched_wden & (0x1<<i)) == 0)	/*  this word has been written */
-						pTargetPkt->word_en |= (0x1<<i);	/*  disable the word */
+					if ((matched_wden & (0x1 << i)) == 0)	/*  this word has been written */
+						pTargetPkt->word_en |= (0x1 << i);	/*  disable the word */
 				}
 				pTargetPkt->word_cnts = Efuse_CalculateWordCnts(pTargetPkt->word_en);
 			}
 			/*  read from next header */
-			startAddr = startAddr + (curPkt.word_cnts*2) + 1;
+			startAddr = startAddr + (curPkt.word_cnts * 2) + 1;
 		} else {
 			/*  not used header, 0xff */
 			*pAddr = startAddr;
@@ -765,7 +765,7 @@ static bool hal_EfusePartialWriteCheck(struct adapter *pAdapter, u8 efuseType, u
 
 static void hal_EfuseConstructPGPkt(u8 offset, u8 word_en, u8 *pData, struct pgpkt *pTargetPkt)
 {
-	memset((void *)pTargetPkt->data, 0xFF, sizeof(u8)*8);
+	memset((void *)pTargetPkt->data, 0xFF, sizeof(u8) * 8);
 	pTargetPkt->offset = offset;
 	pTargetPkt->word_en = word_en;
 	efuse_WordEnableDataRead(word_en, pData, pTargetPkt->data);
@@ -815,13 +815,13 @@ u8 efuse_OneByteRead(struct adapter *pAdapter, u16 addr, u8 *data)
 	u8 tmpidx = 0;
 	u8 result;
 
-	usb_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr & 0xff));
-	usb_write8(pAdapter, EFUSE_CTRL+2, ((u8)((addr>>8) & 0x03)) |
-		   (usb_read8(pAdapter, EFUSE_CTRL+2) & 0xFC));
+	usb_write8(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
+	usb_write8(pAdapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
+		   (usb_read8(pAdapter, EFUSE_CTRL + 2) & 0xFC));
 
-	usb_write8(pAdapter, EFUSE_CTRL+3,  0x72);/* read cmd */
+	usb_write8(pAdapter, EFUSE_CTRL + 3,  0x72);/* read cmd */
 
-	while (!(0x80 & usb_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx < 100))
+	while (!(0x80 & usb_read8(pAdapter, EFUSE_CTRL + 3)) && (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100) {
 		*data = usb_read8(pAdapter, EFUSE_CTRL);
@@ -838,15 +838,15 @@ u8 efuse_OneByteWrite(struct adapter *pAdapter, u16 addr, u8 data)
 	u8 tmpidx = 0;
 	u8 result;
 
-	usb_write8(pAdapter, EFUSE_CTRL+1, (u8)(addr&0xff));
-	usb_write8(pAdapter, EFUSE_CTRL+2,
-		   (usb_read8(pAdapter, EFUSE_CTRL+2) & 0xFC) |
-		   (u8)((addr>>8) & 0x03));
+	usb_write8(pAdapter, EFUSE_CTRL + 1, (u8)(addr & 0xff));
+	usb_write8(pAdapter, EFUSE_CTRL + 2,
+		   (usb_read8(pAdapter, EFUSE_CTRL + 2) & 0xFC) |
+		   (u8)((addr >> 8) & 0x03));
 	usb_write8(pAdapter, EFUSE_CTRL, data);/* data */
 
-	usb_write8(pAdapter, EFUSE_CTRL+3, 0xF2);/* write cmd */
+	usb_write8(pAdapter, EFUSE_CTRL + 3, 0xF2);/* write cmd */
 
-	while ((0x80 &  usb_read8(pAdapter, EFUSE_CTRL+3)) && (tmpidx < 100))
+	while ((0x80 &  usb_read8(pAdapter, EFUSE_CTRL + 3)) && (tmpidx < 100))
 		tmpidx++;
 
 	if (tmpidx < 100)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
