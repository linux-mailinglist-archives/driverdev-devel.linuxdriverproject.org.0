Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B7318A100
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 17:56:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 909EC886C8;
	Wed, 18 Mar 2020 16:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRRpaOOKgqjg; Wed, 18 Mar 2020 16:56:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DE167886B5;
	Wed, 18 Mar 2020 16:56:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D635F1BF85D
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 16:56:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D2F47882BC
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 16:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S+KBEQgDVOOo for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 16:56:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61A88882AB
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 16:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584550581;
 bh=0MdBDKZz6fAY+TxmYNydSRzfwOCiMYDTnxPndAe+j4Q=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=dK0+c9bodfi/UD+GXonEXV/+EuPu/xlrqke8n6qddhPLbMyAalxXfPmDwh8jbHSEf
 cue9GD8VPgefO7Vgffi1C7TP6KQgX+fq2jrc5acJQQX7E46k+EUtTKSNO3H+I1joZe
 Y4XWR6f8s5LbHExDIVshXz1TCm6f7dAeLD0JxLFc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ubuntu ([83.52.229.196]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MN5eR-1iyKBs0Smr-00J5i8; Wed, 18
 Mar 2020 17:56:21 +0100
Date: Wed, 18 Mar 2020 17:55:52 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: vt6656: Use ARRAY_SIZE instead of hardcoded size
Message-ID: <20200318165551.GA3082@ubuntu>
References: <20200314164754.8531-1-oscar.carter@gmx.com>
 <20200317104506.GA4650@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317104506.GA4650@kadam>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:8++pG89+OeDxgjT4Ibi/oYjl/3FVbtlFRCbf4uoQNXTO+XfK1E5
 yfGqKA7GGA+WaQrsr73Zu8WuLeRJezvcZXnc1DAzqsFYVjtUVXL8+47Mi7ljvG3fRmCRXPO
 Tt8HrqjROp+LjLR1++C3pLWS7PzeEjgBjTKfcx7VG7POBzkD295JATuKLD1pvhAYF5ybQdZ
 lZZ+m7lPavTWxinXgY3Xg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZP2cT0rRTB8=:rgGD80Q77COxrZbszR8WG0
 7J3dZ5fgjwZbmIiQS2yh8b4cW2Vu5tA+03HpV5G66t3pfc4XDQYH0ANHYXRUROqneuLOx5PqE
 1nhAqI+MnnStIhBYRFQ68Eqpsfg1tqkpVh8hXUPxVwCQomqzmlVwxYoDzRWjRdaLxqnWlFmaQ
 bkgBoIYYk7nOPlCrpB5CBC1VW3VTMhgfYviLnYnuyhaUhvSlIGGtuUq2yOHELT/3M1DNl1pTR
 SzagGQEb7cQmp72qHCjQcQlydXdym9+DR8Do7KqpIuqvRpuozGMSz/kOiXDtziyJxPLQlPRxj
 xADBHtj4Dod/IAnpgQHmAt1FkSGZFVNvjtRBuMkCMT6q1Mq0nvIbKllo3+7VaxndDTliltCNd
 mxmeaI7p/jteTId0DaXx+4ePlSBFUu1Hp9dMPLvRoRIxjYDQRDYIWzpm0Mx5kbzL6HvgtrTCz
 p1ROgONaDI7/JjHYWJRsO3fXs/04sGQ4tCqZMZxwl/9eF88FuFzoYBm2BSOclk3DOapQZl2rY
 zzFvuG5pWSD3HOGezuCiv6pcSwY6hSB9kG1pjAiI4Il2zWueOBzdtDG2JsYoPHE0usy0aX0uq
 qkNlMaB2mXr6HLl5ZPUJE9CaQQTqod2DjSR4dipUhIyz0GV06quF3UgY2Ud0d/qbr6u6IqYtr
 4hF3I+O5L+/lUo4HKx20p5RshazN051JVPDTO78FCHODmMJNRojgDD8JGAuOThzu3F43tf0Un
 wlrbvrzd/H67R+DX/cXPH8DNyRQMJLlXrkTH6xs94DBIeX8jLhFbxYZykv3kUj+vLkYd4DwQc
 jD+TzV55w7dK5a/e+0aWYgjVe5ePOXXLFgAvZAVAidKk7c3C8WY1/bYeaHS5YyLXGaN6+H+Oq
 OuFNMjsNToaDP0+qPR6Fz+4w4aM1AhV/BzJRj77YUQUMcc/cQrvhV4J1jDITheGxC53kSRrkg
 Lta0WVehPNYEjTPBxy6ziQkNny0Wh6JCJlyz4YDUcoUBygm+YywySaiUhQvT9yfN7GYDwvXT6
 a6MV6bY20AB/QfU4UaZ0OkZ+rWpTJYFgmEDgkQoSbr5IlH4rsbjAAkzdCYqExJh5uXD9/oTbx
 HM94ZuLrHxPP/u56TJ8Io7/+qGW2ZREM09gtL4SIZmb7JlGU1l6ZdHrIQB4mRyfBoCWUns86N
 CtxjAlhwWF6eJ38GoitQKGdHGel8wrKHoDS0Hr3aP59XztMOPYi8/+U2WR8uZKc34rv4lXIQq
 YHp7nOTa10vQ9ixeE
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 17, 2020 at 01:45:06PM +0300, Dan Carpenter wrote:
> On Sat, Mar 14, 2020 at 05:47:54PM +0100, Oscar Carter wrote:
> > Use ARRAY_SIZE to replace the hardcoded size so we will never have a
> > mismatch.
> >
> > Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> > ---
> >  drivers/staging/vt6656/main_usb.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
> > index 5e48b3ddb94c..4370941ffc04 100644
> > --- a/drivers/staging/vt6656/main_usb.c
> > +++ b/drivers/staging/vt6656/main_usb.c
> > @@ -23,6 +23,7 @@
> >
> >  #include <linux/etherdevice.h>
> >  #include <linux/file.h>
> > +#include <linux/kernel.h>
> >  #include "device.h"
> >  #include "card.h"
> >  #include "baseband.h"
> > @@ -116,6 +117,7 @@ static int vnt_init_registers(struct vnt_private *priv)
> >  	int ii;
> >  	u8 tmp;
> >  	u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;
> > +	const int n_cck_pwr_tbl = ARRAY_SIZE(priv->cck_pwr_tbl);
>
> Please use ARRAY_SIZE(priv->cck_pwr_tbl) everywhere instead of
> introducing this new variable.
>
Ok, I create a new version of the patch and I resend it.

> regards,
> dan carpenter
>
thanks,

oscar carter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
