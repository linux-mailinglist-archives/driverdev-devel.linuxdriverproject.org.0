Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4605D3185E4
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 08:54:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6387487488;
	Thu, 11 Feb 2021 07:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odFv5sAIIVbm; Thu, 11 Feb 2021 07:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D556E87518;
	Thu, 11 Feb 2021 07:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C07A1BF9B5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:54:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 950566F4E4
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 07:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dD82VuOyB2EC for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 07:54:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id A37A26F501; Thu, 11 Feb 2021 07:54:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1FC236F4E4
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 07:54:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11B7sKgo074906;
 Thu, 11 Feb 2021 07:54:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=i6n7sXbk2/5jgSAk6kvAAiFXKSfaZfj+0X2zJAxZBtg=;
 b=hF3SEs7WuSchO3btJZEQDg7xsfS5SHDbw52HUq1pGKzDuKmoykqQQ32Zo1eC87WCbnhq
 Bpsn/k2W+JZfLOo1IuOM1GlMn+p/DBH1S83Pz6/kefPDJayRtwchdEuoBdJCPSrMF6dL
 4fh6vO/GLTyUoHXmQqdRow6Vi0Z6Y6Zi9ZVfa4J4arJXtuv24eHwxypZzhgDAFC7G1FI
 /spfYTndRpfJL+Q5Bx14mxuGnbU6wbN78M5HXn3LPeWPwFBTQXvkI5pwSizxTNRcQyem
 fuvOoV1WmH5ws51NzqtEsxumX4obdsvuP8j7JkfcpvIU0ywdCdgeiUjRTU1c2Rk0D5t6 /g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 36hkrn6cg0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 07:54:20 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11B7pW0D132884;
 Thu, 11 Feb 2021 07:54:18 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 36j513qbmn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Feb 2021 07:54:18 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11B7sH8B004513;
 Thu, 11 Feb 2021 07:54:17 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Feb 2021 23:54:15 -0800
Date: Thu, 11 Feb 2021 10:53:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: karthik alapati <mail@karthek.com>
Subject: Re: [PATCH] staging: rtl8723bs: remove obsolete commented out code
Message-ID: <20210211075356.GC2696@kadam>
References: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCQvsdlnbnQN4Ruf@karthik-strix-linux.karthek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 spamscore=0 suspectscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102110070
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9891
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 impostorscore=0 mlxscore=0
 suspectscore=0 mlxlogscore=999 adultscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102110071
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

On Thu, Feb 11, 2021 at 12:40:41AM +0530, karthik alapati wrote:
> fix some checkpatch "Block comments use * on subsequent lines"
> warnings and remove obsolete code
> 

This isn't the correct commit message.  It should say something like:
"There is a bunch of messy, commented out code.  Just delete it."


> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: karthik alapati <mail@karthek.com>
> ---
>  .../staging/rtl8723bs/hal/rtl8723b_phycfg.c   | 44 ++++---------------
>  1 file changed, 9 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> index 1fd504181..3d22bd304 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_phycfg.c
> @@ -57,8 +57,6 @@ u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
>  	return 0;
>  #endif
>  
> -	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_QueryBBReg(): RegAddr(%#lx), BitMask(%#lx)\n", RegAddr, BitMask)); */
> -
>  	OriginalValue = rtw_read32(Adapter, RegAddr);
>  	BitShift = phy_CalculateBitShift(BitMask);
>  
> @@ -94,8 +92,6 @@ void PHY_SetBBReg_8723B(
>  	return;
>  #endif
>  
> -	/* RT_TRACE(COMP_RF, DBG_TRACE, ("--->PHY_SetBBReg(): RegAddr(%#lx), BitMask(%#lx), Data(%#lx)\n", RegAddr, BitMask, Data)); */
> -
>  	if (BitMask != bMaskDWord) { /* if not "double word" write */
>  		OriginalValue = rtw_read32(Adapter, RegAddr);
>  		BitShift = phy_CalculateBitShift(BitMask);
> @@ -159,13 +155,9 @@ static u32 phy_RFSerialRead_8723B(
>  	if (RfPiEnable) {
>  		/*  Read from BBreg8b8, 12 bits for 8190, 20bits for T65 RF */
>  		retValue = PHY_QueryBBReg(Adapter, pPhyReg->rfLSSIReadBackPi|MaskforPhySet, bLSSIReadBackData);
> -
> -		/* RT_DISP(FINIT, INIT_RF, ("Readback from RF-PI : 0x%x\n", retValue)); */
>  	} else {
>  		/* Read from BBreg8a0, 12 bits for 8190, 20 bits for T65 RF */
>  		retValue = PHY_QueryBBReg(Adapter, pPhyReg->rfLSSIReadBack|MaskforPhySet, bLSSIReadBackData);
> -
> -		/* RT_DISP(FINIT, INIT_RF, ("Readback from RF-SI : 0x%x\n", retValue)); */
>  	}
>  	return retValue;
>  
> @@ -230,15 +222,13 @@ static void phy_RFSerialWrite_8723B(
>  	/*  */
>  	/*  Put write addr in [5:0]  and write data in [31:16] */
>  	/*  */
> -	/* DataAndAddr = (Data<<16) | (NewOffset&0x3f); */
> -	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;	/*  T65 RF */
> +	DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;
> +	/*  T65 RF */

The patch is supposed to be deleting code so we don't want any + lines
which change code.  Only deletes.  Also don't put the coment after the
the code which it's commenting on.

> @@ -761,20 +745,20 @@ static void phy_PostSetBwMode8723B(struct adapter *Adapter)
>  
>  		PHY_SetBBReg(Adapter, rFPGA1_RFMOD, bRFMOD, 0x1);
>  
> -		/*  Set Control channel to upper or lower. These settings are required only for 40MHz */
> +		/**
> +		 * Set Control channel to upper or lower. These settings are required only
> +		 * for 40MHz
> +		 */

Yeah.  Get rid of these plus lines and resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
