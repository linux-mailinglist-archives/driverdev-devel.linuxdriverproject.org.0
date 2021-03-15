Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC79733BB01
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 15:14:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF71A6F575;
	Mon, 15 Mar 2021 14:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GMkKMt2omNPp; Mon, 15 Mar 2021 14:14:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 260E36F506;
	Mon, 15 Mar 2021 14:14:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 08F6B1BF29D
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:14:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC8D6430EB
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 14:14:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pd3HxkpjIvoZ for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 14:14:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3EFD42C2D
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 14:14:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12FEB1OC062830;
 Mon, 15 Mar 2021 14:14:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=pJsgTPKYAOOdB7CVIagpkc0oTP8Mfg6R5Brzhnb27RE=;
 b=RoDwtfVAc14OLhYQ9jan3cMvDZBU8UX4PnjWybuveH52huMoQv56TJ2Nw+evQzlKBvPe
 kJdrnoPD/PJuNB11xYZvNWk4A1dLpnXock4COu07AmLSSTCpoCHfBxO1wVo4BOIuikx2
 LzsHDvPeQr2gxjCxyNf2qRvXI0Ec0cmNWuRSJ57jl9TCZLibofjLXy++7kHFcrpXWMBr
 XslDaQvvBXcLmeSv7iFv3iR9nNwWlzjaRn9kzMjgkb6lHGi3tBYTf/RzTgMawGF5f801
 nxD6MNGD9ufjdV7SMxTDjyl51Q/0P4DfU7LYbUOxtWDATvJ0YvHLUSlxUZqb/sn9dPWo gA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 378nbm3yuh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Mar 2021 14:14:26 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 12FEBbsO007086;
 Mon, 15 Mar 2021 14:14:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 37979ywf4r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Mar 2021 14:14:25 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 12FEENaj007691;
 Mon, 15 Mar 2021 14:14:23 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Mar 2021 07:14:22 -0700
Date: Mon, 15 Mar 2021 17:14:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Marco Cesati <marcocesati@gmail.com>
Subject: Re: [PATCH 01/33] staging: rtl8723bs: remove typedefs in
 HalBtcOutSrc.h
Message-ID: <20210315141414.GO2087@kadam>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
 <20210312082638.25512-2-marco.cesati@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312082638.25512-2-marco.cesati@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9923
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 adultscore=0 spamscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103150102
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9923
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 impostorscore=0
 malwarescore=0 adultscore=0 mlxscore=0 clxscore=1011 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103150102
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
 Larry Finger <Larry.Finger@lwfinger.net>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 12, 2021 at 09:26:06AM +0100, Marco Cesati wrote:
> diff --git a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> index ef8c6a0f31ae..87dc63408133 100644
> --- a/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> +++ b/drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c
> @@ -151,7 +151,7 @@ static u8 halbtc8723b1ant_BtRssiState(
>  }
>  
>  static void halbtc8723b1ant_UpdateRaMask(
> -	PBTC_COEXIST pBtCoexist, bool bForceExec, u32 disRateMask
> +	struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask

There is an extra space between the "* pBtCoexist" which checkpatch
warned you about.  :/  It makes me sad that you did all this work
without looking at the checkpatch output.

ERROR: "foo * bar" should be "foo *bar"
#146: FILE: drivers/staging/rtl8723bs/hal/HalBtc8723b1Ant.c:154:
+       struct BTC_COEXIST * pBtCoexist, bool bForceExec, u32 disRateMask

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
