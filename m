Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D74871B86B6
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 15:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13A9920794;
	Sat, 25 Apr 2020 13:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9DH0cU4iRgnr; Sat, 25 Apr 2020 13:09:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3B03D20016;
	Sat, 25 Apr 2020 13:09:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8F51BF30E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2865420016
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2e01fxTa-2yE for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 13:08:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0124.hostedemail.com
 [216.40.44.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 8893D204E3
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 13:08:54 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 847F11801549C
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 12:50:44 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id C2D8A182CED2A;
 Sat, 25 Apr 2020 12:50:41 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10, 1, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3355:3622:3865:3866:3867:3868:3871:3873:3874:4250:4321:4605:5007:7514:8829:10004:10400:10848:11026:11232:11233:11473:11658:11914:12043:12257:12262:12296:12297:12438:12555:12679:12687:12731:12737:12740:12760:12895:13439:14181:14659:14721:21080:21365:21433:21451:21627:21889:21990:30054:30079:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: size64_5e7406f83605
X-Filterd-Recvd-Size: 4382
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf15.hostedemail.com (Postfix) with ESMTPA;
 Sat, 25 Apr 2020 12:50:40 +0000 (UTC)
Message-ID: <b5aa72347748f35245f2fd0272ab3957179ed2eb.camel@perches.com>
Subject: Re: [PATCH 1/3] staging: vt6656: Remove the local variable "array"
From: Joe Perches <joe@perches.com>
To: Oscar Carter <oscar.carter@gmx.com>, Forest Bond
 <forest@alittletooquiet.net>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Sat, 25 Apr 2020 05:50:39 -0700
In-Reply-To: <20200425123844.7959-2-oscar.carter@gmx.com>
References: <20200425123844.7959-1-oscar.carter@gmx.com>
 <20200425123844.7959-2-oscar.carter@gmx.com>
User-Agent: Evolution 3.36.1-2 
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2020-04-25 at 14:38 +0200, Oscar Carter wrote:
> Remove the local variable "array" and all the memcpy function calls
> because this copy operation from different arrays to this variable is
> unnecessary.

You might write here that vnt_control_out already does
a kmemdup copy of its const char *buffer argument and
this was made unnecessary by:

commit 12ecd24ef93277e4e5feaf27b0b18f2d3828bc5e
Author: Malcolm Priestley <tvboxspy@gmail.com>
Date:   Sat Apr 22 11:14:57 2017 +0100

    staging: vt6656: use off stack for out buffer USB transfers.
    
    Since 4.9 mandated USB buffers be heap allocated this causes the driver
    to fail.
    
    Since there is a wide range of buffer sizes use kmemdup to create
    allocated buffer.
 

> The same result can be achieved using the arrays directly.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/rf.c | 21 +++++----------------
>  1 file changed, 5 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> index 06fa8867cfa3..82d3b6081b5b 100644
> --- a/drivers/staging/vt6656/rf.c
> +++ b/drivers/staging/vt6656/rf.c
> @@ -770,7 +770,6 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  	u16 length1 = 0, length2 = 0, length3 = 0;
>  	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
>  	u16 length, value;
> -	u8 array[256];
> 
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
> @@ -817,10 +816,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  	}
> 
>  	/* Init Table */
> -	memcpy(array, addr1, length1);
> -
>  	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
> -			      MESSAGE_REQUEST_RF_INIT, length1, array);
> +			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
>  	if (ret)
>  		goto end;
> 
> @@ -832,10 +829,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  		else
>  			length = length2;
> 
> -		memcpy(array, addr2, length);
> -
>  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
> -				      MESSAGE_REQUEST_RF_CH0, length, array);
> +				      MESSAGE_REQUEST_RF_CH0, length, addr2);
>  		if (ret)
>  			goto end;
> 
> @@ -852,10 +847,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  		else
>  			length = length3;
> 
> -		memcpy(array, addr3, length);
> -
>  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
> -				      MESSAGE_REQUEST_RF_CH1, length, array);
> +				      MESSAGE_REQUEST_RF_CH1, length, addr3);
>  		if (ret)
>  			goto end;
> 
> @@ -870,11 +863,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  		addr1 = &al7230_init_table_amode[0][0];
>  		addr2 = &al7230_channel_table2[0][0];
> 
> -		memcpy(array, addr1, length1);
> -
>  		/* Init Table 2 */
>  		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
> -				      MESSAGE_REQUEST_RF_INIT2, length1, array);
> +				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
>  		if (ret)
>  			goto end;
> 
> @@ -886,11 +877,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
>  			else
>  				length = length2;
> 
> -			memcpy(array, addr2, length);
> -
>  			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
>  					      MESSAGE_REQUEST_RF_CH2, length,
> -					      array);
> +					      addr2);
>  			if (ret)
>  				goto end;
> 
> --
> 2.20.1
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
