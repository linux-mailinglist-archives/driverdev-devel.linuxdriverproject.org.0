Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB494318B81
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 14:05:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F9CD8756F;
	Thu, 11 Feb 2021 13:05:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gJFKM7pXHCzF; Thu, 11 Feb 2021 13:05:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C32187580;
	Thu, 11 Feb 2021 13:05:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 460A71BF3F6
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:05:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4256D8756C
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 13:05:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b5ll7o-ifMi4 for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 13:05:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 32D5D8756B
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 13:05:48 +0000 (UTC)
Received: by mail-pg1-f169.google.com with SMTP id o38so3813598pgm.9
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:05:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mHguUTQ+HpUwQwSGrjw+UqtJ71Oy5W4N5x1Fw8xX/pY=;
 b=nAZWJRI5DHSIUoKNs3mVLK37JubUaCezIRrlV/QV2utZpbrdtOX+ae+8XA3K6bTDQZ
 KIBCUyBoSorgDMwy22eHTSGl9ggGyvlZU/k+GOVC0XmcZwLxlXoaPCH9VQfRwDNuRpMo
 ph/62pdViNEPWMM7nk+XPQAHh66VCKDccCFS9QN6RadrfNNSUglPc9l9FjeT5Lngh7e9
 8Et3VvwVDqABOTf6CJM0fb7Tea1nsPLzJS/owXMUNtGJPCSbSMc9/ZLDWTMgz4KWsHVf
 lVK77UwA9Buv1PHASt11jkH0UgJGcDJr1iqRunBQepVLs2YYc+V7x8GyW01tO5JH18JX
 9ZNA==
X-Gm-Message-State: AOAM5309hDMU04vGRHh38cBFkBv5zypQDXC7Bey5oPC8H9LoKgwTlEBz
 pLStGGG7uy/0NJ/huiKtY5c=
X-Google-Smtp-Source: ABdhPJzXttScOtj+Vl2bKjYHzo/Ppyb3QG2oY95HGpQvN4kMx1ZnGSS/BNmat+WAmv5vKvd7VP9v/Q==
X-Received: by 2002:a05:6a00:1a03:b029:1d3:1fa3:4a5d with SMTP id
 g3-20020a056a001a03b02901d31fa34a5dmr7787278pfv.1.1613048747751; 
 Thu, 11 Feb 2021 05:05:47 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id y8sm6364808pfe.36.2021.02.11.05.05.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Feb 2021 05:05:46 -0800 (PST)
Date: Thu, 11 Feb 2021 18:35:42 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH v4 1/2] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <ca8feff68a247c54b67d9c19555d1d8c1f16ebfe.1613048573.git.mail@karthek.com>
References: <cover.1613048573.git.mail@karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1613048573.git.mail@karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

there are some good function comments not following
kernel-doc. Make them follow kernel-doc style

Signed-off-by: karthik alapati <mail@karthek.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 185 +++++++-----------
 1 file changed, 73 insertions(+), 112 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index cf23414d7..77132e4ee 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -20,16 +20,11 @@
 #define MAX_DOZE_WAITING_TIMES_9x 64
 
 /**
-* Function:	phy_CalculateBitShift
-*
-* OverView:	Get shifted position of the BitMask
-*
-* Input:
-*		u32 	BitMask,
-*
-* Output:	none
-* Return:		u32 	Return the shift bit bit position of the mask
-*/
+ * phy_CalculateBitShift - Get shifted position of the BitMask.
+ * @BitMask: Bitmask.
+ *
+ * Return:	Return the shift bit position of the mask
+ */
 static	u32 phy_CalculateBitShift(u32 BitMask)
 {
 	u32 i;
@@ -43,19 +38,17 @@ static	u32 phy_CalculateBitShift(u32 BitMask)
 
 
 /**
-* Function:	PHY_QueryBBReg
-*
-* OverView:	Read "specific bits" from BB register
-*
-* Input:
-*		struct adapter *	Adapter,
-*		u32 		RegAddr,	The target address to be readback
-*		u32 		BitMask		The target bit position in the target address
-*							to be readback
-* Output:	None
-* Return:		u32 		Data		The readback register value
-* Note:		This function is equal to "GetRegSetting" in PHY programming guide
-*/
+ * PHY_QueryBBReg - Read "specific bits" from BB register.
+ * @Adapter:
+ * @RegAddr:	The target address to be readback
+ * @BitMask:	The target bit position in the target address
+ *				to be readback
+ *
+ * Return:	The readback register value
+ *
+ * .. Note::	This function is equal to "GetRegSetting" in PHY programming
+ *			guide
+ */
 u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 {
 	u32 OriginalValue, BitShift;
@@ -75,22 +68,17 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 
 
 /**
-* Function:	PHY_SetBBReg
-*
-* OverView:	Write "Specific bits" to BB register (page 8~)
-*
-* Input:
-*		struct adapter *	Adapter,
-*		u32 		RegAddr,	The target address to be modified
-*		u32 		BitMask		The target bit position in the target address
-*								to be modified
-*		u32 		Data		The new register value in the target bit position
-*								of the target address
-*
-* Output:	None
-* Return:		None
-* Note:		This function is equal to "PutRegSetting" in PHY programming guide
-*/
+ * PHY_SetBBReg - Write "Specific bits" to BB register (page 8~).
+ * @Adapter:
+ * @RegAddr:	The target address to be modified
+ * @BitMask:	The target bit position in the target address
+ *				to be modified
+ * @Data:		The new register value in the target bit position
+ *				of the target address
+ *
+ * .. Note::	This function is equal to "PutRegSetting" in PHY programming
+ *			guide
+ */
 
 void PHY_SetBBReg_8723B(
 	struct adapter *Adapter,
@@ -184,27 +172,21 @@ static u32 phy_RFSerialRead_8723B(
 }
 
 /**
-* Function:	phy_RFSerialWrite_8723B
-*
-* OverView:	Write data to RF register (page 8~)
-*
-* Input:
-*		struct adapter *	Adapter,
-*		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		Offset,		The target address to be read
-*		u32 		Data		The new register Data in the target bit position
-*								of the target to be read
-*
-* Output:	None
-* Return:		None
-* Note:		Threre are three types of serial operations:
-*		1. Software serial write
-*		2. Hardware LSSI-Low Speed Serial Interface
-*		3. Hardware HSSI-High speed
-*		serial write. Driver need to implement (1) and (2).
-*		This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
+ * phy_RFSerialWrite_8723B - Write data to RF register (page 8~).
+ * @Adapter:
+ * @eRFPath:	Radio path of A/B/C/D
+ * @Offset:	The target address to be read
+ * @Data:	The new register Data in the target bit position
+ *			of the target to be read
+ *
+ * .. Note::	Threre are three types of serial operations:
+ *		1. Software serial write
+ *		2. Hardware LSSI-Low Speed Serial Interface
+ *		3. Hardware HSSI-High speed
+ *		serial write. Driver need to implement (1) and (2).
+ *		This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
  *
- * Note:		  For RF8256 only
+ * .. Note::		  For RF8256 only
  *		 The total count of RTL8256(Zebra4) register is around 36 bit it only employs
  *		 4-bit RF address. RTL8256 uses "register mode control bit" (Reg00[12], Reg00[10])
  *		 to access register address bigger than 0xf. See "Appendix-4 in PHY Configuration
@@ -225,7 +207,7 @@ static u32 phy_RFSerialRead_8723B(
  *
  *
  *
-*/
+ */
 static void phy_RFSerialWrite_8723B(
 	struct adapter *Adapter,
 	enum RF_PATH eRFPath,
@@ -261,21 +243,18 @@ static void phy_RFSerialWrite_8723B(
 
 
 /**
-* Function:	PHY_QueryRFReg
-*
-* OverView:	Query "Specific bits" to RF register (page 8~)
-*
-* Input:
-*		struct adapter *	Adapter,
-*		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		RegAddr,	The target address to be read
-*		u32 		BitMask		The target bit position in the target address
-*								to be read
-*
-* Output:	None
-* Return:		u32 		Readback value
-* Note:		This function is equal to "GetRFRegSetting" in PHY programming guide
-*/
+ * PHY_QueryRFReg - Query "Specific bits" to RF register (page 8~).
+ * @Adapter:
+ * @eRFPath:	Radio path of A/B/C/D
+ * @RegAdd:	The target address to be read
+ * @BitMask:	The target bit position in the target address
+ *				to be read
+ *
+ * Return:	Readback value
+ *
+ * .. Note::	This function is equal to "GetRFRegSetting" in PHY
+ *			programming guide
+ */
 u32 PHY_QueryRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -296,23 +275,18 @@ u32 PHY_QueryRFReg_8723B(
 }
 
 /**
-* Function:	PHY_SetRFReg
-*
-* OverView:	Write "Specific bits" to RF register (page 8~)
-*
-* Input:
-*		struct adapter *	Adapter,
-*		RF_PATH			eRFPath,	Radio path of A/B/C/D
-*		u32 		RegAddr,	The target address to be modified
-*		u32 		BitMask		The target bit position in the target address
-*								to be modified
-*		u32 		Data		The new register Data in the target bit position
-*								of the target address
-*
-* Output:	None
-* Return:		None
-* Note:		This function is equal to "PutRFRegSetting" in PHY programming guide
-*/
+ * PHY_SetRFReg - Write "Specific bits" to RF register (page 8~).
+ * @Adapter:
+ * @eRFPath:	Radio path of A/B/C/D
+ * @RegAddr:	The target address to be modified
+ * @BitMask:	The target bit position in the target address
+ *				to be modified
+ * @Data:	The new register Data in the target bit position
+ *								of the target address
+ *
+ * .. Note::	This function is equal to "PutRFRegSetting" in PHY
+ *			programming guide.
+ */
 void PHY_SetRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -344,15 +318,7 @@ void PHY_SetRFReg_8723B(
 
 
 /*-----------------------------------------------------------------------------
- * Function:    PHY_MACConfig8192C
- *
- * Overview:	Condig MAC by header file or parameter file.
- *
- * Input:       NONE
- *
- * Output:      NONE
- *
- * Return:      NONE
+ * PHY_MACConfig8192C - Condig MAC by header file or parameter file.
  *
  * Revised History:
  *  When		Who		Remark
@@ -369,17 +335,12 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
 }
 
 /**
-* Function:	phy_InitBBRFRegisterDefinition
-*
-* OverView:	Initialize Register definition offset for Radio Path A/B/C/D
-*
-* Input:
-*		struct adapter *	Adapter,
-*
-* Output:	None
-* Return:		None
-* Note:		The initialization value is constant and it should never be changes
-*/
+ * phy_InitBBRFRegisterDefinition - Initialize Register definition offset for
+ *									Radio Path A/B/C/D
+ * @Adapter:
+ *
+ * .. Note::		The initialization value is constant and it should never be changes
+ */
 static void phy_InitBBRFRegisterDefinition(struct adapter *Adapter)
 {
 	struct hal_com_data		*pHalData = GET_HAL_DATA(Adapter);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
