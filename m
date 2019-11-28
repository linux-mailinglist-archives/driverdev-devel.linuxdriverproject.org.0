Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A47FC10C341
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 05:37:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 74ACA8475F;
	Thu, 28 Nov 2019 04:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ih-SojeWFBRq; Thu, 28 Nov 2019 04:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3645982146;
	Thu, 28 Nov 2019 04:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 597BE1BF4DD
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 04:37:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 55F6A82146
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 04:37:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aI2sUsRtT+AB for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 04:37:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8CB2282125
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 04:37:38 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS4YUFW052624;
 Thu, 28 Nov 2019 04:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=VIwtzEmRNcjoSy3hF67RzU7pcXnWUbAgSR7GgmcoR7A=;
 b=ANEtN71FK87II0rsxDEIEw5xn0JfupsnKfXU1OWJxJgmcbdFT1vuTQNCzyHc+fDmg8K4
 C4Ym2pn22xG/4+5/WM0JeVwWHm6P5ylx7ygoo3FFneUBxRc4i2eZsYUZ7ezVH/Yt99Sf
 7YcxigR9GEpKpv2BkhV6IUO2/wb7w19XDC2OEqWAxEOogNqqegHpcQ56a1YIv3C876l1
 qc//46AyBw4RvSunIFTS0CvDlx/Ui/H81FPPJDiGqyEnr7AMT1mFQA/0Pr15W9zKfHt+
 VypFDCccccnxasARyDcWvui0cWQRT2JcGnD0l01JKRzh718aOL7yMl5YTI8PckoF3OUe Jw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2wewdrh471-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 04:37:34 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xAS4T8M0090153;
 Thu, 28 Nov 2019 04:37:34 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2whx5rp5ru-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 28 Nov 2019 04:37:33 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xAS4bVAk001913;
 Thu, 28 Nov 2019 04:37:31 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 Nov 2019 20:37:30 -0800
Date: Thu, 28 Nov 2019 07:37:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Travis Davies <tdavies@darkphysics.net>
Subject: Re: [PATCH v1 1/1] staging: rtl8192e: rename camelcase variable
 'ShortData'
Message-ID: <20191128043723.GA1781@kadam>
References: <20191127181331.GA27000@Cheese>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127181331.GA27000@Cheese>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1911280037
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9454
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1911280038
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
 YueHaibing <yuehaibing@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 27, 2019 at 10:13:31AM -0800, Travis Davies wrote:
> This patch renames camelcase variable 'ShortData' to 'short_data' 
> Fixes checkpatch message 'CHECK: Avoid CamelCase: <ShortData>
> 
> Signed-off-by: Travis Davies <tdavies@darkphysics.net>
> 
> ---
>  drivers/staging/rtl8192e/rtl819x_BA.h     | 2 +-
>  drivers/staging/rtl8192e/rtl819x_BAProc.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtl819x_BA.h b/drivers/staging/rtl8192e/rtl819x_BA.h
> index 8b6e4c26f0fb..34d66b8f5155 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BA.h
> +++ b/drivers/staging/rtl8192e/rtl819x_BA.h
> @@ -20,7 +20,7 @@
>  #define	DELBA_REASON_UNKNOWN_BA	38
>  #define	DELBA_REASON_TIMEOUT			39
>  union sequence_control {
> -	u16 ShortData;
> +	u16 short_data;
>  	struct {
>  		u16	FragNum:4;
>  		u16	SeqNum:12;
> diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> index 816d31c1d5c7..4d3dac55e189 100644
> --- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
> +++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
> @@ -61,7 +61,7 @@ void ResetBaEntry(struct ba_record *pBA)
>  	pBA->BaParamSet.shortData	= 0;
>  	pBA->BaTimeoutValue		= 0;
>  	pBA->DialogToken		= 0;
> -	pBA->BaStartSeqCtrl.ShortData	= 0;
> +	pBA->BaStartSeqCtrl.short_data	= 0;

What does the name short data mean?  It seems like this is not used
anywhere or the patch would cause a compile error.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
