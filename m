Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8322315853
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 22:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC0DA8723E;
	Tue,  9 Feb 2021 21:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PJ024cyCX2bw; Tue,  9 Feb 2021 21:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6709B8713B;
	Tue,  9 Feb 2021 21:12:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48E9F1BF489
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 21:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3239560071
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 21:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f4_9YgfQ1zx6 for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 21:12:37 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id ACAEE60093; Tue,  9 Feb 2021 21:12:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBDE860071
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 21:12:35 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id e9so2437641pjj.0
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 13:12:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=O7aXSJE1CFIK5AyVwPhOlcXCMOP+mflwjTwdr5k//Cw=;
 b=WHQyCvG+cvbQ50mfjtfIQ5KMrNC2CoM2xY/QqY90VRPxxE9hUgQi8fCKha1O/8dWWN
 OZ+NnqUndEBWxO842P82MNjJIm0e+37+TMN6moD1FN10MhqnxDiB0N7Y0c0w6KWfN5vQ
 MT5OcuUWEl9ut4on6LLE4oOWaPVFyvfQQ4OAQ/nQ2OYuDL3R0Q9Becf28uiZPmBk4QSH
 TzCWHAi02/oz0/SObD3M6l1Moh9j1sYeZgpb4VKcAnRhdH/bIVfsdHdg+h7ztCu/dunD
 rwTgmzbsTv0M4kIlL7yz+yobUesN9KqQXH2CDabUFdMx8zd7Gy1ewFYmRzVobh34Ldem
 cv+w==
X-Gm-Message-State: AOAM530YVJRpTo4rdBCot+qm0PtMJQzqE+4LqQG6H4cd/uiow/tBoUZF
 yTOc2Dh0WmOkc/NXIHUs0EI=
X-Google-Smtp-Source: ABdhPJwZBrrVPPK/heMZOfIlJyg/vEXcNT5aN+4jV2vdZ73ld7NYl4tnl8Jod/3LK6CeFqvgFuCM2A==
X-Received: by 2002:a17:90a:d3cc:: with SMTP id
 d12mr6007104pjw.202.1612905155219; 
 Tue, 09 Feb 2021 13:12:35 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.47])
 by smtp.gmail.com with ESMTPSA id 73sm5816442pfa.27.2021.02.09.13.12.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 13:12:34 -0800 (PST)
Date: Wed, 10 Feb 2021 02:42:30 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] staging: rtl8723bs: fix function comments to follow kernel-doc
Message-ID: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix checkpatch.pl warning for "block comments should align the
 * on each line" and make function comments follow kernel-doc

Signed-off-by: karthik alapati <mail@karthek.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 209 ++++++++----------
 1 file changed, 91 insertions(+), 118 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index cf23414d7..b7fca881c 100644
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
+ *	phy_CalculateBitShift - Get shifted position of the BitMask.
+ *	@BitMask: Bitmask.
+ *
+ *	Return:	Return the shift bit position of the mask
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
+ *	PHY_QueryBBReg - Read "specific bits" from BB register.
+ *	@Adapter:
+ *	@RegAddr:	The target address to be readback
+ *	@BitMask:	The target bit position in the target address
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
@@ -64,7 +57,10 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 	return 0;
 #endif
 
-	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg(): RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask)); */
+	/**
+	 * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg():
+	 * RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask));
+	 */
 
 	OriginalValue = rtw_read32(Adapter, RegAddr);
 	BitShift = phy_CalculateBitShift(BitMask);
@@ -75,22 +71,17 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 
 
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
+ *	PHY_SetBBReg - Write "Specific bits" to BB register (page 8~).
+ *	@Adapter:
+ *	@RegAddr:	The target address to be modified
+ *	@BitMask:	The target bit position in the target address
+ *				to be modified
+ *	@Data:		The new register value in the target bit position
+ *				of the target address
+ *
+ * .. Note::	This function is equal to "PutRegSetting" in PHY programming
+ *			guide
+ */
 
 void PHY_SetBBReg_8723B(
 	struct adapter *Adapter,
@@ -106,7 +97,10 @@ void PHY_SetBBReg_8723B(
 	return;
 #endif
 
-	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg(): RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data)); */
+	/**
+	 * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg():
+	 * RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data));
+	 */
 
 	if (BitMask != bMaskDWord) { /* if not "double word" write */
 		OriginalValue = rtw_read32(Adapter, RegAddr);
@@ -184,27 +178,21 @@ static u32 phy_RFSerialRead_8723B(
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
+ *	phy_RFSerialWrite_8723B - Write data to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@Offset:	The target address to be read
+ *	@Data:	The new register Data in the target bit position
+ *			of the target to be read
+ *
+ * .. Note::		Threre are three types of serial operations:
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
@@ -225,7 +213,7 @@ static u32 phy_RFSerialRead_8723B(
  *
  *
  *
-*/
+ */
 static void phy_RFSerialWrite_8723B(
 	struct adapter *Adapter,
 	enum RF_PATH eRFPath,
@@ -249,33 +237,33 @@ static void phy_RFSerialWrite_8723B(
 	/*  Put write addr in [5:0]  and write data in [31:16] */
 	/*  */
 	/* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
-	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;	/*  T65 RF */
+	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;
+	/*T65 RF */
 
 	/*  */
 	/*  Write Operation */
 	/*  */
 	PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
-	/* RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath, pPhyReg->rf3wireOffset, DataAndAddr)); */
+	/**
+	  *RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath,
+	  *pPhyReg->rf3wireOffset, DataAndAddr));
+	  */
 
 }
 
 
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
+ *	PHY_QueryRFReg - Query "Specific bits" to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@RegAdd:	The target address to be read
+ *	@BitMask:	The target bit position in the target address
+ *				to be read
+ *
+ *	Return:	Readback value
+ *
+ * .. Note::		This function is equal to "GetRFRegSetting" in PHY programming guide
+ */
 u32 PHY_QueryRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -296,23 +284,17 @@ u32 PHY_QueryRFReg_8723B(
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
+ *	PHY_SetRFReg - Write "Specific bits" to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@RegAddr:	The target address to be modified
+ *	@BitMask:	The target bit position in the target address
+ *				to be modified
+ *	@Data:	The new register Data in the target bit position
+ *								of the target address
+ *
+ *	.. Note::		This function is equal to "PutRFRegSetting" in PHY programming guide
+ */
 void PHY_SetRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -344,15 +326,7 @@ void PHY_SetRFReg_8723B(
 
 
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
+ *	PHY_MACConfig8192C - Condig MAC by header file or parameter file.
  *
  * Revised History:
  *  When		Who		Remark
@@ -369,17 +343,12 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
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
+ *	phy_InitBBRFRegisterDefinition - Initialize Register definition offset for
+ *									Radio Path A/B/C/D
+ *	@Adapter:
+ *
+ *	.. Note::		The initialization value is constant and it should never be changes
+ */
 static void phy_InitBBRFRegisterDefinition(struct adapter *Adapter)
 {
 	struct hal_com_data		*pHalData = GET_HAL_DATA(Adapter);
@@ -675,6 +644,7 @@ static void phy_SetRegBW_8723B(
 )
 {
 	u16 RegRfMod_BW, u2tmp = 0;
+
 	RegRfMod_BW = rtw_read16(Adapter, REG_TRXPTCL_CTL_8723B);
 
 	switch (CurrentBW) {
@@ -789,7 +759,7 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
 
-/* 			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
+	/*PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
 
 		PHY_SetBBReg(Adapter, rOFDM0_TxPseudoNoiseWgt, (BIT31|BIT30), 0x0);
 		break;
@@ -800,7 +770,10 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
 
 		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x1);
 
-		/*  Set Control channel to upper or lower. These settings are required only for 40MHz */
+		/**
+		 * Set Control channel to upper or lower. These settings are required
+		 * only for 40MHz
+		 */
 		PHY_SetBBReg(Adapter, rCCK0_System, bCCKSideBand, (pHalData->nCur40MhzPrimeSC>>1));
 
 		PHY_SetBBReg(Adapter, rOFDM1_LSTF, 0xC00, pHalData->nCur40MhzPrimeSC);
-- 
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
