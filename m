Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE53199363
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 12:29:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9138786B1D;
	Tue, 31 Mar 2020 10:29:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mwnlc-OQvlwW; Tue, 31 Mar 2020 10:29:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59C5A85F53;
	Tue, 31 Mar 2020 10:29:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32CA71BF263
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F6BF85DE1
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 10:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fC06GWoBAbXq for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 10:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95C0E85F53
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 10:29:23 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAP1wB016863;
 Tue, 31 Mar 2020 10:29:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RE7RJ50ctwXcGb9Gg0IBmuEBmVKbP8bDDY8G4iwoz2M=;
 b=PcYpXo0YU0rSIuaCXPV8nY5W+qmkFEosxk7fLBlzRNQY4OlA6Mx2XK8h7CntMIHtZiYP
 5JatUD3ErHtKeVAhK652hYHVh0G71Djq7pn4YNPGbWQCDc6RoFjEEKRGNGgK/05n4RNG
 4RceUI6svHbXPt0pyHTXPlH/Pw5STfVh+dJe6hL8BIE2ZcuL3oHepnnA4f/P9S4pCHuH
 zKJ4E+5oxaTFnJ/ftfyN68Z4ATPGdjqOQ3UFIo9256az8wtU3EeswHJBjEg2/GZkifmi
 7vOda4rtJSyILUXNKfMGeU5bXlZkpBVfOLPTXs+5XMAn7kujRSVVWlsciJb7bPf71Pw2 Tw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 303aqhf8ug-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:29:20 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02VAMsmT010013;
 Tue, 31 Mar 2020 10:29:19 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 302g2dtk6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Mar 2020 10:29:19 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02VATFDd011762;
 Tue, 31 Mar 2020 10:29:15 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 31 Mar 2020 03:29:14 -0700
Date: Tue, 31 Mar 2020 13:29:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use defines in vnt_mac_reg_bits_*
 functions
Message-ID: <20200331102906.GA2066@kadam>
References: <20200328095433.7879-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200328095433.7879-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003310094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9576
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 clxscore=1011
 malwarescore=0 impostorscore=0 mlxlogscore=999 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003310094
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 28, 2020 at 10:54:33AM +0100, Oscar Carter wrote:
> Define the necessary bits in the CHANNEL, PAPEDELAY and GPIOCTL0
> registers to can use them in the calls to vnt_mac_reg_bits_on and
> vnt_mac_reg_bits_off functions. In this way, avoid the use of BIT()
> macros and clarify the code.
> 
> Fixes: 3017e587e368 ("staging: vt6656: Use BIT() macro in vnt_mac_reg_bits_* functions")
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c |  6 ++++--
>  drivers/staging/vt6656/card.c     |  3 +--
>  drivers/staging/vt6656/mac.h      | 12 ++++++++++++
>  drivers/staging/vt6656/main_usb.c |  2 +-
>  4 files changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index a19a563d8bcc..dd3c3bf5e8b5 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -442,7 +442,8 @@ int vnt_vt3184_init(struct vnt_private *priv)
>  		if (ret)
>  			goto end;
> 
> -		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, BIT(0));
> +		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY,
> +					  PAPEDELAY_B0);

This doesn't clarify anything.  It makes it less clear because someone
would assume B0 means something but it's just hiding a magic number
behind a meaningless define.  B0 means BIT(0) which means nothing.  So
now we have to jump through two hoops to find out that we don't know
anything.

Just leave it as-is.  Same for the rest.

There problem is a hardware spec which explains what this stuff is.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
