Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 125FD26370D
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 22:07:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C94A786DE5;
	Wed,  9 Sep 2020 20:07:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0x-WSfG1_g_D; Wed,  9 Sep 2020 20:07:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 972FB86519;
	Wed,  9 Sep 2020 20:07:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C27601BF40A
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:07:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAF8887224
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 20:07:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ux-KFLUBaMOh for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 20:07:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2AF9787221
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 20:07:02 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 089K0VEN064584;
 Wed, 9 Sep 2020 20:07:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=4fIHZo7kla+jpKFYIjRot223Usuv7Tlceok1GZMsMRM=;
 b=DASL1Xano1yoVJYBqgYgfKew8/2gtYS4ofAqK7VLC22+DPsbGqtlR8bLHRfKjr1HGHeC
 EsqXwSPED9kvu1OfMoKj/DaC+jjirfG0Iwl2dGnzyj7aEoWEWZULmJxWfEfOYqzyPfI6
 diURE//T8aDgLBxQjGA8T0kGz6ctVbLxFYNFvLUoxyWgOeh8kfswHsarlVltnBsvSLxB
 jjWyxONEdyMUDJNq18Zm9FnPO6o5sSvrW8j+1jcvpe+3/Ep74HzQjXfjaS7qwK9NGlRd
 I9EjUbucs4Bkwf5Tu0wf3aSwwHP3H2L4kjnsOZqZcvYLsR+U3t7igPgQm5+I9CZ49NqA +A== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 33c2mm41yb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 09 Sep 2020 20:07:01 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 089K6PS2151930;
 Wed, 9 Sep 2020 20:07:00 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 33cmkyfh1e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Sep 2020 20:07:00 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 089K6wEd004866;
 Wed, 9 Sep 2020 20:06:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Sep 2020 13:06:58 -0700
Date: Wed, 9 Sep 2020 23:06:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alex Dewar <alex.dewar90@gmail.com>
Subject: Re: [PATCH] staging: media: atomisp: Use kvfree_sensitive in a few
 places
Message-ID: <20200909200651.GB12635@kadam>
References: <20200909195403.225084-1-alex.dewar90@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200909195403.225084-1-alex.dewar90@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 suspectscore=2
 spamscore=0 mlxlogscore=999 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009090179
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9739
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 suspectscore=2 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009090178
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
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 09, 2020 at 08:53:50PM +0100, Alex Dewar wrote:
> In the file pci/sh_css_params.c, there are a number of places where
> memset+kvfree is used, where kvfree_sensitive could be used instead. Fix
> these occurrences.

This doesn't say *why* the commit is doing it.  There are two reasons:
The worry with these is that the compiler could optimize away the memset
because it sees the kfree().  Second using kvfree_sensitive() is more
clear and readable.

> 
> Issue identified with Coccinelle.
> 
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
> ---
>  .../staging/media/atomisp/pci/sh_css_params.c | 19 +++++++------------
>  1 file changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
> index 2c67c23b3700..d1b5d6608d52 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_params.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
> @@ -4378,8 +4378,7 @@ ia_css_3a_statistics_free(struct ia_css_3a_statistics *me)
>  	if (me) {
>  		kvfree(me->rgby_data);
>  		kvfree(me->data);
> -		memset(me, 0, sizeof(struct ia_css_3a_statistics));
> -		kvfree(me);
> +		kvfree_sensitive(me, sizeof(struct ia_css_3a_statistics));

I don't think ia_css_3a_statistics are sensitive at all.  What we're
trying to protect are things like passwords.  Just delete the memset.

Looking below, I don't think any of these are sensitive so just delete
all the memsets.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
