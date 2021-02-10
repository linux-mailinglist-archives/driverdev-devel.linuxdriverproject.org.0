Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B193316FB1
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 20:10:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24FCE86FB2;
	Wed, 10 Feb 2021 19:10:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xhlYry8xSTJs; Wed, 10 Feb 2021 19:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 20D2C86F84;
	Wed, 10 Feb 2021 19:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9524D1BF403
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 900E186F80
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 19:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-6QnHZreJOY for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 19:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D25A86F75
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 19:10:21 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id q20so1895379pfu.8
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 11:10:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=6uhamtRDVQ5W7PuL+OxgzVNnY2TIw/W8O7lDC5/cd6Y=;
 b=FO6+RRCbF4nreyUlgeqcWcVYmd2URuO40SNQGPO3uxEyQQQc0e3Jd1u+N20XqeOMub
 ZpqKH92iprdXvpO1SNgEiz1DZhCfin97od1ZzsKsWl7Dt+I3utbi8y6NLazRYUWixiZN
 WzlMR72rv8koENLWnu4n3U+Br0aubvUfTCGcGZy8rfwfSW0Zh82wRqHHDiGBqYFXZz7h
 Xs7Dno2teD8bFPiae+q7lWSh7LO26a7svU1t0bcRcm1WCJn4cDcde5ZhI1YlNnsaaSzn
 +1LsvD7zunt05Ffv0GwqIcomvoxqzV+4p80hWZsJNo5y5s3TAdDG/xLFYhoJUqLTn1TU
 jxPg==
X-Gm-Message-State: AOAM53188yt6qBthsPZdYYlqBwutjw7FLfPq3892NfxxP+o1M5UjvxqG
 RzrsJ90DMmNQmH5PVhK+eM8=
X-Google-Smtp-Source: ABdhPJy23PXtEfK2WIswIgCWg1HLrUZnehshOr1ru8LGxo6fJg0NJ/9/O/bI5O1T7S2fiu2U61FwYA==
X-Received: by 2002:a62:5a07:0:b029:1cf:f54d:6e59 with SMTP id
 o7-20020a625a070000b02901cff54d6e59mr4556005pfb.49.1612984220926; 
 Wed, 10 Feb 2021 11:10:20 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.155.38])
 by smtp.gmail.com with ESMTPSA id h15sm3105444pfo.193.2021.02.10.11.10.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 11:10:20 -0800 (PST)
Date: Thu, 11 Feb 2021 00:40:15 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] staging: rtl8723bs: fix function comments to follow kernel-doc
Message-ID: <YCQvl3+KviQNh2JI@karthik-strix-linux.karthek.com>
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
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 185 +++++++-----------
 1 file changed, 73 insertions(+), 112 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index cf23414d7..1fd504181 100644
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
+ *	phy_RFSerialWrite_8723B - Write data to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@Offset:	The target address to be read
+ *	@Data:	The new register Data in the target bit position
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
+ *	PHY_QueryRFReg - Query "Specific bits" to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@RegAdd:	The target address to be read
+ *	@BitMask:	The target bit position in the target address
+ *				to be read
+ *
+ *	Return:	Readback value
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
+ *	PHY_SetRFReg - Write "Specific bits" to RF register (page 8~).
+ *	@Adapter:
+ *	@eRFPath:	Radio path of A/B/C/D
+ *	@RegAddr:	The target address to be modified
+ *	@BitMask:	The target bit position in the target address
+ *				to be modified
+ *	@Data:	The new register Data in the target bit position
+ *								of the target address
+ *
+ *	.. Note::	This function is equal to "PutRFRegSetting" in PHY
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
+ *	PHY_MACConfig8192C - Condig MAC by header file or parameter file.
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
+ *	phy_InitBBRFRegisterDefinition - Initialize Register definition offset for
+ *									Radio Path A/B/C/D
+ *	@Adapter:
+ *
+ *	.. Note::		The initialization value is constant and it should never be changes
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
