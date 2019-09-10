Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA07AE957
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 13:44:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94447878BB;
	Tue, 10 Sep 2019 11:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVr0VHiWTp4q; Tue, 10 Sep 2019 11:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5D2087850;
	Tue, 10 Sep 2019 11:44:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69C4B1BF5AC
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:44:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 66AA68488E
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:44:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2nbYjtnoG0s7 for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:44:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 17EB88487A
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 11:44:24 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABhtR2015616;
 Tue, 10 Sep 2019 11:44:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=M26h0AGYcEfBiuzAehJPVIMkfowFx11TlIwUQGcORAs=;
 b=SG/MvSUKOt8/vQ/CC2E1Ek4pG76eF728aO3+ozGQel+pGltwvyPzJpwxOwB9YgUYHagp
 zFwogIBRBjMsZmjfAJDll3ff4gSpI4hNrOQYLV/+mNAe0sqSz3etTFIFsk9YLIRA1nm1
 w4TODF64f/X22x368ggdPdEELSV1EWZ7w7iBIqjOUAY7OiMghHulPfHobhxDWdtOParS
 hnRyAyOzmEP5lXI8GKsvZ+0XOtrHhdAQUCDKLBRud/sncSwcUESeZDWCJZKK2lbTLNCP
 R4Kk40qVeDftAYR+k7byGAReINl9GBCMEeMgK1Qz8vf/Op3DxAA8DBtN9PzFozM+FFyr Mg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2uw1jkas9c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:44:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABi7fr084674;
 Tue, 10 Sep 2019 11:44:22 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2uwqqdwa70-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:44:20 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8ABhGrd030663;
 Tue, 10 Sep 2019 11:43:17 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 04:43:15 -0700
Date: Tue, 10 Sep 2019 14:43:03 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH] Staging: wlan-ng: parenthesis at end of line fix
Message-ID: <20190910114135.GD30834@kadam>
References: <20190907205720.GA25377@volery>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190907205720.GA25377@volery>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100117
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100117
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, osdevtc@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Sep 07, 2019 at 10:57:20PM +0200, Sandro Volery wrote:
> Fixed open parenthesis at the end of the line on line 327.
> 
> Signed-off-by: Sandro Volery <sandro@volery.com>
> ---
>  drivers/staging/wlan-ng/cfg80211.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index eee1998c4b18..0a4c7415f773 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -324,7 +324,8 @@ static int prism2_scan(struct wiphy *wiphy,
>  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
>  		i++)
>  		msg1.channellist.data.data[i] =
> -			ieee80211_frequency_to_channel(
> +			ieee80211_frequency_to_channel
> +			(
>  				request->channels[i]->center_freq);

No, that looks even worse.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
