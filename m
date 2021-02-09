Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 717FD315655
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 19:53:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B5D4861BC;
	Tue,  9 Feb 2021 18:53:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-p2ynh4J1SM; Tue,  9 Feb 2021 18:53:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B67086144;
	Tue,  9 Feb 2021 18:53:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 915451BF616
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 18:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8D21E86A0D
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 18:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqLnUrBjRBTG for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 18:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6BFD7869C3
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 18:53:22 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id cv23so2078325pjb.5
 for <devel@driverdev.osuosl.org>; Tue, 09 Feb 2021 10:53:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=3x8SHWviOX06noXl3VoCAEVkKd/3xhRiiOCeeg42KP0=;
 b=D7gM2sHW5Ob2HmPWOw49KK8keHLdykS812cqzJW4U4/8R8+7x63BjiM0wYMZ/Y/X1G
 317QnyKLoZsznGzYOVvLAEubrkFkdhywT3pT9Q+XEPblmtcfNzKMt+bbnQQRFg06skfa
 xAiIE3Z7ankVPTP6Nr3onYxts327vXqJhb2/LXdzJUkX/wHaqa9uGUO0P/5Hsd41y6ws
 9ws9/rwuRfgtG/f1N+LdoGZNK1sJIRLRmj6PsOUEr2nXyE55WRyPrcQ/b/uGnRXEXqoX
 D8hRhVlPu7zilwHKRepyWN4H1LhjFIhjhXYRHxLzB7yczAGj53qsWpcktPnWfYkLzEYo
 ixHg==
X-Gm-Message-State: AOAM5320332dH/NJIM17UZW35LPsi640WlQSZTDty3e1D4J2sdLdWH60
 iBx9/2kZY5TX14Gj3pN7toQ=
X-Google-Smtp-Source: ABdhPJwZVdfjNVUGRwkBl370CX/LHOszp4Jlj5KSRT0z7W0XHTPZ0DpFanbL2vGMkHnENEY0dX6P4w==
X-Received: by 2002:a17:90b:1804:: with SMTP id
 lw4mr5499762pjb.141.1612896802116; 
 Tue, 09 Feb 2021 10:53:22 -0800 (PST)
Received: from karthik-strix-linux.karthek.com ([192.140.154.47])
 by smtp.gmail.com with ESMTPSA id 18sm3643628pfy.46.2021.02.09.10.53.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Feb 2021 10:53:21 -0800 (PST)
Date: Wed, 10 Feb 2021 00:23:17 +0530
From: karthik alapati <mail@karthek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] staging: rtl8723bs: fix block comments alignment
Message-ID: <YCLaHXD/sUKM5HZE@karthik-strix-linux.karthek.com>
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

fix checkpatch.pl warning for "block comments should align the * on each line"

Signed-off-by: karthik alapati <mail@karthek.com>
---
 .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 204 +++++++++---------
 1 file changed, 102 insertions(+), 102 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
index cf23414d7..003f954c2 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
@@ -20,16 +20,16 @@
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
+ * Function:	phy_CalculateBitShift
+ *
+ * OverView:	Get shifted position of the BitMask
+ *
+ * Input:
+ *		u32 	BitMask,
+ *
+ * Output:	none
+ * Return:		u32 	Return the shift bit bit position of the mask
+ */
 static	u32 phy_CalculateBitShift(u32 BitMask)
 {
 	u32 i;
@@ -43,19 +43,19 @@ static	u32 phy_CalculateBitShift(u32 BitMask)
 
 
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
+ * Function:	PHY_QueryBBReg
+ *
+ * OverView:	Read "specific bits" from BB register
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *		u32 		RegAddr,	The target address to be readback
+ *		u32 		BitMask		The target bit position in the target address
+ *							to be readback
+ * Output:	None
+ * Return:		u32 		Data		The readback register value
+ * Note:		This function is equal to "GetRegSetting" in PHY programming guide
+ */
 u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 {
 	u32 OriginalValue, BitShift;
@@ -75,22 +75,22 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
 
 
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
+ * Function:	PHY_SetBBReg
+ *
+ * OverView:	Write "Specific bits" to BB register (page 8~)
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *		u32 		RegAddr,	The target address to be modified
+ *		u32 		BitMask		The target bit position in the target address
+ *								to be modified
+ *		u32 		Data		The new register value in the target bit position
+ *								of the target address
+ *
+ * Output:	None
+ * Return:		None
+ * Note:		This function is equal to "PutRegSetting" in PHY programming guide
+ */
 
 void PHY_SetBBReg_8723B(
 	struct adapter *Adapter,
@@ -184,25 +184,25 @@ static u32 phy_RFSerialRead_8723B(
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
+ * Function:	phy_RFSerialWrite_8723B
+ *
+ * OverView:	Write data to RF register (page 8~)
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *		RF_PATH			eRFPath,	Radio path of A/B/C/D
+ *		u32 		Offset,		The target address to be read
+ *		u32 		Data		The new register Data in the target bit position
+ *								of the target to be read
+ *
+ * Output:	None
+ * Return:		None
+ * Note:		Threre are three types of serial operations:
+ *		1. Software serial write
+ *		2. Hardware LSSI-Low Speed Serial Interface
+ *		3. Hardware HSSI-High speed
+ *		serial write. Driver need to implement (1) and (2).
+ *		This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
  *
  * Note:		  For RF8256 only
  *		 The total count of RTL8256(Zebra4) register is around 36 bit it only employs
@@ -225,7 +225,7 @@ static u32 phy_RFSerialRead_8723B(
  *
  *
  *
-*/
+ */
 static void phy_RFSerialWrite_8723B(
 	struct adapter *Adapter,
 	enum RF_PATH eRFPath,
@@ -261,21 +261,21 @@ static void phy_RFSerialWrite_8723B(
 
 
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
+ * Function:	PHY_QueryRFReg
+ *
+ * OverView:	Query "Specific bits" to RF register (page 8~)
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *		RF_PATH			eRFPath,	Radio path of A/B/C/D
+ *		u32 		RegAddr,	The target address to be read
+ *		u32 		BitMask		The target bit position in the target address
+ *								to be read
+ *
+ * Output:	None
+ * Return:		u32 		Readback value
+ * Note:		This function is equal to "GetRFRegSetting" in PHY programming guide
+ */
 u32 PHY_QueryRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -296,23 +296,23 @@ u32 PHY_QueryRFReg_8723B(
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
+ * Function:	PHY_SetRFReg
+ *
+ * OverView:	Write "Specific bits" to RF register (page 8~)
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *		RF_PATH			eRFPath,	Radio path of A/B/C/D
+ *		u32 		RegAddr,	The target address to be modified
+ *		u32 		BitMask		The target bit position in the target address
+ *								to be modified
+ *		u32 		Data		The new register Data in the target bit position
+ *								of the target address
+ *
+ * Output:	None
+ * Return:		None
+ * Note:		This function is equal to "PutRFRegSetting" in PHY programming guide
+ */
 void PHY_SetRFReg_8723B(
 	struct adapter *Adapter,
 	u8 eRFPath,
@@ -369,17 +369,17 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
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
+ * Function:	phy_InitBBRFRegisterDefinition
+ *
+ * OverView:	Initialize Register definition offset for Radio Path A/B/C/D
+ *
+ * Input:
+ *		struct adapter *	Adapter,
+ *
+ * Output:	None
+ * Return:		None
+ * Note:		The initialization value is constant and it should never be changes
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
