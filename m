Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A428D383EC
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 07:52:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAD0386A26;
	Fri,  7 Jun 2019 05:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8c1k0HzVyJnH; Fri,  7 Jun 2019 05:52:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE9EF8693D;
	Fri,  7 Jun 2019 05:52:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3631E1BF2C1
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 335D3861A3
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 05:52:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4lmhvWjh2dWL for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 05:52:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB4C586194
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 05:52:40 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id m30so30482pff.8
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 22:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qhiwKWVpErEOicj2+HYTIqwvheWT0F6BKl1sqQ0pm9E=;
 b=ofjDY2J6BOmrpJwAcjCd/GVYIzWyU0Kmhmcmfh6Qrw4dx27su/ucFvekUt3FfXcQId
 A7dRKrCFIyeueFXL6HTqz8cQ+rHiv+oCUAMICZina4pzB/FnMZyUZx6qeU8FBvmZs0NN
 0YNiG37l2HC6eWlTZAydI+wNpluzxjIvCyqsf4mdZw9/52MLVstGcFZracAsA0R3zIc8
 NAekqyLO4DuQcwAv/X1IWQUWPBpaFPbSoRYkCwvxAkD2SbjPAIm+anEttH+NwfP/+aNZ
 y8cquzJuw9cvEEOIjPzKYGRIvf/1cxthB03KZWmZpT6LpYBpYZiQrfcoeRIe5RBLxCGD
 tAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qhiwKWVpErEOicj2+HYTIqwvheWT0F6BKl1sqQ0pm9E=;
 b=TsFN4fREDrxxyLxVOjRlApcT0tSvxIKbP0dQxBzRKfsAjMZeSr5tvDWo5+gPlieUiV
 5kbojl6W9jFy/kn8bgd/KQnww5qPn0VfANU/3Z8R+rgT+/Jh5Pst+zX2PqA0zty/Fo2b
 xF/Jt/6cJ/orq7LVgOwTCP5ysAoisk9J2D5KQ2VHOuuEm4n4iDFFkAgq6fd2hE2l7Fo4
 a0U5cWzg89xwZVoLfNsC6HgbU9h0aUPw82ndR+/cx0ALVsdAHRLxDKMHaR3sc8Um3wtG
 wXwWvFOI8ATxPhSPpJUiuiauxRwcNFfRlntCARm1Jh/E/gUS9bO92kF/HoN4hLwUyCXD
 casQ==
X-Gm-Message-State: APjAAAV0G9GRICxpR3IwIJxrmSOdxv060kpguS1JA1FIesiU+JmBLXwT
 emZn9bofzcNWGDlN/UFPKMw=
X-Google-Smtp-Source: APXvYqwhnpetVWp399Xknzm3Shdp9ZTLO2dc37flKGXGea96dk4alPGLEllQ1Wls28ePPxYAuqZIGA==
X-Received: by 2002:a63:6fce:: with SMTP id k197mr1313914pgc.140.1559886759958; 
 Thu, 06 Jun 2019 22:52:39 -0700 (PDT)
Received: from localhost.localdomain ([110.227.95.145])
 by smtp.gmail.com with ESMTPSA id d9sm861740pgl.20.2019.06.06.22.52.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:52:39 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
 gregkh@linuxfoundation.org, straube.linux@gmail.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] staging: rtl8712: usb_halinit.c: Remove p from variable
 names
Date: Fri,  7 Jun 2019 11:22:09 +0530
Message-Id: <20190607055209.20954-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190607055209.20954-1-nishkadg.linux@gmail.com>
References: <20190607055209.20954-1-nishkadg.linux@gmail.com>
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

Remove leading 'p' from the names of the following pointer variables:
    - padapter
    - precvbuf
    - pintfhdl
    - pregistrypriv
    - precvpriv.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8712/usb_halinit.c | 288 +++++++++++++-------------
 1 file changed, 144 insertions(+), 144 deletions(-)

diff --git a/drivers/staging/rtl8712/usb_halinit.c b/drivers/staging/rtl8712/usb_halinit.c
index 02e73c2412d4..6cc4a704c3a0 100644
--- a/drivers/staging/rtl8712/usb_halinit.c
+++ b/drivers/staging/rtl8712/usb_halinit.c
@@ -21,258 +21,258 @@
 #include "usb_ops.h"
 #include "usb_osintf.h"
 
-u8 r8712_usb_hal_bus_init(struct _adapter *padapter)
+u8 r8712_usb_hal_bus_init(struct _adapter *adapter)
 {
 	u8 val8 = 0;
 	u8 ret = _SUCCESS;
 	int PollingCnt = 20;
-	struct registry_priv *pregistrypriv = &padapter->registrypriv;
+	struct registry_priv *registrypriv = &adapter->registrypriv;
 
-	if (pregistrypriv->chip_version == RTL8712_FPGA) {
+	if (registrypriv->chip_version == RTL8712_FPGA) {
 		val8 = 0x01;
 		/* switch to 80M clock */
-		r8712_write8(padapter, SYS_CLKR, val8);
-		val8 = r8712_read8(padapter, SPS1_CTRL);
+		r8712_write8(adapter, SYS_CLKR, val8);
+		val8 = r8712_read8(adapter, SPS1_CTRL);
 		val8 = val8 | 0x01;
 		/* enable VSPS12 LDO Macro block */
-		r8712_write8(padapter, SPS1_CTRL, val8);
-		val8 = r8712_read8(padapter, AFE_MISC);
+		r8712_write8(adapter, SPS1_CTRL, val8);
+		val8 = r8712_read8(adapter, AFE_MISC);
 		val8 = val8 | 0x01;
 		/* Enable AFE Macro Block's Bandgap */
-		r8712_write8(padapter, AFE_MISC, val8);
-		val8 = r8712_read8(padapter, LDOA15_CTRL);
+		r8712_write8(adapter, AFE_MISC, val8);
+		val8 = r8712_read8(adapter, LDOA15_CTRL);
 		val8 = val8 | 0x01;
 		/* enable LDOA15 block */
-		r8712_write8(padapter, LDOA15_CTRL, val8);
-		val8 = r8712_read8(padapter, SPS1_CTRL);
+		r8712_write8(adapter, LDOA15_CTRL, val8);
+		val8 = r8712_read8(adapter, SPS1_CTRL);
 		val8 = val8 | 0x02;
 		/* Enable VSPS12_SW Macro Block */
-		r8712_write8(padapter, SPS1_CTRL, val8);
-		val8 = r8712_read8(padapter, AFE_MISC);
+		r8712_write8(adapter, SPS1_CTRL, val8);
+		val8 = r8712_read8(adapter, AFE_MISC);
 		val8 = val8 | 0x02;
 		/* Enable AFE Macro Block's Mbias */
-		r8712_write8(padapter, AFE_MISC, val8);
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, AFE_MISC, val8);
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
 		val8 = val8 | 0x08;
 		/* isolate PCIe Analog 1.2V to PCIe 3.3V and PCIE Digital */
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, val8);
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
 		val8 = val8 & 0xEF;
 		/* attatch AFE PLL to MACTOP/BB/PCIe Digital */
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, val8);
-		val8 = r8712_read8(padapter, AFE_XTAL_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, val8);
+		val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
 		val8 = val8 & 0xFB;
 		/* enable AFE clock */
-		r8712_write8(padapter, AFE_XTAL_CTRL + 1, val8);
-		val8 = r8712_read8(padapter, AFE_PLL_CTRL);
+		r8712_write8(adapter, AFE_XTAL_CTRL + 1, val8);
+		val8 = r8712_read8(adapter, AFE_PLL_CTRL);
 		val8 = val8 | 0x01;
 		/* Enable AFE PLL Macro Block */
-		r8712_write8(padapter, AFE_PLL_CTRL, val8);
+		r8712_write8(adapter, AFE_PLL_CTRL, val8);
 		val8 = 0xEE;
 		/* release isolation AFE PLL & MD */
-		r8712_write8(padapter, SYS_ISO_CTRL, val8);
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL, val8);
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
 		val8 = val8 | 0x08;
 		/* enable MAC clock */
-		r8712_write8(padapter, SYS_CLKR + 1, val8);
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_CLKR + 1, val8);
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
 		val8 = val8 | 0x08;
 		/* enable Core digital and enable IOREG R/W */
-		r8712_write8(padapter, SYS_FUNC_EN + 1, val8);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
 		val8 = val8 | 0x80;
 		/* enable REG_EN */
-		r8712_write8(padapter, SYS_FUNC_EN + 1, val8);
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
 		val8 = (val8 | 0x80) & 0xBF;
 		/* switch the control path */
-		r8712_write8(padapter, SYS_CLKR + 1, val8);
+		r8712_write8(adapter, SYS_CLKR + 1, val8);
 		val8 = 0xFC;
-		r8712_write8(padapter, CR, val8);
+		r8712_write8(adapter, CR, val8);
 		val8 = 0x37;
-		r8712_write8(padapter, CR + 1, val8);
+		r8712_write8(adapter, CR + 1, val8);
 		/* reduce EndPoint & init it */
-		r8712_write8(padapter, 0x102500ab, r8712_read8(padapter,
+		r8712_write8(adapter, 0x102500ab, r8712_read8(adapter,
 			     0x102500ab) | BIT(6) | BIT(7));
 		/* consideration of power consumption - init */
-		r8712_write8(padapter, 0x10250008, r8712_read8(padapter,
+		r8712_write8(adapter, 0x10250008, r8712_read8(adapter,
 			     0x10250008) & 0xfffffffb);
-	} else if (pregistrypriv->chip_version == RTL8712_1stCUT) {
+	} else if (registrypriv->chip_version == RTL8712_1stCUT) {
 		/* Initialization for power on sequence, */
-		r8712_write8(padapter, SPS0_CTRL + 1, 0x53);
-		r8712_write8(padapter, SPS0_CTRL, 0x57);
+		r8712_write8(adapter, SPS0_CTRL + 1, 0x53);
+		r8712_write8(adapter, SPS0_CTRL, 0x57);
 		/* Enable AFE Macro Block's Bandgap and Enable AFE Macro
 		 * Block's Mbias
 		 */
-		val8 = r8712_read8(padapter, AFE_MISC);
-		r8712_write8(padapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
+		val8 = r8712_read8(adapter, AFE_MISC);
+		r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
 			     AFE_MISC_MBEN));
 		/* Enable LDOA15 block */
-		val8 = r8712_read8(padapter, LDOA15_CTRL);
-		r8712_write8(padapter, LDOA15_CTRL, (val8 | LDA15_EN));
-		val8 = r8712_read8(padapter, SPS1_CTRL);
-		r8712_write8(padapter, SPS1_CTRL, (val8 | SPS1_LDEN));
+		val8 = r8712_read8(adapter, LDOA15_CTRL);
+		r8712_write8(adapter, LDOA15_CTRL, (val8 | LDA15_EN));
+		val8 = r8712_read8(adapter, SPS1_CTRL);
+		r8712_write8(adapter, SPS1_CTRL, (val8 | SPS1_LDEN));
 		msleep(20);
 		/* Enable Switch Regulator Block */
-		val8 = r8712_read8(padapter, SPS1_CTRL);
-		r8712_write8(padapter, SPS1_CTRL, (val8 | SPS1_SWEN));
-		r8712_write32(padapter, SPS1_CTRL, 0x00a7b267);
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
+		val8 = r8712_read8(adapter, SPS1_CTRL);
+		r8712_write8(adapter, SPS1_CTRL, (val8 | SPS1_SWEN));
+		r8712_write32(adapter, SPS1_CTRL, 0x00a7b267);
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
 		/* Engineer Packet CP test Enable */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x20));
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, (val8 & 0x6F));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 & 0x6F));
 		/* Enable AFE clock */
-		val8 = r8712_read8(padapter, AFE_XTAL_CTRL + 1);
-		r8712_write8(padapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
+		val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
+		r8712_write8(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
 		/* Enable AFE PLL Macro Block */
-		val8 = r8712_read8(padapter, AFE_PLL_CTRL);
-		r8712_write8(padapter, AFE_PLL_CTRL, (val8 | 0x11));
+		val8 = r8712_read8(adapter, AFE_PLL_CTRL);
+		r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));
 		/* Attach AFE PLL to MACTOP/BB/PCIe Digital */
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL);
-		r8712_write8(padapter, SYS_ISO_CTRL, (val8 & 0xEE));
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL);
+		r8712_write8(adapter, SYS_ISO_CTRL, (val8 & 0xEE));
 		/* Switch to 40M clock */
-		val8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, val8 & (~SYS_CLKSEL));
+		val8 = r8712_read8(adapter, SYS_CLKR);
+		r8712_write8(adapter, SYS_CLKR, val8 & (~SYS_CLKSEL));
 		/* SSC Disable */
-		val8 = r8712_read8(padapter, SYS_CLKR);
+		val8 = r8712_read8(adapter, SYS_CLKR);
 		/* Enable MAC clock */
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
-		r8712_write8(padapter, SYS_CLKR + 1, (val8 | 0x18));
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x18));
 		/* Revised POS, */
-		r8712_write8(padapter, PMC_FSM, 0x02);
+		r8712_write8(adapter, PMC_FSM, 0x02);
 		/* Enable Core digital and enable IOREG R/W */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x08));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));
 		/* Enable REG_EN */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x80));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));
 		/* Switch the control path to FW */
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
-		r8712_write8(padapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
-		r8712_write8(padapter, CR, 0xFC);
-		r8712_write8(padapter, CR + 1, 0x37);
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
+		r8712_write8(adapter, CR, 0xFC);
+		r8712_write8(adapter, CR + 1, 0x37);
 		/* Fix the RX FIFO issue(usb error), */
-		val8 = r8712_read8(padapter, 0x1025FE5c);
-		r8712_write8(padapter, 0x1025FE5c, (val8 | BIT(7)));
-		val8 = r8712_read8(padapter, 0x102500ab);
-		r8712_write8(padapter, 0x102500ab, (val8 | BIT(6) | BIT(7)));
+		val8 = r8712_read8(adapter, 0x1025FE5c);
+		r8712_write8(adapter, 0x1025FE5c, (val8 | BIT(7)));
+		val8 = r8712_read8(adapter, 0x102500ab);
+		r8712_write8(adapter, 0x102500ab, (val8 | BIT(6) | BIT(7)));
 		/* For power save, used this in the bit file after 970621 */
-		val8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
-	} else if (pregistrypriv->chip_version == RTL8712_2ndCUT ||
-		  pregistrypriv->chip_version == RTL8712_3rdCUT) {
+		val8 = r8712_read8(adapter, SYS_CLKR);
+		r8712_write8(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
+	} else if (registrypriv->chip_version == RTL8712_2ndCUT ||
+		   registrypriv->chip_version == RTL8712_3rdCUT) {
 		/* Initialization for power on sequence,
 		 * E-Fuse leakage prevention sequence
 		 */
-		r8712_write8(padapter, 0x37, 0xb0);
+		r8712_write8(adapter, 0x37, 0xb0);
 		msleep(20);
-		r8712_write8(padapter, 0x37, 0x30);
+		r8712_write8(adapter, 0x37, 0x30);
 		/* Set control path switch to HW control and reset Digital Core,
 		 * CPU Core and MAC I/O to solve FW download fail when system
 		 * from resume sate.
 		 */
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
 		if (val8 & 0x80) {
 			val8 &= 0x3f;
-			r8712_write8(padapter, SYS_CLKR + 1, val8);
+			r8712_write8(adapter, SYS_CLKR + 1, val8);
 		}
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
 		val8 &= 0x73;
-		r8712_write8(padapter, SYS_FUNC_EN + 1, val8);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, val8);
 		msleep(20);
 		/* Revised POS, */
 		/* Enable AFE Macro Block's Bandgap and Enable AFE Macro
 		 * Block's Mbias
 		 */
-		r8712_write8(padapter, SPS0_CTRL + 1, 0x53);
-		r8712_write8(padapter, SPS0_CTRL, 0x57);
-		val8 = r8712_read8(padapter, AFE_MISC);
+		r8712_write8(adapter, SPS0_CTRL + 1, 0x53);
+		r8712_write8(adapter, SPS0_CTRL, 0x57);
+		val8 = r8712_read8(adapter, AFE_MISC);
 		/*Bandgap*/
-		r8712_write8(padapter, AFE_MISC, (val8 | AFE_MISC_BGEN));
-		r8712_write8(padapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
+		r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN));
+		r8712_write8(adapter, AFE_MISC, (val8 | AFE_MISC_BGEN |
 			     AFE_MISC_MBEN | AFE_MISC_I32_EN));
 		/* Enable PLL Power (LDOA15V) */
-		val8 = r8712_read8(padapter, LDOA15_CTRL);
-		r8712_write8(padapter, LDOA15_CTRL, (val8 | LDA15_EN));
+		val8 = r8712_read8(adapter, LDOA15_CTRL);
+		r8712_write8(adapter, LDOA15_CTRL, (val8 | LDA15_EN));
 		/* Enable LDOV12D block */
-		val8 = r8712_read8(padapter, LDOV12D_CTRL);
-		r8712_write8(padapter, LDOV12D_CTRL, (val8 | LDV12_EN));
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
+		val8 = r8712_read8(adapter, LDOV12D_CTRL);
+		r8712_write8(adapter, LDOV12D_CTRL, (val8 | LDV12_EN));
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 | 0x08));
 		/* Engineer Packet CP test Enable */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x20));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x20));
 		/* Support 64k IMEM */
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL + 1);
-		r8712_write8(padapter, SYS_ISO_CTRL + 1, (val8 & 0x68));
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL + 1);
+		r8712_write8(adapter, SYS_ISO_CTRL + 1, (val8 & 0x68));
 		/* Enable AFE clock */
-		val8 = r8712_read8(padapter, AFE_XTAL_CTRL + 1);
-		r8712_write8(padapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
+		val8 = r8712_read8(adapter, AFE_XTAL_CTRL + 1);
+		r8712_write8(adapter, AFE_XTAL_CTRL + 1, (val8 & 0xfb));
 		/* Enable AFE PLL Macro Block */
-		val8 = r8712_read8(padapter, AFE_PLL_CTRL);
-		r8712_write8(padapter, AFE_PLL_CTRL, (val8 | 0x11));
+		val8 = r8712_read8(adapter, AFE_PLL_CTRL);
+		r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));
 		/* Some sample will download fw failure. The clock will be
 		 * stable with 500 us delay after reset the PLL
 		 * TODO: When usleep is added to kernel, change next 3
 		 * udelay(500) to usleep(500)
 		 */
 		udelay(500);
-		r8712_write8(padapter, AFE_PLL_CTRL, (val8 | 0x51));
+		r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x51));
 		udelay(500);
-		r8712_write8(padapter, AFE_PLL_CTRL, (val8 | 0x11));
+		r8712_write8(adapter, AFE_PLL_CTRL, (val8 | 0x11));
 		udelay(500);
 		/* Attach AFE PLL to MACTOP/BB/PCIe Digital */
-		val8 = r8712_read8(padapter, SYS_ISO_CTRL);
-		r8712_write8(padapter, SYS_ISO_CTRL, (val8 & 0xEE));
+		val8 = r8712_read8(adapter, SYS_ISO_CTRL);
+		r8712_write8(adapter, SYS_ISO_CTRL, (val8 & 0xEE));
 		/* Switch to 40M clock */
-		r8712_write8(padapter, SYS_CLKR, 0x00);
+		r8712_write8(adapter, SYS_CLKR, 0x00);
 		/* CPU Clock and 80M Clock SSC Disable to overcome FW download
 		 * fail timing issue.
 		 */
-		val8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, (val8 | 0xa0));
+		val8 = r8712_read8(adapter, SYS_CLKR);
+		r8712_write8(adapter, SYS_CLKR, (val8 | 0xa0));
 		/* Enable MAC clock */
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
-		r8712_write8(padapter, SYS_CLKR + 1, (val8 | 0x18));
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x18));
 		/* Revised POS, */
-		r8712_write8(padapter, PMC_FSM, 0x02);
+		r8712_write8(adapter, PMC_FSM, 0x02);
 		/* Enable Core digital and enable IOREG R/W */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x08));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x08));
 		/* Enable REG_EN */
-		val8 = r8712_read8(padapter, SYS_FUNC_EN + 1);
-		r8712_write8(padapter, SYS_FUNC_EN + 1, (val8 | 0x80));
+		val8 = r8712_read8(adapter, SYS_FUNC_EN + 1);
+		r8712_write8(adapter, SYS_FUNC_EN + 1, (val8 | 0x80));
 		/* Switch the control path to FW */
-		val8 = r8712_read8(padapter, SYS_CLKR + 1);
-		r8712_write8(padapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
-		r8712_write8(padapter, CR, 0xFC);
-		r8712_write8(padapter, CR + 1, 0x37);
+		val8 = r8712_read8(adapter, SYS_CLKR + 1);
+		r8712_write8(adapter, SYS_CLKR + 1, (val8 | 0x80) & 0xBF);
+		r8712_write8(adapter, CR, 0xFC);
+		r8712_write8(adapter, CR + 1, 0x37);
 		/* Fix the RX FIFO issue(usb error), 970410 */
-		val8 = r8712_read8(padapter, 0x1025FE5c);
-		r8712_write8(padapter, 0x1025FE5c, (val8 | BIT(7)));
+		val8 = r8712_read8(adapter, 0x1025FE5c);
+		r8712_write8(adapter, 0x1025FE5c, (val8 | BIT(7)));
 		/* For power save, used this in the bit file after 970621 */
-		val8 = r8712_read8(padapter, SYS_CLKR);
-		r8712_write8(padapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
+		val8 = r8712_read8(adapter, SYS_CLKR);
+		r8712_write8(adapter, SYS_CLKR, val8 & (~CPU_CLKSEL));
 		/* Revised for 8051 ROM code wrong operation. */
-		r8712_write8(padapter, 0x1025fe1c, 0x80);
+		r8712_write8(adapter, 0x1025fe1c, 0x80);
 		/* To make sure that TxDMA can ready to download FW.
 		 * We should reset TxDMA if IMEM RPT was not ready.
 		 */
 		do {
-			val8 = r8712_read8(padapter, TCR);
+			val8 = r8712_read8(adapter, TCR);
 			if ((val8 & _TXDMA_INIT_VALUE) == _TXDMA_INIT_VALUE)
 				break;
 			udelay(5); /* PlatformStallExecution(5); */
 		} while (PollingCnt--);	/* Delay 1ms */
 
 		if (PollingCnt <= 0) {
-			val8 = r8712_read8(padapter, CR);
-			r8712_write8(padapter, CR, val8 & (~_TXDMA_EN));
+			val8 = r8712_read8(adapter, CR);
+			r8712_write8(adapter, CR, val8 & (~_TXDMA_EN));
 			udelay(2); /* PlatformStallExecution(2); */
 			/* Reset TxDMA */
-			r8712_write8(padapter, CR, val8 | _TXDMA_EN);
+			r8712_write8(adapter, CR, val8 | _TXDMA_EN);
 		}
 	} else {
 		ret = _FAIL;
@@ -280,28 +280,28 @@ u8 r8712_usb_hal_bus_init(struct _adapter *padapter)
 	return ret;
 }
 
-unsigned int r8712_usb_inirp_init(struct _adapter *padapter)
+unsigned int r8712_usb_inirp_init(struct _adapter *adapter)
 {
 	u8 i;
-	struct recv_buf *precvbuf;
-	struct intf_hdl *pintfhdl = &padapter->pio_queue->intf;
-	struct recv_priv *precvpriv = &(padapter->recvpriv);
+	struct recv_buf *recvbuf;
+	struct intf_hdl *intfhdl = &adapter->pio_queue->intf;
+	struct recv_priv *recvpriv = &(adapter->recvpriv);
 
-	precvpriv->ff_hwaddr = RTL8712_DMA_RX0FF; /* mapping rx fifo address */
+	recvpriv->ff_hwaddr = RTL8712_DMA_RX0FF; /* mapping rx fifo address */
 	/* issue Rx irp to receive data */
-	precvbuf = (struct recv_buf *)precvpriv->precv_buf;
+	recvbuf = (struct recv_buf *)recvpriv->precv_buf;
 	for (i = 0; i < NR_RECVBUFF; i++) {
-		if (r8712_usb_read_port(pintfhdl, precvpriv->ff_hwaddr, 0,
-		   (unsigned char *)precvbuf) == false)
+		if (r8712_usb_read_port(intfhdl, recvpriv->ff_hwaddr, 0,
+					(unsigned char *)recvbuf) == false)
 			return _FAIL;
-		precvbuf++;
-		precvpriv->free_recv_buf_queue_cnt--;
+		recvbuf++;
+		recvpriv->free_recv_buf_queue_cnt--;
 	}
 	return _SUCCESS;
 }
 
-unsigned int r8712_usb_inirp_deinit(struct _adapter *padapter)
+unsigned int r8712_usb_inirp_deinit(struct _adapter *adapter)
 {
-	r8712_usb_read_port_cancel(padapter);
+	r8712_usb_read_port_cancel(adapter);
 	return _SUCCESS;
 }
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
