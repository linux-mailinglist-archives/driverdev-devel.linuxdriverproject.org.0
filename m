Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99704383D4
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 07:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98BFF8691B;
	Fri,  7 Jun 2019 05:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NntYI6yHR89i; Fri,  7 Jun 2019 05:42:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91ADF85F96;
	Fri,  7 Jun 2019 05:42:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 60EEF1BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:42:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D6DC87C63
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:42:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F1-GoV073r0j for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 05:42:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 774AD87BCA
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 05:42:50 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id u22so539588pfm.3
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 22:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3B8WmGSn/0t+W/AaXQbnZD7ROvr7AcnbPeFWwVSbIZk=;
 b=ReUTJzYnRh2W3cqszo3LxHC6260rL02MezHBHlx++HQBc5dB/5/GgKvY9vzcM1GLrN
 wUydoiW8T/mW/pi2ynJr6NDuTAxdhrRSIUJ3q0dPLpk0VYdlZkM3G01jYM9cqJThKZHN
 eb59gND1RR7ciTZQK/YL8T6ewfKMCrSoBPqII6mv1yTsl7cZzWA4mHjIpZXtSM1QGC8L
 vqgml2NbfQ3cmm/GgeTDuap/bbKWmpu2Dif5NMe0hL6F/z3PzExnV5DPNwf3QTZpikJv
 MdlWeguVkrbbkrJG71NQZ0taoDJEQCMI3ROdEpaU8WtkISekpw0Dt7fpK1vICQWJyiY/
 f7gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3B8WmGSn/0t+W/AaXQbnZD7ROvr7AcnbPeFWwVSbIZk=;
 b=KAGqvC6/1YAgSWBuF7nefLQOGD/cDZINBmq8RZJVBGHjeSh5Z1CcWBXNyYPwmUEDkt
 bWSDret3/CWqFAWSPjP9k5o8galSGsUuldoscS7SVKWG7c7jKKJEzN4fzwaWcsh14ny6
 HaPJmCaFSqUzrtyOMdabs0BWb5Vgf/oWyicXiOSkS0o6+KA6bInwtz733dC3pnO6MZlm
 FF2yW4mkhAU/qyAybQPHbImG0IY3S0zDrYzEBrjdzgPQSLQEXU3nHPR8BN08lMN3JM85
 UDvny6aC6fVb/vO9tNT7NC5NsgTq6TZ+FEBpMHhMqH1TRaRedzUa+uDCA2cNM3OBatkG
 aTxg==
X-Gm-Message-State: APjAAAWtpOXphKE/PX/9E+4wQjtxCCyJebbmDRjh4lzXepVQDoZzpQUR
 mg1ifh+QciQkBby7+U1YGw0=
X-Google-Smtp-Source: APXvYqwslWtMP8GbwehE/fEgqMd4NTRc7P8vOTQ7rVcB/NpWCQSA1wcugQ4z2Oxz6GsOfxEelAoC1g==
X-Received: by 2002:a63:364f:: with SMTP id d76mr1285556pga.100.1559886169827; 
 Thu, 06 Jun 2019 22:42:49 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id z68sm1055244pfb.37.2019.06.06.22.42.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:42:49 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundatioin.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8712: hal_init.c: Remove leading p from variable
 names
Date: Fri,  7 Jun 2019 11:12:36 +0530
Message-Id: <20190607054236.20756-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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

Remove the leading p from the following pointer variable names:
- padapter
- pusb_intf
- ppmappedfw
- praw
- pfwpriv
- pdvobj
- pregpriv
- pmappedfw (not in the same scope as ppmappedfw)
- ptmpchar
- ppayload
- ptx_desc
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 174 ++++++++++++++---------------
 1 file changed, 87 insertions(+), 87 deletions(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 401f0e442bcf..40145c0338e4 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8712/hal_init.c
@@ -31,21 +31,21 @@
 
 static void rtl871x_load_fw_cb(const struct firmware *firmware, void *context)
 {
-	struct _adapter *padapter = context;
+	struct _adapter *adapter = context;
 
-	complete(&padapter->rtl8712_fw_ready);
+	complete(&adapter->rtl8712_fw_ready);
 	if (!firmware) {
-		struct usb_device *udev = padapter->dvobjpriv.pusbdev;
-		struct usb_interface *pusb_intf = padapter->pusb_intf;
+		struct usb_device *udev = adapter->dvobjpriv.pusbdev;
+		struct usb_interface *usb_intf = adapter->pusb_intf;
 
 		dev_err(&udev->dev, "r8712u: Firmware request failed\n");
 		usb_put_dev(udev);
-		usb_set_intfdata(pusb_intf, NULL);
+		usb_set_intfdata(usb_intf, NULL);
 		return;
 	}
-	padapter->fw = firmware;
+	adapter->fw = firmware;
 	/* firmware available - start netdev */
-	register_netdev(padapter->pnetdev);
+	register_netdev(adapter->pnetdev);
 }
 
 static const char firmware_file[] = "rtlwifi/rtl8712u.bin";
@@ -65,47 +65,47 @@ int rtl871x_load_fw(struct _adapter *padapter)
 }
 MODULE_FIRMWARE("rtlwifi/rtl8712u.bin");
 
-static u32 rtl871x_open_fw(struct _adapter *padapter, const u8 **ppmappedfw)
+static u32 rtl871x_open_fw(struct _adapter *adapter, const u8 **mappedfw)
 {
-	const struct firmware **praw = &padapter->fw;
+	const struct firmware **raw = &adapter->fw;
 
-	if (padapter->fw->size > 200000) {
-		dev_err(&padapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
-			(int)padapter->fw->size);
+	if (adapter->fw->size > 200000) {
+		dev_err(&adapter->pnetdev->dev, "r8172u: Badfw->size of %d\n",
+			(int)adapter->fw->size);
 		return 0;
 	}
-	*ppmappedfw = (*praw)->data;
-	return (*praw)->size;
+	*mappedfw = (*raw)->data;
+	return (*raw)->size;
 }
 
-static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
+static void fill_fwpriv(struct _adapter *adapter, struct fw_priv *fwpriv)
 {
-	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
-	struct registry_priv *pregpriv = &padapter->registrypriv;
+	struct dvobj_priv *dvobj = &adapter->dvobjpriv;
+	struct registry_priv *regpriv = &adapter->registrypriv;
 
-	memset(pfwpriv, 0, sizeof(struct fw_priv));
+	memset(fwpriv, 0, sizeof(struct fw_priv));
 	/* todo: check if needs endian conversion */
-	pfwpriv->hci_sel =  RTL8712_HCI_TYPE_72USB;
-	pfwpriv->usb_ep_num = (u8)pdvobj->nr_endpoint;
-	pfwpriv->bw_40MHz_en = pregpriv->cbw40_enable;
-	switch (pregpriv->rf_config) {
+	fwpriv->hci_sel =  RTL8712_HCI_TYPE_72USB;
+	fwpriv->usb_ep_num = (u8)dvobj->nr_endpoint;
+	fwpriv->bw_40MHz_en = regpriv->cbw40_enable;
+	switch (regpriv->rf_config) {
 	case RTL8712_RF_1T1R:
-		pfwpriv->rf_config = RTL8712_RFC_1T1R;
+		fwpriv->rf_config = RTL8712_RFC_1T1R;
 		break;
 	case RTL8712_RF_2T2R:
-		pfwpriv->rf_config = RTL8712_RFC_2T2R;
+		fwpriv->rf_config = RTL8712_RFC_2T2R;
 		break;
 	case RTL8712_RF_1T2R:
 	default:
-		pfwpriv->rf_config = RTL8712_RFC_1T2R;
+		fwpriv->rf_config = RTL8712_RFC_1T2R;
 	}
-	pfwpriv->mp_mode = (pregpriv->mp_mode == 1) ? 1 : 0;
+	fwpriv->mp_mode = (regpriv->mp_mode == 1) ? 1 : 0;
 	/* 0:off 1:on 2:auto */
-	pfwpriv->vcs_type = pregpriv->vrtl_carrier_sense;
-	pfwpriv->vcs_mode = pregpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
+	fwpriv->vcs_type = regpriv->vrtl_carrier_sense;
+	fwpriv->vcs_mode = regpriv->vcs_type; /* 1:RTS/CTS 2:CTS to self */
 	/* default enable turbo_mode */
-	pfwpriv->turbo_mode = ((pregpriv->wifi_test == 1) ? 0 : 1);
-	pfwpriv->low_power_mode = pregpriv->low_power;
+	fwpriv->turbo_mode = ((regpriv->wifi_test == 1) ? 0 : 1);
+	fwpriv->low_power_mode = regpriv->low_power;
 }
 
 static void update_fwhdr(struct fw_hdr	*pfwhdr, const u8 *pmappedfw)
@@ -141,7 +141,7 @@ static u8 chk_fwhdr(struct fw_hdr *pfwhdr, u32 ulfilelength)
 	return _SUCCESS;
 }
 
-static u8 rtl8712_dl_fw(struct _adapter *padapter)
+static u8 rtl8712_dl_fw(struct _adapter *adapter)
 {
 	sint i;
 	u8 tmp8, tmp8_a;
@@ -150,56 +150,56 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 	uint dump_imem_sz, imem_sz, dump_emem_sz, emem_sz; /* max = 49152; */
 	struct fw_hdr fwhdr;
 	u32 ulfilelength;	/* FW file size */
-	const u8 *pmappedfw = NULL;
-	u8 *ptmpchar = NULL, *ppayload, *ptr;
-	struct tx_desc *ptx_desc;
+	const u8 *mappedfw = NULL;
+	u8 *tmpchar = NULL, *payload, *ptr;
+	struct tx_desc *txdesc;
 	u32 txdscp_sz = sizeof(struct tx_desc);
 	u8 ret = _FAIL;
 
-	ulfilelength = rtl871x_open_fw(padapter, &pmappedfw);
-	if (pmappedfw && (ulfilelength > 0)) {
-		update_fwhdr(&fwhdr, pmappedfw);
+	ulfilelength = rtl871x_open_fw(adapter, &mappedfw);
+	if (mappedfw && (ulfilelength > 0)) {
+		update_fwhdr(&fwhdr, mappedfw);
 		if (chk_fwhdr(&fwhdr, ulfilelength) == _FAIL)
 			return ret;
-		fill_fwpriv(padapter, &fwhdr.fwpriv);
+		fill_fwpriv(adapter, &fwhdr.fwpriv);
 		/* firmware check ok */
 		maxlen = (fwhdr.img_IMEM_size > fwhdr.img_SRAM_size) ?
 			  fwhdr.img_IMEM_size : fwhdr.img_SRAM_size;
 		maxlen += txdscp_sz;
-		ptmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
-		if (!ptmpchar)
+		tmpchar = kmalloc(maxlen + FWBUFF_ALIGN_SZ, GFP_KERNEL);
+		if (!tmpchar)
 			return ret;
 
-		ptx_desc = (struct tx_desc *)(ptmpchar + FWBUFF_ALIGN_SZ -
-			    ((addr_t)(ptmpchar) & (FWBUFF_ALIGN_SZ - 1)));
-		ppayload = (u8 *)(ptx_desc) + txdscp_sz;
-		ptr = (u8 *)pmappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
+		txdesc = (struct tx_desc *)(tmpchar + FWBUFF_ALIGN_SZ -
+			    ((addr_t)(tmpchar) & (FWBUFF_ALIGN_SZ - 1)));
+		payload = (u8 *)(txdesc) + txdscp_sz;
+		ptr = (u8 *)mappedfw + FIELD_OFFSET(struct fw_hdr, fwpriv) +
 		      fwhdr.fw_priv_sz;
 		/* Download FirmWare */
 		/* 1. determine IMEM code size and Load IMEM Code Section */
 		imem_sz = fwhdr.img_IMEM_size;
 		do {
-			memset(ptx_desc, 0, TXDESC_SIZE);
+			memset(txdesc, 0, TXDESC_SIZE);
 			if (imem_sz >  MAX_DUMP_FWSZ/*49152*/) {
 				dump_imem_sz = MAX_DUMP_FWSZ;
 			} else {
 				dump_imem_sz = imem_sz;
-				ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
+				txdesc->txdw0 |= cpu_to_le32(BIT(28));
 			}
-			ptx_desc->txdw0 |= cpu_to_le32(dump_imem_sz &
+			txdesc->txdw0 |= cpu_to_le32(dump_imem_sz &
 						       0x0000ffff);
-			memcpy(ppayload, ptr, dump_imem_sz);
-			r8712_write_mem(padapter, RTL8712_DMA_VOQ,
+			memcpy(payload, ptr, dump_imem_sz);
+			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
 					dump_imem_sz + TXDESC_SIZE,
-					(u8 *)ptx_desc);
+					(u8 *)txdesc);
 			ptr += dump_imem_sz;
 			imem_sz -= dump_imem_sz;
 		} while (imem_sz > 0);
 		i = 10;
-		tmp16 = r8712_read16(padapter, TCR);
+		tmp16 = r8712_read16(adapter, TCR);
 		while (((tmp16 & _IMEM_CODE_DONE) == 0) && (i > 0)) {
 			usleep_range(10, 1000);
-			tmp16 = r8712_read16(padapter, TCR);
+			tmp16 = r8712_read16(adapter, TCR);
 			i--;
 		}
 		if (i == 0 || (tmp16 & _IMEM_CHK_RPT) == 0)
@@ -208,94 +208,94 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 		/* 2.Download EMEM code size and Load EMEM Code Section */
 		emem_sz = fwhdr.img_SRAM_size;
 		do {
-			memset(ptx_desc, 0, TXDESC_SIZE);
+			memset(txdesc, 0, TXDESC_SIZE);
 			if (emem_sz >  MAX_DUMP_FWSZ) { /* max=48k */
 				dump_emem_sz = MAX_DUMP_FWSZ;
 			} else {
 				dump_emem_sz = emem_sz;
-				ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
+				txdesc->txdw0 |= cpu_to_le32(BIT(28));
 			}
-			ptx_desc->txdw0 |= cpu_to_le32(dump_emem_sz &
+			txdesc->txdw0 |= cpu_to_le32(dump_emem_sz &
 						       0x0000ffff);
-			memcpy(ppayload, ptr, dump_emem_sz);
-			r8712_write_mem(padapter, RTL8712_DMA_VOQ,
+			memcpy(payload, ptr, dump_emem_sz);
+			r8712_write_mem(adapter, RTL8712_DMA_VOQ,
 					dump_emem_sz + TXDESC_SIZE,
-					(u8 *)ptx_desc);
+					(u8 *)txdesc);
 			ptr += dump_emem_sz;
 			emem_sz -= dump_emem_sz;
 		} while (emem_sz > 0);
 		i = 5;
-		tmp16 = r8712_read16(padapter, TCR);
+		tmp16 = r8712_read16(adapter, TCR);
 		while (((tmp16 & _EMEM_CODE_DONE) == 0) && (i > 0)) {
 			usleep_range(10, 1000);
-			tmp16 = r8712_read16(padapter, TCR);
+			tmp16 = r8712_read16(adapter, TCR);
 			i--;
 		}
 		if (i == 0 || (tmp16 & _EMEM_CHK_RPT) == 0)
 			goto exit_fail;
 
 		/* 3.Enable CPU */
-		tmp8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, tmp8 | BIT(2));
-		tmp8_a = r8712_read8(padapter, SYS_CLKR);
+		tmp8 = r8712_read8(adapter, SYS_CLKR);
+		r8712_write8(adapter, SYS_CLKR, tmp8 | BIT(2));
+		tmp8_a = r8712_read8(adapter, SYS_CLKR);
 		if (tmp8_a != (tmp8 | BIT(2)))
 			goto exit_fail;
 
-		tmp8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, tmp8 | BIT(2));
-		tmp8_a = r8712_read8(padapter, SYS_FUNC_EN + 1);
+		tmp8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, tmp8 | BIT(2));
+		tmp8_a = r8712_read8(adapter, SYS_FUNC_EN + 1);
 		if (tmp8_a != (tmp8 | BIT(2)))
 			goto exit_fail;
 
-		r8712_read32(padapter, TCR);
+		r8712_read32(adapter, TCR);
 
 		/* 4.polling IMEM Ready */
 		i = 100;
-		tmp16 = r8712_read16(padapter, TCR);
+		tmp16 = r8712_read16(adapter, TCR);
 		while (((tmp16 & _IMEM_RDY) == 0) && (i > 0)) {
 			msleep(20);
-			tmp16 = r8712_read16(padapter, TCR);
+			tmp16 = r8712_read16(adapter, TCR);
 			i--;
 		}
 		if (i == 0) {
-			r8712_write16(padapter, 0x10250348, 0xc000);
-			r8712_write16(padapter, 0x10250348, 0xc001);
-			r8712_write16(padapter, 0x10250348, 0x2000);
-			r8712_write16(padapter, 0x10250348, 0x2001);
-			r8712_write16(padapter, 0x10250348, 0x2002);
-			r8712_write16(padapter, 0x10250348, 0x2003);
+			r8712_write16(adapter, 0x10250348, 0xc000);
+			r8712_write16(adapter, 0x10250348, 0xc001);
+			r8712_write16(adapter, 0x10250348, 0x2000);
+			r8712_write16(adapter, 0x10250348, 0x2001);
+			r8712_write16(adapter, 0x10250348, 0x2002);
+			r8712_write16(adapter, 0x10250348, 0x2003);
 			goto exit_fail;
 		}
 		/* 5.Download DMEM code size and Load EMEM Code Section */
-		memset(ptx_desc, 0, TXDESC_SIZE);
-		ptx_desc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz & 0x0000ffff);
-		ptx_desc->txdw0 |= cpu_to_le32(BIT(28));
-		memcpy(ppayload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
-		r8712_write_mem(padapter, RTL8712_DMA_VOQ,
-				fwhdr.fw_priv_sz + TXDESC_SIZE, (u8 *)ptx_desc);
+		memset(txdesc, 0, TXDESC_SIZE);
+		txdesc->txdw0 |= cpu_to_le32(fwhdr.fw_priv_sz & 0x0000ffff);
+		txdesc->txdw0 |= cpu_to_le32(BIT(28));
+		memcpy(payload, &fwhdr.fwpriv, fwhdr.fw_priv_sz);
+		r8712_write_mem(adapter, RTL8712_DMA_VOQ,
+				fwhdr.fw_priv_sz + TXDESC_SIZE, (u8 *)txdesc);
 
 		/* polling dmem code done */
 		i = 100;
-		tmp16 = r8712_read16(padapter, TCR);
+		tmp16 = r8712_read16(adapter, TCR);
 		while (((tmp16 & _DMEM_CODE_DONE) == 0) && (i > 0)) {
 			msleep(20);
-			tmp16 = r8712_read16(padapter, TCR);
+			tmp16 = r8712_read16(adapter, TCR);
 			i--;
 		}
 		if (i == 0)
 			goto exit_fail;
 
-		tmp8 = r8712_read8(padapter, 0x1025000A);
+		tmp8 = r8712_read8(adapter, 0x1025000A);
 		if (tmp8 & BIT(4)) /* When boot from EEPROM,
 				    * & FW need more time to read EEPROM
 				    */
 			i = 60;
 		else			/* boot from EFUSE */
 			i = 30;
-		tmp16 = r8712_read16(padapter, TCR);
+		tmp16 = r8712_read16(adapter, TCR);
 		while (((tmp16 & _FWRDY) == 0) && (i > 0)) {
 			msleep(100);
-			tmp16 = r8712_read16(padapter, TCR);
+			tmp16 = r8712_read16(adapter, TCR);
 			i--;
 		}
 		if (i == 0)
@@ -306,7 +306,7 @@ static u8 rtl8712_dl_fw(struct _adapter *padapter)
 	ret = _SUCCESS;
 
 exit_fail:
-	kfree(ptmpchar);
+	kfree(tmpchar);
 	return ret;
 }
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
