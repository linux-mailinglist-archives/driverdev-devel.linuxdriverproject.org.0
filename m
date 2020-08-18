Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AA8248666
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 15:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1D2A8733B;
	Tue, 18 Aug 2020 13:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id copE2zAHzn2v; Tue, 18 Aug 2020 13:49:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 624AB86EC0;
	Tue, 18 Aug 2020 13:49:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 086261BF36B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 13:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0430386E5C
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 13:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l7SoXNtM5l6s for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 13:49:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CFB486E1A
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 13:49:32 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r4so18313252wrx.9
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 06:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FCDdvr0ztkXWIqI8+MEAEcO00YHBZRQb2mH183ByXdU=;
 b=avbTsWm5plFOHwFDp5FmWNDB+kQkFsnF3cziQMPjEvTEDEpeHzVJFbZPAgHcLjNcny
 lPivVFpN8jqVWvBlS8LPp1z96c35apZLioX2U2olwo2hRSborD1u6KJBmssOYrrcKdeB
 3+sp7A/Bti0X5x3m+eLiMNw18N9NZg5+Eo7VG7oR1CDX+jVVCGnvsLnf8cfoE5EQCDt7
 qNohMUnoN9kQ0r9htRgGR2K9nzk3AGfXhTkf03rS0NmJf364+BNk2LQLh54EhftUCIQ5
 KCZDRZSC+sz71OR3ADVPCSAZq1r0pntUR+JopJzl+VqTwALq9zM4URUa78d5IJ9vKe8V
 CJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FCDdvr0ztkXWIqI8+MEAEcO00YHBZRQb2mH183ByXdU=;
 b=cdzm3pxVniqa9ePTK1/e2Q9SP3WHH8JHv2C6EhYHjmmFpw7qYG3dHGyvYjiEI/IIhF
 1rNYJTmDqTTfIne2OGGsLliD3YFbGo0Iu4y0vPTSFaxK2CBTx2OQlhFMBNjJwnnUA9B8
 8yr3wieBnBHfvoZSfCc8vmk97Dgf/Z66GiOPEtVLy8045YOWpaKzeVuC/mU5IIeRNbm5
 FYbFCk2mBLDm2P0eWNXS1XqRd26Fj/dagRbOQ9dE/gJOC6DfsSidLuB/ubJtyXj/ej4l
 zVuq6Pk2daDV58gCMkXsazraqUCjGiOZVGn+9lcExgVjz8hopcljcav2jrKbQ69UjQM1
 y84A==
X-Gm-Message-State: AOAM530QhjdNnKLpZVaiV4d/oUS/V3ArBUUsMS8C8XYB/eA7tXaTyd3T
 5baER4UmyW3VzntJq6k2X+Y=
X-Google-Smtp-Source: ABdhPJx0Eec0N+SRa6eL15uukYYKz4ZL6v1fwaNdMRo/oZu3uwPb0pe+CWMo70Fm7iEKaBsuyu6ApQ==
X-Received: by 2002:adf:dfd0:: with SMTP id q16mr22185839wrn.60.1597758570802; 
 Tue, 18 Aug 2020 06:49:30 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id p6sm55313wmg.0.2020.08.18.06.49.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 06:49:30 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Saiyam Doshi <saiyamdoshi.in@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: emxx_udc: Use standard BIT() macro
Date: Tue, 18 Aug 2020 14:49:18 +0100
Message-Id: <20200818134922.409195-1-alex.dewar90@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently emxx_udc.h defines bit values using local macros. Use the
standard one instead.

Also, combine bit values with bitwise-or rather than addition, as
suggested by Coccinelle.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 456 +++++++++++++---------------
 1 file changed, 211 insertions(+), 245 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 9c2671cb32f7..45f076e5fdb0 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -52,197 +52,163 @@ int vbus_irq;
 #define U2F_ENABLE		1
 #define U2F_DISABLE		0
 
-/*------- BIT */
-#define BIT00		0x00000001
-#define BIT01		0x00000002
-#define BIT02		0x00000004
-#define BIT03		0x00000008
-#define BIT04		0x00000010
-#define BIT05		0x00000020
-#define BIT06		0x00000040
-#define BIT07		0x00000080
-#define BIT08		0x00000100
-#define BIT09		0x00000200
-#define BIT10		0x00000400
-#define BIT11		0x00000800
-#define BIT12		0x00001000
-#define BIT13		0x00002000
-#define BIT14		0x00004000
-#define BIT15		0x00008000
-#define BIT16		0x00010000
-#define BIT17		0x00020000
-#define BIT18		0x00040000
-#define BIT19		0x00080000
-#define BIT20		0x00100000
-#define BIT21		0x00200000
-#define BIT22		0x00400000
-#define BIT23		0x00800000
-#define BIT24		0x01000000
-#define BIT25		0x02000000
-#define BIT26		0x04000000
-#define BIT27		0x08000000
-#define BIT28		0x10000000
-#define BIT29		0x20000000
-#define BIT30		0x40000000
-#define BIT31		0x80000000
-
-#define TEST_FORCE_ENABLE		(BIT18 + BIT16)
-
-#define INT_SEL				BIT10
-#define CONSTFS				BIT09
-#define SOF_RCV				BIT08
-#define RSUM_IN				BIT07
-#define SUSPEND				BIT06
-#define CONF				BIT05
-#define DEFAULT				BIT04
-#define CONNECTB			BIT03
-#define PUE2				BIT02
+#define TEST_FORCE_ENABLE		(BIT(18) | BIT(16))
+
+#define INT_SEL				BIT(10)
+#define CONSTFS				BIT(9)
+#define SOF_RCV				BIT(8)
+#define RSUM_IN				BIT(7)
+#define SUSPEND				BIT(6)
+#define CONF				BIT(5)
+#define DEFAULT				BIT(4)
+#define CONNECTB			BIT(3)
+#define PUE2				BIT(2)
 
 #define MAX_TEST_MODE_NUM		0x05
 #define TEST_MODE_SHIFT			16
 
 /*------- (0x0004) USB Status Register */
-#define SPEED_MODE			BIT06
-#define HIGH_SPEED			BIT06
+#define SPEED_MODE			BIT(6)
+#define HIGH_SPEED			BIT(6)
 
-#define CONF				BIT05
-#define DEFAULT				BIT04
-#define USB_RST				BIT03
-#define SPND_OUT			BIT02
-#define RSUM_OUT			BIT01
+#define CONF				BIT(5)
+#define DEFAULT				BIT(4)
+#define USB_RST				BIT(3)
+#define SPND_OUT			BIT(2)
+#define RSUM_OUT			BIT(1)
 
 /*------- (0x0008) USB Address Register */
 #define USB_ADDR			0x007F0000
-#define SOF_STATUS			BIT15
-#define UFRAME				(BIT14 + BIT13 + BIT12)
+#define SOF_STATUS			BIT(15)
+#define UFRAME				(BIT(14) | BIT(13) | BIT(12))
 #define FRAME				0x000007FF
 
 #define USB_ADRS_SHIFT			16
 
 /*------- (0x000C) UTMI Characteristic 1 Register */
-#define SQUSET				(BIT07 + BIT06 + BIT05 + BIT04)
+#define SQUSET				(BIT(7) | BIT(6) | BIT(5) | BIT(4))
 
-#define USB_SQUSET			(BIT06 + BIT05 + BIT04)
+#define USB_SQUSET			(BIT(6) | BIT(5) | BIT(4))
 
 /*------- (0x0010) TEST Control Register */
-#define FORCEHS				BIT02
-#define CS_TESTMODEEN			BIT01
-#define LOOPBACK			BIT00
+#define FORCEHS				BIT(2)
+#define CS_TESTMODEEN			BIT(1)
+#define LOOPBACK			BIT(0)
 
 /*------- (0x0018) Setup Data 0 Register */
 /*------- (0x001C) Setup Data 1 Register */
 
 /*------- (0x0020) USB Interrupt Status Register */
 #define EPN_INT				0x00FFFF00
-#define EP15_INT			BIT23
-#define EP14_INT			BIT22
-#define EP13_INT			BIT21
-#define EP12_INT			BIT20
-#define EP11_INT			BIT19
-#define EP10_INT			BIT18
-#define EP9_INT				BIT17
-#define EP8_INT				BIT16
-#define EP7_INT				BIT15
-#define EP6_INT				BIT14
-#define EP5_INT				BIT13
-#define EP4_INT				BIT12
-#define EP3_INT				BIT11
-#define EP2_INT				BIT10
-#define EP1_INT				BIT09
-#define EP0_INT				BIT08
-#define SPEED_MODE_INT			BIT06
-#define SOF_ERROR_INT			BIT05
-#define SOF_INT				BIT04
-#define USB_RST_INT			BIT03
-#define SPND_INT			BIT02
-#define RSUM_INT			BIT01
+#define EP15_INT			BIT(23)
+#define EP14_INT			BIT(22)
+#define EP13_INT			BIT(21)
+#define EP12_INT			BIT(20)
+#define EP11_INT			BIT(19)
+#define EP10_INT			BIT(18)
+#define EP9_INT				BIT(17)
+#define EP8_INT				BIT(16)
+#define EP7_INT				BIT(15)
+#define EP6_INT				BIT(14)
+#define EP5_INT				BIT(13)
+#define EP4_INT				BIT(12)
+#define EP3_INT				BIT(11)
+#define EP2_INT				BIT(10)
+#define EP1_INT				BIT(9)
+#define EP0_INT				BIT(8)
+#define SPEED_MODE_INT			BIT(6)
+#define SOF_ERROR_INT			BIT(5)
+#define SOF_INT				BIT(4)
+#define USB_RST_INT			BIT(3)
+#define SPND_INT			BIT(2)
+#define RSUM_INT			BIT(1)
 
 #define USB_INT_STA_RW			0x7E
 
 /*------- (0x0024) USB Interrupt Enable Register */
 #define EP15_0_EN			0x00FFFF00
-#define EP15_EN				BIT23
-#define EP14_EN				BIT22
-#define EP13_EN				BIT21
-#define EP12_EN				BIT20
-#define EP11_EN				BIT19
-#define EP10_EN				BIT18
-#define EP9_EN				BIT17
-#define EP8_EN				BIT16
-#define EP7_EN				BIT15
-#define EP6_EN				BIT14
-#define EP5_EN				BIT13
-#define EP4_EN				BIT12
-#define EP3_EN				BIT11
-#define EP2_EN				BIT10
-#define EP1_EN				BIT09
-#define EP0_EN				BIT08
-#define SPEED_MODE_EN			BIT06
-#define SOF_ERROR_EN			BIT05
-#define SOF_EN				BIT04
-#define USB_RST_EN			BIT03
-#define SPND_EN				BIT02
-#define RSUM_EN				BIT01
+#define EP15_EN				BIT(23)
+#define EP14_EN				BIT(22)
+#define EP13_EN				BIT(21)
+#define EP12_EN				BIT(20)
+#define EP11_EN				BIT(19)
+#define EP10_EN				BIT(18)
+#define EP9_EN				BIT(17)
+#define EP8_EN				BIT(16)
+#define EP7_EN				BIT(15)
+#define EP6_EN				BIT(14)
+#define EP5_EN				BIT(13)
+#define EP4_EN				BIT(12)
+#define EP3_EN				BIT(11)
+#define EP2_EN				BIT(10)
+#define EP1_EN				BIT(9)
+#define EP0_EN				BIT(8)
+#define SPEED_MODE_EN			BIT(6)
+#define SOF_ERROR_EN			BIT(5)
+#define SOF_EN				BIT(4)
+#define USB_RST_EN			BIT(3)
+#define SPND_EN				BIT(2)
+#define RSUM_EN				BIT(1)
 
 #define USB_INT_EN_BIT	\
 	(EP0_EN | SPEED_MODE_EN | USB_RST_EN | SPND_EN | RSUM_EN)
 
 /*------- (0x0028) EP0 Control Register */
-#define EP0_STGSEL			BIT18
-#define EP0_OVERSEL			BIT17
-#define EP0_AUTO			BIT16
-#define EP0_PIDCLR			BIT09
-#define EP0_BCLR			BIT08
-#define EP0_DEND			BIT07
-#define EP0_DW				(BIT06 + BIT05)
+#define EP0_STGSEL			BIT(18)
+#define EP0_OVERSEL			BIT(17)
+#define EP0_AUTO			BIT(16)
+#define EP0_PIDCLR			BIT(9)
+#define EP0_BCLR			BIT(8)
+#define EP0_DEND			BIT(7)
+#define EP0_DW				(BIT(6) | BIT(5))
 #define EP0_DW4				0
-#define EP0_DW3				(BIT06 + BIT05)
-#define EP0_DW2				BIT06
-#define EP0_DW1				BIT05
+#define EP0_DW3				(BIT(6) | BIT(5))
+#define EP0_DW2				BIT(6)
+#define EP0_DW1				BIT(5)
 
-#define EP0_INAK_EN			BIT04
-#define EP0_PERR_NAK_CLR		BIT03
-#define EP0_STL				BIT02
-#define EP0_INAK			BIT01
-#define EP0_ONAK			BIT00
+#define EP0_INAK_EN			BIT(4)
+#define EP0_PERR_NAK_CLR		BIT(3)
+#define EP0_STL				BIT(2)
+#define EP0_INAK			BIT(1)
+#define EP0_ONAK			BIT(0)
 
 /*------- (0x002C) EP0 Status Register */
-#define EP0_PID				BIT18
-#define EP0_PERR_NAK			BIT17
-#define EP0_PERR_NAK_INT		BIT16
-#define EP0_OUT_NAK_INT			BIT15
-#define EP0_OUT_NULL			BIT14
-#define EP0_OUT_FULL			BIT13
-#define EP0_OUT_EMPTY			BIT12
-#define EP0_IN_NAK_INT			BIT11
-#define EP0_IN_DATA			BIT10
-#define EP0_IN_FULL			BIT09
-#define EP0_IN_EMPTY			BIT08
-#define EP0_OUT_NULL_INT		BIT07
-#define EP0_OUT_OR_INT			BIT06
-#define EP0_OUT_INT			BIT05
-#define EP0_IN_INT			BIT04
-#define EP0_STALL_INT			BIT03
-#define STG_END_INT			BIT02
-#define STG_START_INT			BIT01
-#define SETUP_INT			BIT00
-
-#define EP0_STATUS_RW_BIT	(BIT16 | BIT15 | BIT11 | 0xFF)
+#define EP0_PID				BIT(18)
+#define EP0_PERR_NAK			BIT(17)
+#define EP0_PERR_NAK_INT		BIT(16)
+#define EP0_OUT_NAK_INT			BIT(15)
+#define EP0_OUT_NULL			BIT(14)
+#define EP0_OUT_FULL			BIT(13)
+#define EP0_OUT_EMPTY			BIT(12)
+#define EP0_IN_NAK_INT			BIT(11)
+#define EP0_IN_DATA			BIT(10)
+#define EP0_IN_FULL			BIT(9)
+#define EP0_IN_EMPTY			BIT(8)
+#define EP0_OUT_NULL_INT		BIT(7)
+#define EP0_OUT_OR_INT			BIT(6)
+#define EP0_OUT_INT			BIT(5)
+#define EP0_IN_INT			BIT(4)
+#define EP0_STALL_INT			BIT(3)
+#define STG_END_INT			BIT(2)
+#define STG_START_INT			BIT(1)
+#define SETUP_INT			BIT(0)
+
+#define EP0_STATUS_RW_BIT	(BIT(16) | BIT(15) | BIT(11) | 0xFF)
 
 /*------- (0x0030) EP0 Interrupt Enable Register */
-#define EP0_PERR_NAK_EN			BIT16
-#define EP0_OUT_NAK_EN			BIT15
+#define EP0_PERR_NAK_EN			BIT(16)
+#define EP0_OUT_NAK_EN			BIT(15)
 
-#define EP0_IN_NAK_EN			BIT11
+#define EP0_IN_NAK_EN			BIT(11)
 
-#define EP0_OUT_NULL_EN			BIT07
-#define EP0_OUT_OR_EN			BIT06
-#define EP0_OUT_EN			BIT05
-#define EP0_IN_EN			BIT04
-#define EP0_STALL_EN			BIT03
-#define STG_END_EN			BIT02
-#define STG_START_EN			BIT01
-#define SETUP_EN			BIT00
+#define EP0_OUT_NULL_EN			BIT(7)
+#define EP0_OUT_OR_EN			BIT(6)
+#define EP0_OUT_EN			BIT(5)
+#define EP0_IN_EN			BIT(4)
+#define EP0_STALL_EN			BIT(3)
+#define STG_END_EN			BIT(2)
+#define STG_START_EN			BIT(1)
+#define SETUP_EN			BIT(0)
 
 #define EP0_INT_EN_BIT	\
 	(EP0_OUT_OR_EN | EP0_OUT_EN | EP0_IN_EN | STG_END_EN | SETUP_EN)
@@ -254,90 +220,90 @@ int vbus_irq;
 /*------- (0x003C) EP0 Write Register */
 
 /*------- (0x0040:) EPN Control Register */
-#define EPN_EN				BIT31
-#define EPN_BUF_TYPE			BIT30
-#define EPN_BUF_SINGLE			BIT30
+#define EPN_EN				BIT(31)
+#define EPN_BUF_TYPE			BIT(30)
+#define EPN_BUF_SINGLE			BIT(30)
 
-#define EPN_DIR0			BIT26
-#define EPN_MODE			(BIT25 + BIT24)
+#define EPN_DIR0			BIT(26)
+#define EPN_MODE			(BIT(25) | BIT(24))
 #define EPN_BULK			0
-#define EPN_INTERRUPT			BIT24
-#define EPN_ISO				BIT25
-
-#define EPN_OVERSEL			BIT17
-#define EPN_AUTO			BIT16
-
-#define EPN_IPIDCLR			BIT11
-#define EPN_OPIDCLR			BIT10
-#define EPN_BCLR			BIT09
-#define EPN_CBCLR			BIT08
-#define EPN_DEND			BIT07
-#define EPN_DW				(BIT06 + BIT05)
+#define EPN_INTERRUPT			BIT(24)
+#define EPN_ISO				BIT(25)
+
+#define EPN_OVERSEL			BIT(17)
+#define EPN_AUTO			BIT(16)
+
+#define EPN_IPIDCLR			BIT(11)
+#define EPN_OPIDCLR			BIT(10)
+#define EPN_BCLR			BIT(9)
+#define EPN_CBCLR			BIT(8)
+#define EPN_DEND			BIT(7)
+#define EPN_DW				(BIT(6) | BIT(5))
 #define EPN_DW4				0
-#define EPN_DW3				(BIT06 + BIT05)
-#define EPN_DW2				BIT06
-#define EPN_DW1				BIT05
+#define EPN_DW3				(BIT(6) | BIT(5))
+#define EPN_DW2				BIT(6)
+#define EPN_DW1				BIT(5)
 
-#define EPN_OSTL_EN			BIT04
-#define EPN_ISTL			BIT03
-#define EPN_OSTL			BIT02
+#define EPN_OSTL_EN			BIT(4)
+#define EPN_ISTL			BIT(3)
+#define EPN_OSTL			BIT(2)
 
-#define EPN_ONAK			BIT00
+#define EPN_ONAK			BIT(0)
 
 /*------- (0x0044:) EPN Status Register	*/
-#define EPN_ISO_PIDERR			BIT29		/* R */
-#define EPN_OPID			BIT28		/* R */
-#define EPN_OUT_NOTKN			BIT27		/* R */
-#define EPN_ISO_OR			BIT26		/* R */
-
-#define EPN_ISO_CRC			BIT24		/* R */
-#define EPN_OUT_END_INT			BIT23		/* RW */
-#define EPN_OUT_OR_INT			BIT22		/* RW */
-#define EPN_OUT_NAK_ERR_INT		BIT21		/* RW */
-#define EPN_OUT_STALL_INT		BIT20		/* RW */
-#define EPN_OUT_INT			BIT19		/* RW */
-#define EPN_OUT_NULL_INT		BIT18		/* RW */
-#define EPN_OUT_FULL			BIT17		/* R */
-#define EPN_OUT_EMPTY			BIT16		/* R */
-
-#define EPN_IPID			BIT10		/* R */
-#define EPN_IN_NOTKN			BIT09		/* R */
-#define EPN_ISO_UR			BIT08		/* R */
-#define EPN_IN_END_INT			BIT07		/* RW */
-
-#define EPN_IN_NAK_ERR_INT		BIT05		/* RW */
-#define EPN_IN_STALL_INT		BIT04		/* RW */
-#define EPN_IN_INT			BIT03		/* RW */
-#define EPN_IN_DATA			BIT02		/* R */
-#define EPN_IN_FULL			BIT01		/* R */
-#define EPN_IN_EMPTY			BIT00		/* R */
+#define EPN_ISO_PIDERR			BIT(29)		/* R */
+#define EPN_OPID			BIT(28)		/* R */
+#define EPN_OUT_NOTKN			BIT(27)		/* R */
+#define EPN_ISO_OR			BIT(26)		/* R */
+
+#define EPN_ISO_CRC			BIT(24)		/* R */
+#define EPN_OUT_END_INT			BIT(23)		/* RW */
+#define EPN_OUT_OR_INT			BIT(22)		/* RW */
+#define EPN_OUT_NAK_ERR_INT		BIT(21)		/* RW */
+#define EPN_OUT_STALL_INT		BIT(20)		/* RW */
+#define EPN_OUT_INT			BIT(19)		/* RW */
+#define EPN_OUT_NULL_INT		BIT(18)		/* RW */
+#define EPN_OUT_FULL			BIT(17)		/* R */
+#define EPN_OUT_EMPTY			BIT(16)		/* R */
+
+#define EPN_IPID			BIT(10)		/* R */
+#define EPN_IN_NOTKN			BIT(9)		/* R */
+#define EPN_ISO_UR			BIT(8)		/* R */
+#define EPN_IN_END_INT			BIT(7)		/* RW */
+
+#define EPN_IN_NAK_ERR_INT		BIT(5)		/* RW */
+#define EPN_IN_STALL_INT		BIT(4)		/* RW */
+#define EPN_IN_INT			BIT(3)		/* RW */
+#define EPN_IN_DATA			BIT(2)		/* R */
+#define EPN_IN_FULL			BIT(1)		/* R */
+#define EPN_IN_EMPTY			BIT(0)		/* R */
 
 #define EPN_INT_EN	\
 	(EPN_OUT_END_INT | EPN_OUT_INT | EPN_IN_END_INT | EPN_IN_INT)
 
 /*------- (0x0048:) EPN Interrupt Enable Register */
-#define EPN_OUT_END_EN			BIT23		/* RW */
-#define EPN_OUT_OR_EN			BIT22		/* RW */
-#define EPN_OUT_NAK_ERR_EN		BIT21		/* RW */
-#define EPN_OUT_STALL_EN		BIT20		/* RW */
-#define EPN_OUT_EN			BIT19		/* RW */
-#define EPN_OUT_NULL_EN			BIT18		/* RW */
+#define EPN_OUT_END_EN			BIT(23)		/* RW */
+#define EPN_OUT_OR_EN			BIT(22)		/* RW */
+#define EPN_OUT_NAK_ERR_EN		BIT(21)		/* RW */
+#define EPN_OUT_STALL_EN		BIT(20)		/* RW */
+#define EPN_OUT_EN			BIT(19)		/* RW */
+#define EPN_OUT_NULL_EN			BIT(18)		/* RW */
 
-#define EPN_IN_END_EN			BIT07		/* RW */
+#define EPN_IN_END_EN			BIT(7)		/* RW */
 
-#define EPN_IN_NAK_ERR_EN		BIT05		/* RW */
-#define EPN_IN_STALL_EN			BIT04		/* RW */
-#define EPN_IN_EN			BIT03		/* RW */
+#define EPN_IN_NAK_ERR_EN		BIT(5)		/* RW */
+#define EPN_IN_STALL_EN			BIT(4)		/* RW */
+#define EPN_IN_EN			BIT(3)		/* RW */
 
 /*------- (0x004C:) EPN Interrupt Enable Register */
-#define EPN_STOP_MODE			BIT11
-#define EPN_DEND_SET			BIT10
-#define EPN_BURST_SET			BIT09
-#define EPN_STOP_SET			BIT08
+#define EPN_STOP_MODE			BIT(11)
+#define EPN_DEND_SET			BIT(10)
+#define EPN_BURST_SET			BIT(9)
+#define EPN_STOP_SET			BIT(8)
 
-#define EPN_DMA_EN			BIT04
+#define EPN_DMA_EN			BIT(4)
 
-#define EPN_DMAMODE0			BIT00
+#define EPN_DMAMODE0			BIT(0)
 
 /*------- (0x0050:) EPN MaxPacket & BaseAddress Register */
 #define EPN_BASEAD			0x1FFF0000
@@ -351,62 +317,62 @@ int vbus_irq;
 /*------- (0x005C:) EPN Write Register */
 
 /*------- (0x1000) AHBSCTR Register */
-#define WAIT_MODE			BIT00
+#define WAIT_MODE			BIT(0)
 
 /*------- (0x1004) AHBMCTR Register */
-#define ARBITER_CTR			BIT31		/* RW */
-#define MCYCLE_RST			BIT12		/* RW */
+#define ARBITER_CTR			BIT(31)		/* RW */
+#define MCYCLE_RST			BIT(12)		/* RW */
 
-#define ENDIAN_CTR			(BIT09 + BIT08)	/* RW */
-#define ENDIAN_BYTE_SWAP		BIT09
+#define ENDIAN_CTR			(BIT(9) | BIT(8))	/* RW */
+#define ENDIAN_BYTE_SWAP		BIT(9)
 #define ENDIAN_HALF_WORD_SWAP		ENDIAN_CTR
 
-#define HBUSREQ_MODE			BIT05		/* RW */
-#define HTRANS_MODE			BIT04		/* RW */
+#define HBUSREQ_MODE			BIT(5)		/* RW */
+#define HTRANS_MODE			BIT(4)		/* RW */
 
-#define WBURST_TYPE			BIT02		/* RW */
-#define BURST_TYPE			(BIT01 + BIT00)	/* RW */
+#define WBURST_TYPE			BIT(2)		/* RW */
+#define BURST_TYPE			(BIT(1) | BIT(0))	/* RW */
 #define BURST_MAX_16			0
-#define BURST_MAX_8			BIT00
-#define BURST_MAX_4			BIT01
+#define BURST_MAX_8			BIT(0)
+#define BURST_MAX_4			BIT(1)
 #define BURST_SINGLE			BURST_TYPE
 
 /*------- (0x1008) AHBBINT Register */
 #define DMA_ENDINT			0xFFFE0000	/* RW */
 
-#define AHB_VBUS_INT			BIT13		/* RW */
+#define AHB_VBUS_INT			BIT(13)		/* RW */
 
-#define MBUS_ERRINT			BIT06		/* RW */
+#define MBUS_ERRINT			BIT(6)		/* RW */
 
-#define SBUS_ERRINT0			BIT04		/* RW */
+#define SBUS_ERRINT0			BIT(4)		/* RW */
 #define ERR_MASTER			0x0000000F	/* R */
 
 /*------- (0x100C) AHBBINTEN Register */
 #define DMA_ENDINTEN			0xFFFE0000	/* RW */
 
-#define VBUS_INTEN			BIT13		/* RW */
+#define VBUS_INTEN			BIT(13)		/* RW */
 
-#define MBUS_ERRINTEN			BIT06		/* RW */
+#define MBUS_ERRINTEN			BIT(6)		/* RW */
 
-#define SBUS_ERRINT0EN			BIT04		/* RW */
+#define SBUS_ERRINT0EN			BIT(4)		/* RW */
 
 /*------- (0x1010) EPCTR Register */
-#define DIRPD				BIT12		/* RW */
+#define DIRPD				BIT(12)		/* RW */
 
-#define VBUS_LEVEL			BIT08		/* R */
+#define VBUS_LEVEL			BIT(8)		/* R */
 
-#define PLL_RESUME			BIT05		/* RW */
-#define PLL_LOCK			BIT04		/* R */
+#define PLL_RESUME			BIT(5)		/* RW */
+#define PLL_LOCK			BIT(4)		/* R */
 
-#define EPC_RST				BIT00		/* RW */
+#define EPC_RST				BIT(0)		/* RW */
 
 /*------- (0x1014) USBF_EPTEST Register */
-#define LINESTATE			(BIT09 + BIT08)	/* R */
-#define DM_LEVEL			BIT09		/* R */
-#define DP_LEVEL			BIT08		/* R */
+#define LINESTATE			(BIT(9) | BIT(8))	/* R */
+#define DM_LEVEL			BIT(9)		/* R */
+#define DP_LEVEL			BIT(8)		/* R */
 
-#define PHY_TST				BIT01		/* RW */
-#define PHY_TSTCLK			BIT00		/* RW */
+#define PHY_TST				BIT(1)		/* RW */
+#define PHY_TSTCLK			BIT(0)		/* RW */
 
 /*------- (0x1020) USBSSVER Register */
 #define AHBB_VER			0x00FF0000	/* R */
@@ -420,8 +386,8 @@ int vbus_irq;
 /*------- (0x1110:) EPNDCR1 Register */
 #define DCR1_EPN_DMACNT			0x00FF0000	/* RW */
 
-#define DCR1_EPN_DIR0			BIT01		/* RW */
-#define DCR1_EPN_REQEN			BIT00		/* RW */
+#define DCR1_EPN_DIR0			BIT(1)		/* RW */
+#define DCR1_EPN_REQEN			BIT(0)		/* RW */
 
 /*------- (0x1114:) EPNDCR2 Register */
 #define DCR2_EPN_LMPKT			0x07FF0000	/* RW */
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
