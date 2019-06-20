Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E4F4CD2E
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 13:53:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F82286004;
	Thu, 20 Jun 2019 11:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RfwZNmpPlxZn; Thu, 20 Jun 2019 11:53:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 728FC85FAA;
	Thu, 20 Jun 2019 11:53:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 428B01BF578
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3EE60868B2
 for <devel@linuxdriverproject.org>; Thu, 20 Jun 2019 11:53:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OQcLXg3t9Jj8 for <devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 11:53:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8BE68680D
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 11:53:24 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m30so1536627pff.8
 for <devel@driverdev.osuosl.org>; Thu, 20 Jun 2019 04:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W6y53jPgdeMvOGck1wwTeeCeam80ohdd1tboGcn9RpA=;
 b=AApTGFi9puv+AbOIb6THcG54k56pBm/8cUrjsZMdNzQhEpppCsuq8uThe9g+8ioFxd
 QD8W0yTq/0TrMpC6GWV1SWAK2Q8p94ZdcnnSr7iq2Ye5S//037JJWjMz8co1hoTayVxr
 79lY8RWjlQxWvPxdWJ2U4mV/NsKzGpZfDG9fqOgffc2Qo3GccshLplYmpmC724dPE/9e
 cAqI+G+yKBJgnLRyZi8eJCU77KOfd55yAUEFHdUEarLmDaf6Iu2UTiLk13Ck0AKe6eX2
 4KukYR36bgu0XPnA5YfzUI8rIzTnAchetuM/y8hlaRkojL2WkZ1c6ofWHRkleiG4obtM
 n3TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W6y53jPgdeMvOGck1wwTeeCeam80ohdd1tboGcn9RpA=;
 b=R6IQXoBLFccO1JpMuWQHbpq/+VHDXNS9N0jPC1MlYe3Mf6IVvu/ESTC966RyCCFYFA
 uAvKNH90JnLCLOG+zh0/b4uPxFl9FlLqHnWsiTvnP/pvDm6Jvy4KLLY35CXaf+oNDtOA
 0P7JJVWrX6j+nceVtrokKr/0Hz9O6XcVF5fLSJY69wU5mTrXygE6AWv2zlcpsPpY60cr
 NnO3t/QO5NNLaRSGcr8jz2Mdyv+Py8Z+57dKnY1OR1+hl+ghS8FtJnIbgMYqx/u6i509
 D/8FxZyRY+tVzjQQLfPFS/uvk4f6RhIY5a8MOawnidWoKqjnRuGHUFO9fK2WdE1SMtbH
 VCgQ==
X-Gm-Message-State: APjAAAV0ThGDp1JMgm+siMOD5qxGL2Z9laAbwbJ+C2RWMUKfiAGeYgZq
 RY5XEPNgxPeBCNYKLlhQFhjE3zFL
X-Google-Smtp-Source: APXvYqz1nPpdk1wSLY+IyyIXZNusJifjgopgqZ8eU9nePSMjDyYbaWTIYhKyyk9kGBDSCN84mzDSwQ==
X-Received: by 2002:a63:348:: with SMTP id 69mr7608752pgd.5.1561031604113;
 Thu, 20 Jun 2019 04:53:24 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id c124sm21738079pfa.115.2019.06.20.04.53.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:53:23 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8712: rtl8712_efuse.c: Remove leading p
 from variable names
Date: Thu, 20 Jun 2019 17:22:56 +0530
Message-Id: <20190620115304.3210-2-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190620115304.3210-1-nishkadg.linux@gmail.com>
References: <20190620115304.3210-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove leading 'p' from the name of the pointer variable padapter.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.c | 152 ++++++++++++------------
 1 file changed, 76 insertions(+), 76 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.c b/drivers/staging/rtl8712/rtl8712_efuse.c
index 00babd011a62..4f3b54a7c3be 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.c
+++ b/drivers/staging/rtl8712/rtl8712_efuse.c
@@ -23,7 +23,7 @@
 /* reserve 3 bytes for HW stop read */
 static int efuse_available_max_size = EFUSE_MAX_SIZE - 3 /*0x1FD*/;
 
-static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)
+static void efuse_reg_ctrl(struct _adapter *adapter, u8 bPowerOn)
 {
 	u8 tmpu8 = 0;
 
@@ -31,53 +31,53 @@ static void efuse_reg_ctrl(struct _adapter *padapter, u8 bPowerOn)
 		/* -----------------e-fuse pwr & clk reg ctrl ---------------
 		 * Enable LDOE25 Macro Block
 		 */
-		tmpu8 = r8712_read8(padapter, EFUSE_TEST + 3);
+		tmpu8 = r8712_read8(adapter, EFUSE_TEST + 3);
 		tmpu8 |= 0x80;
-		r8712_write8(padapter, EFUSE_TEST + 3, tmpu8);
+		r8712_write8(adapter, EFUSE_TEST + 3, tmpu8);
 		msleep(20); /* for some platform , need some delay time */
 		/* Change Efuse Clock for write action to 40MHZ */
-		r8712_write8(padapter, EFUSE_CLK_CTRL, 0x03);
+		r8712_write8(adapter, EFUSE_CLK_CTRL, 0x03);
 		msleep(20); /* for some platform , need some delay time */
 	} else {
 		/* -----------------e-fuse pwr & clk reg ctrl -----------------
 		 * Disable LDOE25 Macro Block
 		 */
-		tmpu8 = r8712_read8(padapter, EFUSE_TEST + 3);
+		tmpu8 = r8712_read8(adapter, EFUSE_TEST + 3);
 		tmpu8 &= 0x7F;
-		r8712_write8(padapter, EFUSE_TEST + 3, tmpu8);
+		r8712_write8(adapter, EFUSE_TEST + 3, tmpu8);
 		/* Change Efuse Clock for write action to 500K */
-		r8712_write8(padapter, EFUSE_CLK_CTRL, 0x02);
+		r8712_write8(adapter, EFUSE_CLK_CTRL, 0x02);
 	}
 }
 
 /*
  * Before write E-Fuse, this function must be called.
  */
-u8 r8712_efuse_reg_init(struct _adapter *padapter)
+u8 r8712_efuse_reg_init(struct _adapter *adapter)
 {
 	return true;
 }
 
-void r8712_efuse_reg_uninit(struct _adapter *padapter)
+void r8712_efuse_reg_uninit(struct _adapter *adapter)
 {
-	efuse_reg_ctrl(padapter, false);
+	efuse_reg_ctrl(adapter, false);
 }
 
-static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
+static u8 efuse_one_byte_read(struct _adapter *adapter, u16 addr, u8 *data)
 {
 	u8 tmpidx = 0, bResult;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
-	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
-	r8712_write8(padapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
-	       (r8712_read8(padapter, EFUSE_CTRL + 2) & 0xFC));
-	r8712_write8(padapter, EFUSE_CTRL + 3, 0x72); /* read cmd */
+	r8712_write8(adapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
+	r8712_write8(adapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
+	       (r8712_read8(adapter, EFUSE_CTRL + 2) & 0xFC));
+	r8712_write8(adapter, EFUSE_CTRL + 3, 0x72); /* read cmd */
 	/* wait for complete */
-	while (!(0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+	while (!(0x80 & r8712_read8(adapter, EFUSE_CTRL + 3)) &&
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100) {
-		*data = r8712_read8(padapter, EFUSE_CTRL);
+		*data = r8712_read8(adapter, EFUSE_CTRL);
 		bResult = true;
 	} else {
 		*data = 0xff;
@@ -86,18 +86,18 @@ static u8 efuse_one_byte_read(struct _adapter *padapter, u16 addr, u8 *data)
 	return bResult;
 }
 
-static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
+static u8 efuse_one_byte_write(struct _adapter *adapter, u16 addr, u8 data)
 {
 	u8 tmpidx = 0, bResult;
 
 	/* -----------------e-fuse reg ctrl -------------------------------- */
-	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
-	r8712_write8(padapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
-	       (r8712_read8(padapter, EFUSE_CTRL + 2) & 0xFC));
-	r8712_write8(padapter, EFUSE_CTRL, data); /* data */
-	r8712_write8(padapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
+	r8712_write8(adapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
+	r8712_write8(adapter, EFUSE_CTRL + 2, ((u8)((addr >> 8) & 0x03)) |
+	       (r8712_read8(adapter, EFUSE_CTRL + 2) & 0xFC));
+	r8712_write8(adapter, EFUSE_CTRL, data); /* data */
+	r8712_write8(adapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
 	/* wait for complete */
-	while ((0x80 &  r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+	while ((0x80 &  r8712_read8(adapter, EFUSE_CTRL + 3)) &&
 	       (tmpidx < 100))
 		tmpidx++;
 	if (tmpidx < 100)
@@ -107,32 +107,32 @@ static u8 efuse_one_byte_write(struct _adapter *padapter, u16 addr, u8 data)
 	return bResult;
 }
 
-static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
+static u8 efuse_one_byte_rw(struct _adapter *adapter, u8 bRead, u16 addr,
 			    u8 *data)
 {
 	u8 tmpidx = 0, tmpv8 = 0, bResult;
 
 	/* -----------------e-fuse reg ctrl --------------------------------- */
-	r8712_write8(padapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
+	r8712_write8(adapter, EFUSE_CTRL + 1, (u8)(addr & 0xFF)); /* address */
 	tmpv8 = ((u8)((addr >> 8) & 0x03)) |
-		 (r8712_read8(padapter, EFUSE_CTRL + 2) & 0xFC);
-	r8712_write8(padapter, EFUSE_CTRL + 2, tmpv8);
+		 (r8712_read8(adapter, EFUSE_CTRL + 2) & 0xFC);
+	r8712_write8(adapter, EFUSE_CTRL + 2, tmpv8);
 	if (bRead) {
-		r8712_write8(padapter, EFUSE_CTRL + 3,  0x72); /* read cmd */
-		while (!(0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+		r8712_write8(adapter, EFUSE_CTRL + 3,  0x72); /* read cmd */
+		while (!(0x80 & r8712_read8(adapter, EFUSE_CTRL + 3)) &&
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100) {
-			*data = r8712_read8(padapter, EFUSE_CTRL);
+			*data = r8712_read8(adapter, EFUSE_CTRL);
 			bResult = true;
 		} else {
 			*data = 0;
 			bResult = false;
 		}
 	} else {
-		r8712_write8(padapter, EFUSE_CTRL, *data); /* data */
-		r8712_write8(padapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
-		while ((0x80 & r8712_read8(padapter, EFUSE_CTRL + 3)) &&
+		r8712_write8(adapter, EFUSE_CTRL, *data); /* data */
+		r8712_write8(adapter, EFUSE_CTRL + 3, 0xF2); /* write cmd */
+		while ((0x80 & r8712_read8(adapter, EFUSE_CTRL + 3)) &&
 		       (tmpidx < 100))
 			tmpidx++;
 		if (tmpidx < 100)
@@ -143,12 +143,12 @@ static u8 efuse_one_byte_rw(struct _adapter *padapter, u8 bRead, u16 addr,
 	return bResult;
 }
 
-static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
+static u8 efuse_is_empty(struct _adapter *adapter, u8 *empty)
 {
 	u8 value, ret = true;
 
 	/* read one byte to check if E-Fuse is empty */
-	if (efuse_one_byte_rw(padapter, true, 0, &value)) {
+	if (efuse_one_byte_rw(adapter, true, 0, &value)) {
 		if (value == 0xFF)
 			*empty = true;
 		else
@@ -159,7 +159,7 @@ static u8 efuse_is_empty(struct _adapter *padapter, u8 *empty)
 	return ret;
 }
 
-void r8712_efuse_change_max_size(struct _adapter *padapter)
+void r8712_efuse_change_max_size(struct _adapter *adapter)
 {
 	u16 pre_pg_data_saddr = 0x1FB;
 	u16 i;
@@ -167,7 +167,7 @@ void r8712_efuse_change_max_size(struct _adapter *padapter)
 	u8 pre_pg_data[5];
 
 	for (i = 0; i < pre_pg_data_size; i++)
-		efuse_one_byte_read(padapter, pre_pg_data_saddr + i,
+		efuse_one_byte_read(adapter, pre_pg_data_saddr + i,
 				    &pre_pg_data[i]);
 	if ((pre_pg_data[0] == 0x03) && (pre_pg_data[1] == 0x00) &&
 	    (pre_pg_data[2] == 0x00) && (pre_pg_data[3] == 0x00) &&
@@ -175,7 +175,7 @@ void r8712_efuse_change_max_size(struct _adapter *padapter)
 		efuse_available_max_size -= pre_pg_data_size;
 }
 
-int r8712_efuse_get_max_size(struct _adapter *padapter)
+int r8712_efuse_get_max_size(struct _adapter *adapter)
 {
 	return	efuse_available_max_size;
 }
@@ -206,14 +206,14 @@ static void pgpacket_copy_data(const u8 word_en, const u8 *sourdata,
 	}
 }
 
-u16 r8712_efuse_get_current_size(struct _adapter *padapter)
+u16 r8712_efuse_get_current_size(struct _adapter *adapter)
 {
 	int bContinual = true;
 	u16 efuse_addr = 0;
 	u8 hworden = 0;
 	u8 efuse_data, word_cnts = 0;
 
-	while (bContinual && efuse_one_byte_read(padapter, efuse_addr,
+	while (bContinual && efuse_one_byte_read(adapter, efuse_addr,
 	       &efuse_data) && (efuse_addr < efuse_available_max_size)) {
 		if (efuse_data != 0xFF) {
 			hworden =  efuse_data & 0x0F;
@@ -227,7 +227,7 @@ u16 r8712_efuse_get_current_size(struct _adapter *padapter)
 	return efuse_addr;
 }
 
-u8 r8712_efuse_pg_packet_read(struct _adapter *padapter, u8 offset, u8 *data)
+u8 r8712_efuse_pg_packet_read(struct _adapter *adapter, u8 offset, u8 *data)
 {
 	u8 hoffset = 0, hworden = 0, word_cnts = 0;
 	u16 efuse_addr = 0;
@@ -242,7 +242,7 @@ u8 r8712_efuse_pg_packet_read(struct _adapter *padapter, u8 offset, u8 *data)
 		return false;
 	memset(data, 0xFF, sizeof(u8) * PGPKT_DATA_SIZE);
 	while (efuse_addr < efuse_available_max_size) {
-		if (efuse_one_byte_read(padapter, efuse_addr, &efuse_data)) {
+		if (efuse_one_byte_read(adapter, efuse_addr, &efuse_data)) {
 			if (efuse_data == 0xFF)
 				break;
 			hoffset = (efuse_data >> 4) & 0x0F;
@@ -252,7 +252,7 @@ u8 r8712_efuse_pg_packet_read(struct _adapter *padapter, u8 offset, u8 *data)
 				memset(tmpdata, 0xFF, PGPKT_DATA_SIZE);
 				for (tmpidx = 0; tmpidx < word_cnts * 2;
 				     tmpidx++) {
-					if (efuse_one_byte_read(padapter,
+					if (efuse_one_byte_read(adapter,
 					    efuse_addr + 1 + tmpidx,
 					    &efuse_data)) {
 						tmpdata[tmpidx] = efuse_data;
@@ -271,7 +271,7 @@ u8 r8712_efuse_pg_packet_read(struct _adapter *padapter, u8 offset, u8 *data)
 	return ret;
 }
 
-static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
+static u8 fix_header(struct _adapter *adapter, u8 header, u16 header_addr)
 {
 	struct PGPKT_STRUCT pkt;
 	u8 offset, word_en, value;
@@ -287,7 +287,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 	/* retrieve original data */
 	addr = 0;
 	while (addr < header_addr) {
-		if (!efuse_one_byte_read(padapter, addr++, &value)) {
+		if (!efuse_one_byte_read(adapter, addr++, &value)) {
 			ret = false;
 			break;
 		}
@@ -301,13 +301,13 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 			if (BIT(i) & word_en) {
 				if (BIT(i) & pkt.word_en) {
 					if (efuse_one_byte_read(
-							padapter, addr,
+							adapter, addr,
 							&value))
 						pkt.data[i * 2] = value;
 					else
 						return false;
 					if (efuse_one_byte_read(
-							padapter,
+							adapter,
 							addr + 1,
 							&value))
 						pkt.data[i * 2 + 1] =
@@ -325,24 +325,24 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 	/* fill original data */
 	for (i = 0; i < PGPKG_MAX_WORDS; i++) {
 		if (BIT(i) & pkt.word_en) {
-			efuse_one_byte_write(padapter, addr, pkt.data[i * 2]);
-			efuse_one_byte_write(padapter, addr + 1,
+			efuse_one_byte_write(adapter, addr, pkt.data[i * 2]);
+			efuse_one_byte_write(adapter, addr + 1,
 					     pkt.data[i * 2 + 1]);
 			/* additional check */
-			if (!efuse_one_byte_read(padapter, addr, &value)) {
+			if (!efuse_one_byte_read(adapter, addr, &value)) {
 				ret = false;
 			} else if (pkt.data[i * 2] != value) {
 				ret = false;
 				if (value == 0xFF) /* write again */
-					efuse_one_byte_write(padapter, addr,
+					efuse_one_byte_write(adapter, addr,
 							     pkt.data[i * 2]);
 			}
-			if (!efuse_one_byte_read(padapter, addr + 1, &value)) {
+			if (!efuse_one_byte_read(adapter, addr + 1, &value)) {
 				ret = false;
 			} else if (pkt.data[i * 2 + 1] != value) {
 				ret = false;
 				if (value == 0xFF) /* write again */
-					efuse_one_byte_write(padapter, addr + 1,
+					efuse_one_byte_write(adapter, addr + 1,
 							     pkt.data[i * 2 +
 								      1]);
 			}
@@ -352,7 +352,7 @@ static u8 fix_header(struct _adapter *padapter, u8 header, u16 header_addr)
 	return ret;
 }
 
-u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
+u8 r8712_efuse_pg_packet_write(struct _adapter *adapter, const u8 offset,
 			       const u8 word_en, const u8 *data)
 {
 	u8 pg_header = 0;
@@ -363,7 +363,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	u8 bResult = true;
 
 	/* check if E-Fuse Clock Enable and E-Fuse Clock is 40M */
-	efuse_data = r8712_read8(padapter, EFUSE_CLK_CTRL);
+	efuse_data = r8712_read8(adapter, EFUSE_CLK_CTRL);
 	if (efuse_data != 0x03)
 		return false;
 	pg_header = MAKE_EFUSE_HEADER(offset, word_en);
@@ -371,15 +371,15 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	repeat_times = 0;
 	efuse_addr = 0;
 	while (efuse_addr < efuse_available_max_size) {
-		curr_size = r8712_efuse_get_current_size(padapter);
+		curr_size = r8712_efuse_get_current_size(adapter);
 		if ((curr_size + 1 + target_word_cnts * 2) >
 		     efuse_available_max_size)
 			return false; /*target_word_cnts + pg header(1 byte)*/
 		efuse_addr = curr_size; /* current size is also the last addr*/
-		efuse_one_byte_write(padapter, efuse_addr, pg_header); /*hdr*/
+		efuse_one_byte_write(adapter, efuse_addr, pg_header); /*hdr*/
 		sub_repeat = 0;
 		/* check if what we read is what we write */
-		while (!efuse_one_byte_read(padapter, efuse_addr,
+		while (!efuse_one_byte_read(adapter, efuse_addr,
 					    &efuse_data)) {
 			if (++sub_repeat > _REPEAT_THRESHOLD_) {
 				bResult = false; /* continue to blind write */
@@ -394,10 +394,10 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 			/* go to next address */
 			efuse_addr++;
 			for (i = 0; i < target_word_cnts * 2; i++) {
-				efuse_one_byte_write(padapter,
+				efuse_one_byte_write(adapter,
 						     efuse_addr + i,
 						     *(data + i));
-				if (!efuse_one_byte_read(padapter,
+				if (!efuse_one_byte_read(adapter,
 							 efuse_addr + i,
 							 &efuse_data))
 					bResult = false;
@@ -411,7 +411,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 		if (efuse_data == 0xFF)
 			return bResult; /* nothing damaged. */
 		/* call rescue procedure */
-		if (!fix_header(padapter, efuse_data, efuse_addr))
+		if (!fix_header(adapter, efuse_data, efuse_addr))
 			return false; /* rescue fail */
 
 		if (++repeat_times > _REPEAT_THRESHOLD_) /* fail */
@@ -421,7 +421,7 @@ u8 r8712_efuse_pg_packet_write(struct _adapter *padapter, const u8 offset,
 	return bResult;
 }
 
-u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
+u8 r8712_efuse_access(struct _adapter *adapter, u8 bRead, u16 start_addr,
 		      u16 cnts, u8 *data)
 {
 	int i;
@@ -432,7 +432,7 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 	if (!bRead && ((start_addr + cnts) >
 	   efuse_available_max_size))
 		return false;
-	if (!bRead && !r8712_efuse_reg_init(padapter))
+	if (!bRead && !r8712_efuse_reg_init(adapter))
 		return false;
 	/* -----------------e-fuse one byte read / write ---------------------*/
 	for (i = 0; i < cnts; i++) {
@@ -440,17 +440,17 @@ u8 r8712_efuse_access(struct _adapter *padapter, u8 bRead, u16 start_addr,
 			res = false;
 			break;
 		}
-		res = efuse_one_byte_rw(padapter, bRead, start_addr + i,
+		res = efuse_one_byte_rw(adapter, bRead, start_addr + i,
 					data + i);
 		if (!bRead && !res)
 			break;
 	}
 	if (!bRead)
-		r8712_efuse_reg_uninit(padapter);
+		r8712_efuse_reg_uninit(adapter);
 	return res;
 }
 
-u8 r8712_efuse_map_read(struct _adapter *padapter, u16 addr, u16 cnts, u8 *data)
+u8 r8712_efuse_map_read(struct _adapter *adapter, u16 addr, u16 cnts, u8 *data)
 {
 	u8 offset, ret = true;
 	u8 pktdata[PGPKT_DATA_SIZE];
@@ -458,13 +458,13 @@ u8 r8712_efuse_map_read(struct _adapter *padapter, u16 addr, u16 cnts, u8 *data)
 
 	if ((addr + cnts) > EFUSE_MAP_MAX_SIZE)
 		return false;
-	if (efuse_is_empty(padapter, &offset) && offset) {
+	if (efuse_is_empty(adapter, &offset) && offset) {
 		for (i = 0; i < cnts; i++)
 			data[i] = 0xFF;
 		return ret;
 	}
 	offset = (addr >> 3) & 0xF;
-	ret = r8712_efuse_pg_packet_read(padapter, offset, pktdata);
+	ret = r8712_efuse_pg_packet_read(adapter, offset, pktdata);
 	i = addr & 0x7;	/* pktdata index */
 	idx = 0;	/* data index */
 
@@ -475,14 +475,14 @@ u8 r8712_efuse_map_read(struct _adapter *padapter, u16 addr, u16 cnts, u8 *data)
 				return ret;
 		}
 		offset++;
-		if (!r8712_efuse_pg_packet_read(padapter, offset, pktdata))
+		if (!r8712_efuse_pg_packet_read(adapter, offset, pktdata))
 			ret = false;
 		i = 0;
 	} while (1);
 	return ret;
 }
 
-u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
+u8 r8712_efuse_map_write(struct _adapter *adapter, u16 addr, u16 cnts,
 			 u8 *data)
 {
 	u8 offset, word_en, empty;
@@ -492,10 +492,10 @@ u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
 	if ((addr + cnts) > EFUSE_MAP_MAX_SIZE)
 		return false;
 	/* check if E-Fuse Clock Enable and E-Fuse Clock is 40M */
-	empty = r8712_read8(padapter, EFUSE_CLK_CTRL);
+	empty = r8712_read8(adapter, EFUSE_CLK_CTRL);
 	if (empty != 0x03)
 		return false;
-	if (efuse_is_empty(padapter, &empty)) {
+	if (efuse_is_empty(adapter, &empty)) {
 		if (empty)
 			memset(pktdata, 0xFF, PGPKT_DATA_SIZE);
 	} else {
@@ -503,7 +503,7 @@ u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
 	}
 	offset = (addr >> 3) & 0xF;
 	if (!empty)
-		if (!r8712_efuse_pg_packet_read(padapter, offset, pktdata))
+		if (!r8712_efuse_pg_packet_read(adapter, offset, pktdata))
 			return false;
 	word_en = 0xF;
 	memset(newdata, 0xFF, PGPKT_DATA_SIZE);
@@ -546,14 +546,14 @@ u8 r8712_efuse_map_write(struct _adapter *padapter, u16 addr, u16 cnts,
 		}
 
 		if (word_en != 0xF)
-			if (!r8712_efuse_pg_packet_write(padapter, offset,
+			if (!r8712_efuse_pg_packet_write(adapter, offset,
 							 word_en, newdata))
 				return false;
 		if (idx == cnts)
 			break;
 		offset++;
 		if (!empty)
-			if (!r8712_efuse_pg_packet_read(padapter, offset,
+			if (!r8712_efuse_pg_packet_read(adapter, offset,
 							pktdata))
 				return false;
 		i = 0;
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
