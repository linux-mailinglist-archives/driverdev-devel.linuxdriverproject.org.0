Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A80D12F70E
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 12:18:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 685EB8402A;
	Fri,  3 Jan 2020 11:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BEO4up1_ilaa; Fri,  3 Jan 2020 11:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44C8785EC1;
	Fri,  3 Jan 2020 11:17:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 55F5B1BF376
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:17:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5189387D73
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6C7hbCTci2AY for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 11:17:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 956C587D6C
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 11:17:26 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BEFct034253;
 Fri, 3 Jan 2020 11:17:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qmMxY9tnbB8ATDMreBXPiEHZ3TxMNCRYtrZjN2tBM0o=;
 b=L81bsPaZOVstIV1vxWS7CeJHcMq/4Jqj6T/PNygdVvTQwCD96jsyZ8GWKrGMEq5iwWKd
 rhpQ06u9RVv54ZUmUkTCJSyVJk14Y3GFau1UdDXjKP7iVDoUkuWASXjNW9RK+GoAPELf
 Y2B9bnFBFDpmOs08faEVok1YLzZHsK8Twu+dSxB9acr+9LbIpXTDi7dPN76dkWCuoghe
 8GXtvmGMq7Gc0pO+eHp9V8QicaKors1GA4qWxt8bihoDkjfCFuz9lUEQUI4DiARCC0tF
 Mu6Q8KL9RZelQ6/lTsyGcgBmTwDi95hjVmYBrsLZzdgCJ287qLwTWQ8hFzLmo1XIeV/n uA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2x5y0puuwu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:17:25 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BE5rl136523;
 Fri, 3 Jan 2020 11:17:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2x8gjbt04d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:17:24 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 003BHNVw024745;
 Fri, 3 Jan 2020 11:17:23 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 03:17:23 -0800
Date: Fri, 3 Jan 2020 14:17:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Malcolm Priestley <tvboxspy@gmail.com>
Subject: Re: [PATCH 4/5] staging: vt6656: remove bool from vnt_radio_power_on
 ret
Message-ID: <20200103111715.GG3911@kadam>
References: <cc52b67c-9ef8-3e57-815a-44d10701919e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cc52b67c-9ef8-3e57-815a-44d10701919e@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030107
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 20, 2019 at 09:15:33PM +0000, Malcolm Priestley wrote:
> The driver uses logical only error checking a bool true would flag error.
> 

This commit message is too vague.  This is a bugfix and needs to go to
stable.  Add a Fixes tag.  Here is a suggested wording:

The caller expects this function to return zero or negative error codes
but it instead returns true so it's totally broken.



> Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
> ---
>  drivers/staging/vt6656/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
> index 56cd77fd9ea0..7958fc165462 100644
> --- a/drivers/staging/vt6656/card.c
> +++ b/drivers/staging/vt6656/card.c
> @@ -719,7 +719,7 @@ int vnt_radio_power_off(struct vnt_private *priv)
>   */
>  int vnt_radio_power_on(struct vnt_private *priv)
>  {
> -	int ret = true;
> +	int ret = 0;
>  

Get rid of the "ret" variable and return 0 directly.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
