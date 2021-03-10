Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D68D33457E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 18:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8294D60609;
	Wed, 10 Mar 2021 17:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4s3Qjco903J; Wed, 10 Mar 2021 17:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 681B660608;
	Wed, 10 Mar 2021 17:48:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A2C1F1BF400
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 17:48:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91BED45CE4
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 17:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GoKiWa6iDdLX for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 17:48:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C65E42C9C
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 17:48:41 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12AHfi88091752;
 Wed, 10 Mar 2021 17:48:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2nFXaqO+IMxgomZInrb6mZnb5Zaqy4wyO3kAeFUfVco=;
 b=jlDczlIN4t/LD2PDUCtrKZeQo2NYqTSJrSLdvnO0Z2RTCeqUoWj7b9DyxlEP1aNsp3bv
 vWQo8N/9bQmvbMZDxn5qoPxG2DxH1RYOslQT12+EQtLSDxmOB7/+Vm8Na3LQM9ISrsaE
 OiVVCZ6CcThwyf02ZggnEQ+/oDbpGu4HNNVOfOwdfV/HAZtL4zedTjL7hVzasxD+6hCx
 5UvcPDL2UmtwEFnoA6XjIWIjavItOs4VTuVMPLWIGHbIqK4O5DwqB8TugE+wdo0x+Xho
 xBJPaplDXa6OMi+OgfBXQvxyq5UPz5TI8Wvl4NkB9c2cSl4GOak+L1qE70K8F33GT7n2 XQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 3742cnbtkn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Mar 2021 17:48:40 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12AHf6BO092016;
 Wed, 10 Mar 2021 17:48:39 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 374kgtpv0k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 10 Mar 2021 17:48:38 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 12AHmb0h011650;
 Wed, 10 Mar 2021 17:48:37 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 10 Mar 2021 09:48:37 -0800
Date: Wed, 10 Mar 2021 20:48:30 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Fabio Aiuto <fabioaiuto83@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: align comments
Message-ID: <20210310174830.GM2087@kadam>
References: <20210310153717.GA5741@agape.jhs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310153717.GA5741@agape.jhs>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9919
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 adultscore=0
 malwarescore=0 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103100085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9919
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0
 clxscore=1011 phishscore=0 adultscore=0 mlxlogscore=999 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103100085
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 10, 2021 at 04:37:21PM +0100, Fabio Aiuto wrote:
> fix the following checkpatch warnings:
> 
> WARNING: Block comments use * on subsequent lines
> +	/*
> +		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> --
> WARNING: Block comments use * on subsequent lines
> +/*
> +op_mode
> 
> Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_ap.c | 28 ++++++++++++-------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index b6f944b37b08..3a0e4f64466a 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -721,9 +721,9 @@ static void update_hw_ht_param(struct adapter *padapter)
>  
>  	/* handle A-MPDU parameter field */
>  	/*

Combine these two comments into one mult-line comment.

> -		AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> -		AMPDU_para [4:2]:Min MPDU Start Spacing
> -	*/
> +	 *	AMPDU_para [1:0]:Max AMPDU Len => 0:8k , 1:16k, 2:32k, 3:64k
> +	 *	AMPDU_para [4:2]:Min MPDU Start Spacing
> +	 */
>  	max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x03;
>  
>  	min_MPDU_spacing = (
> @@ -1815,17 +1815,17 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
>  }
>  
>  /*
> -op_mode
> -Set to 0 (HT pure) under the following conditions
> -	- all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> -	- all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> -Set to 1 (HT non-member protection) if there may be non-HT STAs
> -	in both the primary and the secondary channel
> -Set to 2 if only HT STAs are associated in BSS,
> -	however and at least one 20 MHz HT STA is associated
> -Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> -	(currently non-GF HT station is considered as non-HT STA also)
> -*/
> + *op_mode

You need to have a space character after the '*'.

/*
 * op_mode
 * Set to ...

> + *Set to 0 (HT pure) under the following conditions
> + *	 - all STAs in the BSS are 20/40 MHz HT in 20/40 MHz BSS or
> + *	 - all STAs in the BSS are 20 MHz HT in 20 MHz BSS
> + *Set to 1 (HT non-member protection) if there may be non-HT STAs
> + *	 in both the primary and the secondary channel
> + *Set to 2 if only HT STAs are associated in BSS,
> + *	 however and at least one 20 MHz HT STA is associated
> + *Set to 3 (HT mixed mode) when one or more non-HT STAs are associated
> + *	 (currently non-GF HT station is considered as non-HT STA also)
> + */

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
