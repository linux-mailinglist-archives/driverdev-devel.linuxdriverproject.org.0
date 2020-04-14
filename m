Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DB21A7C02
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 15:12:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A5D9A86429;
	Tue, 14 Apr 2020 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpPt5QmXIJvs; Tue, 14 Apr 2020 13:12:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB3D086356;
	Tue, 14 Apr 2020 13:12:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 341E91BF3BA
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:12:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 308902050B
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 13:12:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fP7uiQDtD5Np for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 13:12:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 58706204E9
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 13:12:25 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ED9Xal011159;
 Tue, 14 Apr 2020 13:12:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=e7ZC9eF80V3HjAabjgEI+dUq9TU4s7TJqhKZXh3sEoM=;
 b=MIWAs/yQSRGjq+QFCOzkTAoi+OY1McNWJPC2BkXuO9D+U4aFugujrFVVm+1qHpsHfgrB
 ZS6ekk3X06ZYjCpeIpaFCPYfiJkcP47RJSoO/shrFFBHbnC2ek9F2ZxK1S0k5eDnXYfx
 MTE97611O8W9Ie79lO9cXZxskvrBEyCz0qlpMeNsQoDbRONeeSSrx/LSNDU0I0v1mVGg
 ptWTwjjIPOxjcuZCsVSKf5VlQOnndGexYFpWn/9EA4SDWBk6aQcUejTrvr1c4Dm2ptLB
 hf1o4GTq/QOLUN1EDEHrAszhyhBZnDoLGOrL8hdyB+nuF0LxZa0lhcFCn6RoHsSGSBtS CA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 30b6hpmgu5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 13:12:23 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03ED7FlX017508;
 Tue, 14 Apr 2020 13:12:22 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 30ctaa58tx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 13:12:22 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03EDCLUl011000;
 Tue, 14 Apr 2020 13:12:21 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 06:12:20 -0700
Date: Tue, 14 Apr 2020 16:12:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [RFC] staging: vt6656: Add formula to the vnt_rf_addpower function
Message-ID: <20200414131214.GI1163@kadam>
References: <20200413140209.4520-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413140209.4520-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 spamscore=0 adultscore=0 mlxscore=0 phishscore=0 mlxlogscore=999
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0
 mlxlogscore=999 clxscore=1015 mlxscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140108
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Forest Bond <forest@alittletooquiet.net>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 13, 2020 at 04:02:09PM +0200, Oscar Carter wrote:
> diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
> index 4f9aba0f21b0..3b200d7290a5 100644
> --- a/drivers/staging/vt6656/rf.c
> +++ b/drivers/staging/vt6656/rf.c
> @@ -575,28 +575,14 @@ int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)
> 
>  static u8 vnt_rf_addpower(struct vnt_private *priv)
>  {
> +	s32 base;

Just use "int".  s32 is for when signed 32 bit is specified in the
hardware.  I realize that it's done in this file, but if all your
friends jumped off a bridge doesn't mean you should drink their kool-aid.

>  	s32 rssi = -priv->current_rssi;
> 
>  	if (!rssi)
>  		return 7;
> 
> -	if (priv->rf_type == RF_VT3226D0) {
> -		if (rssi < -70)
> -			return 9;
> -		else if (rssi < -65)
> -			return 7;
> -		else if (rssi < -60)
> -			return 5;
> -	} else {
> -		if (rssi < -80)
> -			return 9;
> -		else if (rssi < -75)
> -			return 7;
> -		else if (rssi < -70)
> -			return 5;
> -	}
> -
> -	return 0;
> +	base = (priv->rf_type == RF_VT3226D0) ? -60 : -70;
> +	return (rssi < base--) ? ((rssi - base) / -5) * 2 + 5 : 0;
                       ^^^^^^
I quite hate this postop.  It would have been cleaner to write it like:

	return (rssi < base) ? ((rssi - (base - 1)) / -5) * 2 + 5 : 0

I'm sorry, I'm not clever enough to figure out the potential values of
"rssi".  How did you work out this formula?  It feels like it came from
a standard or something?  Do we not have a function already which
implements the standard?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
