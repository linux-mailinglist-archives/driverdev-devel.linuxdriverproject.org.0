Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EFD1621FD
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 09:04:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBFC085A0E;
	Tue, 18 Feb 2020 08:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3yQ0O_up2cku; Tue, 18 Feb 2020 08:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7EBAB843E6;
	Tue, 18 Feb 2020 08:04:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F8631BF2A2
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 08:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47FD98442D
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 08:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nDzZmZy4Esa for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 08:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 93ED2840C2
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 08:04:39 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01I83C1Q148980;
 Tue, 18 Feb 2020 08:04:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=JIy5Z2HZRCmB1QEMokHkoy5yA8AFvEmYRmMgpfVn3G8=;
 b=0Tvaf4rB08mQ4HQ4po4qpJQ31rP5ZOIIt4dC+dgOBu0ap6BkUU3k3ZMouVwfYpGrOmFF
 LWG0fUX7nVIZAdeTDcI9jp/98K66ALF22bYKZsl6Kjpxi02sRf6lwgabYEj6cZOjmDtU
 KLGTamci2cLB8jWPDbj6ZTBDi7k/MwM7cRuuv/1/PuSatQ83C1GUo0NZROPfRR4XRzFz
 k0cnh56RO6S62gvTRVkM5SRiwxvTqzAr9kuXzf6cPlEmaCXrlXwQ2jlmv9Gqfpx82dPL
 Keo8YUa9IwUUVKGC4SME+lva+HDYzT344gMlEgyS1c8po/aoEKVtflMVncUFxR1EdXAw 8Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2y68kquvhn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 08:04:38 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01I81iDf094572;
 Tue, 18 Feb 2020 08:04:37 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2y6t4hq0p7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 18 Feb 2020 08:04:37 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01I84YO8009804;
 Tue, 18 Feb 2020 08:04:34 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Feb 2020 00:04:29 -0800
Date: Tue, 18 Feb 2020 11:04:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: sunnypranay <mpranay2017@gmail.com>
Subject: Re: [PATCH] Staging: comedi: drivers: fixed errors warning coding
 style issue
Message-ID: <20200218080419.GD19641@kadam>
References: <20200216081518.3516-1-mpranay2017@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200216081518.3516-1-mpranay2017@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9534
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0
 mlxlogscore=999 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9534
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 priorityscore=1501
 clxscore=1011 mlxscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180065
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 16, 2020 at 01:45:18PM +0530, sunnypranay wrote:
> Fixed a coding style issue.

What issue is that?

> 
> Signed-off-by: sunnypranay <mpranay2017@gmail.com>

This doesn't seem like a Formal Name that you would use to sign legal
documents.

> ---
>  drivers/staging/comedi/drivers.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index 750a6ff3c03c..76395de100a6 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -133,7 +133,7 @@ EXPORT_SYMBOL_GPL(comedi_alloc_subdevices);
>   * On success, @s->readback points to the first element of the array, which
>   * is zero-filled.  The low-level driver is responsible for updating its
>   * contents.  @s->insn_read will be set to comedi_readback_insn_read()
> - * unless it is already non-NULL.
> + * Unless it is already non-NULL.

The original capitalization was correct.  It should be lower case.

>   *
>   * Returns 0 on success, -EINVAL if the subdevice has no channels, or
>   * -ENOMEM on allocation failure.
> @@ -282,8 +282,20 @@ EXPORT_SYMBOL_GPL(comedi_readback_insn_read);
>   * continue waiting or some other value to stop waiting (generally 0 if the
>   * condition occurred, or some error value).
>   *
> - * Returns -ETIMEDOUT if timed out, otherwise the return value from the
> - * callback function.
> + * Redback_insn_read() - A generic (*insn_read) for subdevice readback.
      ^^^^^^^^^^^^^^^^^
What is this???

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
