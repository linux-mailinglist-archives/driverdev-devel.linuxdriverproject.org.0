Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCFE12F5BA
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 09:51:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B06387D36;
	Fri,  3 Jan 2020 08:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rgbk7PsN5sFy; Fri,  3 Jan 2020 08:51:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CA28387D09;
	Fri,  3 Jan 2020 08:50:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4001BF297
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 08:50:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A42D87CB8
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 08:50:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UgzQ1PTKYulU for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 08:50:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E5D2F87CD6
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 08:50:15 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0038ht9v138539;
 Fri, 3 Jan 2020 08:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=tzuXPE/Pks4hujfIYPzNgVGPbsKo4j/Ts3ZzA5B7ZZs=;
 b=kPalE5ucdFXLKZ/tpsrqgDQDYHOLQNdrC6ttTw+laxN2MOpmdp4wtGW3AnGnk4uQLHnS
 Z4t4Jzo/SvFmpkxNqE7gf1c8FRLwxYshO8Gw8uHdTg3kLX+7t/aRUoIWx2al3k33H2K9
 heO5i/qeEz+fyZzF2WMmxCx1yfHZGBLpMQ4t7sHWVjk+8BjJjaCwx3JRYSLl68unTgDv
 59BCqr+Lb6ddVOzjF4KwmU6LZAbYjGn9l5FnIwbvRvxbbJQVF9Bxo5MwNt/bvMBkBoUJ
 7NCDgRZ4sZfkP9PvagVyCutXdZj1+vSn61f/8NmtQo0YpEBdPxRTCDSLrUomkSouLKAH cA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2x5xftucc4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 08:50:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 0038nF2L105835;
 Fri, 3 Jan 2020 08:50:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2x8guw81xv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 08:50:12 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0038o94j018279;
 Fri, 3 Jan 2020 08:50:09 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 00:50:08 -0800
Date: Fri, 3 Jan 2020 11:49:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aditya Pakki <pakki001@umn.edu>
Subject: Re: [PATCH] staging: kpc2000: replace assertion with recovery code
Message-ID: <20200103084959.GA3911@kadam>
References: <20191215181243.31519-1-pakki001@umn.edu>
 <20191215182814.GA859066@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215182814.GA859066@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030083
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030083
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
Cc: devel@driverdev.osuosl.org, Harsh Jain <harshjain32@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Vandana BN <bnvandana@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 15, 2019 at 07:28:14PM +0100, Greg Kroah-Hartman wrote:
> On Sun, Dec 15, 2019 at 12:12:37PM -0600, Aditya Pakki wrote:
> > In kpc_dma_transfer, if either priv or ldev is NULL, crashing the
> > process is excessive and is not needed. Instead of asserting, by
> > passing the error upstream, the error can be handled.
> > 
> > Signed-off-by: Aditya Pakki <pakki001@umn.edu>
> > ---
> >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > index cb52bd9a6d2f..1c4633267cc1 100644
> > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > @@ -49,9 +49,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> >  	u64 dma_addr;
> >  	u64 user_ctl;
> >  
> > -	BUG_ON(priv == NULL);
> > +	if (!priv)
> > +		return -EINVAL;
> 
> How can prive ever be NULL here?  Can you track back to all callers to
> verify this?  If so, just remove the check.
> 

Smatch says that "priv" can't be NULL.

Also if you have a NULL dereference the kernel prints a nice stack
trace.  Normally just doing the NULL dereference and Oopsing is better
than doing a BUG_ON().  The one exception would be when the Oops leads
to filesystem corruption.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
