Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B59D0316096
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 09:07:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 460766F72E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 08:07:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jr5ex19GlbdH for <lists+driverdev-devel@lfdr.de>;
	Wed, 10 Feb 2021 08:07:51 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 764BA6F76B; Wed, 10 Feb 2021 08:07:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4993B6F5D0;
	Wed, 10 Feb 2021 08:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 105481BF330
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:07:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C5DA85641
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 08:07:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQNbAnyQghSw for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 08:07:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE04E855F6
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 08:07:07 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11A84hmg114080;
 Wed, 10 Feb 2021 08:06:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tBdEFBY3JFdmpQUoen8tVddgbKBIEwa+FNsUaftCVCg=;
 b=I5jwyy8CJl4mr0e5NoqLbmnmonvJZ9ci4+oE5eyC3cGqxXErPNahODyScsm3p0PJQlk0
 ntcDIiquG3V4pRuj0KHGkKPauzn6fo12DDW32gqda2PGaMF5023ilLCLdwAGr+6MayAl
 C4XEfte0oj4XLrm5Mc8KpjNvKHXzQeF7SJz2SNK/h3nXQ2V9THHDuaawjVJqxgkCAFVj
 z43IeXYvrZplUHiP81rQ1QN6KErL9mQTdHAZN+Lr6+gZKAmlOC2ueJEF0mQbIC126a5t
 gsVWBTgdD0g4KuzkOoRMu7M7wWDJafGts9x72liP3fzq1VmnJeoSulPebEa6PsH/jE8m kQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 36hgmajfpu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 08:06:58 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11A855NJ022018;
 Wed, 10 Feb 2021 08:06:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 36j51x8b44-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Feb 2021 08:06:46 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11A86iwr008654;
 Wed, 10 Feb 2021 08:06:44 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 00:06:43 -0800
Date: Wed, 10 Feb 2021 11:06:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: fix function comments to follow
 kernel-doc
Message-ID: <20210210080636.GT2696@kadam>
References: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCL6vrGPQ0uDZUI8@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100083
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9890
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 spamscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102100083
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 10, 2021 at 02:42:30AM +0530, karthik alapati wrote:
> fix checkpatch.pl warning for "block comments should align the
>  * on each line" and make function comments follow kernel-doc
> 
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 209 ++++++++----------
>  1 file changed, 91 insertions(+), 118 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> index cf23414d7..b7fca881c 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> @@ -20,16 +20,11 @@
>  #define MAX_DOZE_WAITING_TIMES_9x 64
>  
>  /**
> -* Function:	phy_CalculateBitShift
> -*
> -* OverView:	Get shifted position of the BitMask
> -*
> -* Input:
> -*		u32 	BitMask,
> -*
> -* Output:	none
> -* Return:		u32 	Return the shift bit bit position of the mask
> -*/
> + *	phy_CalculateBitShift - Get shifted position of the BitMask.
> + *	@BitMask: Bitmask.
> + *
> + *	Return:	Return the shift bit position of the mask
> + */
>  static	u32 phy_CalculateBitShift(u32 BitMask)
>  {
>  	u32 i;
> @@ -43,19 +38,17 @@ static	u32 phy_CalculateBitShift(u32 BitMask)
>  
>  
>  /**
> -* Function:	PHY_QueryBBReg
> -*
> -* OverView:	Read "specific bits" from BB register
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*		u32 		RegAddr,	The target address to be readback
> -*		u32 		BitMask		The target bit position in the target address
> -*							to be readback
> -* Output:	None
> -* Return:		u32 		Data		The readback register value
> -* Note:		This function is equal to "GetRegSetting" in PHY programming guide
> -*/
> + *	PHY_QueryBBReg - Read "specific bits" from BB register.
> + *	@Adapter:
> + *	@RegAddr:	The target address to be readback
> + *	@BitMask:	The target bit position in the target address
> + *				to be readback
> + *
> + * Return:	The readback register value
> + *
> + * .. Note::	This function is equal to "GetRegSetting" in PHY programming
> + *			guide
> + */
>  u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
>  {
>  	u32 OriginalValue, BitShift;
> @@ -64,7 +57,10 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
>  	return 0;
>  #endif
>  
> -	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg(): RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask)); */
> +	/**
> +	 * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg():
> +	 * RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask));
> +	 */

Just delete this (in a separate patch).

>  
>  	OriginalValue = rtw_read32(Adapter, RegAddr);
>  	BitShift = phy_CalculateBitShift(BitMask);
> @@ -75,22 +71,17 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
>  
>  
>  /**
> -* Function:	PHY_SetBBReg
> -*
> -* OverView:	Write "Specific bits" to BB register (page 8~)
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*		u32 		RegAddr,	The target address to be modified
> -*		u32 		BitMask		The target bit position in the target address
> -*								to be modified
> -*		u32 		Data		The new register value in the target bit position
> -*								of the target address
> -*
> -* Output:	None
> -* Return:		None
> -* Note:		This function is equal to "PutRegSetting" in PHY programming guide
> -*/
> + *	PHY_SetBBReg - Write "Specific bits" to BB register (page 8~).
> + *	@Adapter:
> + *	@RegAddr:	The target address to be modified
> + *	@BitMask:	The target bit position in the target address
> + *				to be modified
> + *	@Data:		The new register value in the target bit position
> + *				of the target address
> + *
> + * .. Note::	This function is equal to "PutRegSetting" in PHY programming
> + *			guide
> + */
>  
>  void PHY_SetBBReg_8723B(
>  	struct adapter *Adapter,
> @@ -106,7 +97,10 @@ void PHY_SetBBReg_8723B(
>  	return;
>  #endif
>  
> -	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg(): RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data)); */
> +	/**
> +	 * RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg():
> +	 * RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data));
> +	 */

Delete.

>  
>  	if (BitMask != bMaskDWord) { /* if not "double word" write */
>  		OriginalValue = rtw_read32(Adapter, RegAddr);
> @@ -184,27 +178,21 @@ static u32 phy_RFSerialRead_8723B(
>  }
>  
>  /**
> -* Function:	phy_RFSerialWrite_8723B
> -*
> -* OverView:	Write data to RF register (page 8~)
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*		RF_PATH			eRFPath,	Radio path of A/B/C/D
> -*		u32 		Offset,		The target address to be read
> -*		u32 		Data		The new register Data in the target bit position
> -*								of the target to be read
> -*
> -* Output:	None
> -* Return:		None
> -* Note:		Threre are three types of serial operations:
> -*		1. Software serial write
> -*		2. Hardware LSSI-Low Speed Serial Interface
> -*		3. Hardware HSSI-High speed
> -*		serial write. Driver need to implement (1) and (2).
> -*		This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
> + *	phy_RFSerialWrite_8723B - Write data to RF register (page 8~).
> + *	@Adapter:
> + *	@eRFPath:	Radio path of A/B/C/D
> + *	@Offset:	The target address to be read
> + *	@Data:	The new register Data in the target bit position
> + *			of the target to be read
> + *
> + * .. Note::		Threre are three types of serial operations:
> + *		1. Software serial write
> + *		2. Hardware LSSI-Low Speed Serial Interface
> + *		3. Hardware HSSI-High speed
> + *		serial write. Driver need to implement (1) and (2).
> + *		This function is equal to the combination of RF_ReadReg() and  RFLSSIRead()
>   *
> - * Note:		  For RF8256 only
> + * .. Note::		  For RF8256 only
>   *		 The total count of RTL8256(Zebra4) register is around 36 bit it only employs
>   *		 4-bit RF address. RTL8256 uses "register mode control bit" (Reg00[12], Reg00[10])
>   *		 to access register address bigger than 0xf. See "Appendix-4 in PHY Configuration
> @@ -225,7 +213,7 @@ static u32 phy_RFSerialRead_8723B(
>   *
>   *
>   *
> -*/
> + */
>  static void phy_RFSerialWrite_8723B(
>  	struct adapter *Adapter,
>  	enum RF_PATH eRFPath,
> @@ -249,33 +237,33 @@ static void phy_RFSerialWrite_8723B(
>  	/*  Put write addr in [5:0]  and write data in [31:16] */
>  	/*  */
>  	/* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
> -	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;	/*  T65 RF */
> +	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;
> +	/*T65 RF */

This doesn't make sense at all now.

>  
>  	/*  */
>  	/*  Write Operation */
>  	/*  */
>  	PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);
> -	/* RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath, pPhyReg->rf3wireOffset, DataAndAddr)); */
> +	/**
> +	  *RTPRINT(FPHY, PHY_RFW, ("RFW-%d Addr[0x%lx]= 0x%lx\n", eRFPath,
> +	  *pPhyReg->rf3wireOffset, DataAndAddr));
> +	  */

Delete.

>  
>  }
>  
>  
>  /**
> -* Function:	PHY_QueryRFReg
> -*
> -* OverView:	Query "Specific bits" to RF register (page 8~)
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*		RF_PATH			eRFPath,	Radio path of A/B/C/D
> -*		u32 		RegAddr,	The target address to be read
> -*		u32 		BitMask		The target bit position in the target address
> -*								to be read
> -*
> -* Output:	None
> -* Return:		u32 		Readback value
> -* Note:		This function is equal to "GetRFRegSetting" in PHY programming guide
> -*/
> + *	PHY_QueryRFReg - Query "Specific bits" to RF register (page 8~).
> + *	@Adapter:
> + *	@eRFPath:	Radio path of A/B/C/D
> + *	@RegAdd:	The target address to be read
> + *	@BitMask:	The target bit position in the target address
> + *				to be read
> + *
> + *	Return:	Readback value
> + *
> + * .. Note::		This function is equal to "GetRFRegSetting" in PHY programming guide
> + */
>  u32 PHY_QueryRFReg_8723B(
>  	struct adapter *Adapter,
>  	u8 eRFPath,
> @@ -296,23 +284,17 @@ u32 PHY_QueryRFReg_8723B(
>  }
>  
>  /**
> -* Function:	PHY_SetRFReg
> -*
> -* OverView:	Write "Specific bits" to RF register (page 8~)
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*		RF_PATH			eRFPath,	Radio path of A/B/C/D
> -*		u32 		RegAddr,	The target address to be modified
> -*		u32 		BitMask		The target bit position in the target address
> -*								to be modified
> -*		u32 		Data		The new register Data in the target bit position
> -*								of the target address
> -*
> -* Output:	None
> -* Return:		None
> -* Note:		This function is equal to "PutRFRegSetting" in PHY programming guide
> -*/
> + *	PHY_SetRFReg - Write "Specific bits" to RF register (page 8~).
> + *	@Adapter:
> + *	@eRFPath:	Radio path of A/B/C/D
> + *	@RegAddr:	The target address to be modified
> + *	@BitMask:	The target bit position in the target address
> + *				to be modified
> + *	@Data:	The new register Data in the target bit position
> + *								of the target address
> + *
> + *	.. Note::		This function is equal to "PutRFRegSetting" in PHY programming guide


Don't put a huge white space after the ::.

regards,
dan carpenter

> + */
>  void PHY_SetRFReg_8723B(
>  	struct adapter *Adapter,
>  	u8 eRFPath,
> @@ -344,15 +326,7 @@ void PHY_SetRFReg_8723B(
>  
>  
>  /*-----------------------------------------------------------------------------
> - * Function:    PHY_MACConfig8192C
> - *
> - * Overview:	Condig MAC by header file or parameter file.
> - *
> - * Input:       NONE
> - *
> - * Output:      NONE
> - *
> - * Return:      NONE
> + *	PHY_MACConfig8192C - Condig MAC by header file or parameter file.
>   *
>   * Revised History:
>   *  When		Who		Remark
> @@ -369,17 +343,12 @@ s32 PHY_MACConfig8723B(struct adapter *Adapter)
>  }
>  
>  /**
> -* Function:	phy_InitBBRFRegisterDefinition
> -*
> -* OverView:	Initialize Register definition offset for Radio Path A/B/C/D
> -*
> -* Input:
> -*		struct adapter *	Adapter,
> -*
> -* Output:	None
> -* Return:		None
> -* Note:		The initialization value is constant and it should never be changes
> -*/
> + *	phy_InitBBRFRegisterDefinition - Initialize Register definition offset for
> + *									Radio Path A/B/C/D
> + *	@Adapter:
> + *
> + *	.. Note::		The initialization value is constant and it should never be changes
> + */
>  static void phy_InitBBRFRegisterDefinition(struct adapter *Adapter)
>  {
>  	struct hal_com_data		*pHalData = GET_HAL_DATA(Adapter);
> @@ -675,6 +644,7 @@ static void phy_SetRegBW_8723B(
>  )
>  {
>  	u16 RegRfMod_BW, u2tmp = 0;
> +


This is not related to comments.  Do it in a separate patch.

>  	RegRfMod_BW = rtw_read16(Adapter, REG_TRXPTCL_CTL_8723B);
>  
>  	switch (CurrentBW) {
> @@ -789,7 +759,7 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
>  
>  		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x0);
>  
> -/* 			PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */
> +	/*PHY_SetBBReg(Adapter, rFPGA0_AnalogParameter2, BIT10, 1); */

This format is wrong.  Anyway, just delete the commented out code.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
