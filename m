Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 146E3232ED8
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Jul 2020 10:48:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CBFF686BA4;
	Thu, 30 Jul 2020 08:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8aR8ajlh3wMy; Thu, 30 Jul 2020 08:48:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0CD89877EC;
	Thu, 30 Jul 2020 08:48:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46B201BF489
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 08:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4180987B47
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 08:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B27t2U0Ot5d6 for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 08:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 832D987B3D
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 08:48:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06U8Vh21009192;
 Thu, 30 Jul 2020 08:47:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=PBLsnEKdUsbC58iG+sMOb8TrcXF/SgshkK4/VR1tVUE=;
 b=0c5F8c50K6rtcqpMaqHGL1xkPliwts0GU0mFkwkvuovjpolw+gkGm5f6Wkl8iwqTbkcx
 jYiItAFihuIjk7GPdUYjvRsffhZYexTbCYzoKJWJO70Stbo7YCQnCaOLetkQB9KEHuV8
 tSSSzJBujTtmaE3vHImvF/PL09mlb0TZ3VuBJSYLX1UGOku8kF8lwIoz45cC0fM++Wcb
 Q6QiwYHHPBySBsrkwtBeexD5wgkwWBk5wXZ3TSulLS83jGAKl2ahGQx9Ee5X0atZfhbg
 nSJqRI+PFZLUKNnYZgglRWPgrDupxOg9m7zORDpU5OCqxtu/D0V/OxP4DhUcwULpqzhd HQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 32hu1jjf1q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 Jul 2020 08:47:59 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06U8WfEC016730;
 Thu, 30 Jul 2020 08:45:58 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 32hu5wem6n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Jul 2020 08:45:58 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06U8jrKV006656;
 Thu, 30 Jul 2020 08:45:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Jul 2020 01:45:52 -0700
Date: Thu, 30 Jul 2020 11:45:45 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH] staging: atomisp: move null check to earlier point
Message-ID: <20200730084545.GB1793@kadam>
References: <20200729135636.9220-1-cengiz@kernel.wtf>
 <CAHp75VfM3OapAkYJ-sN-MG2yuGDqaqDjc6p0gXT9cHYgnH+5LQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VfM3OapAkYJ-sN-MG2yuGDqaqDjc6p0gXT9cHYgnH+5LQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 bulkscore=0
 malwarescore=0 suspectscore=0 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007300063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9697
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 bulkscore=0 mlxlogscore=999
 lowpriorityscore=0 malwarescore=0 clxscore=1011 mlxscore=0 impostorscore=0
 phishscore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007300063
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Cengiz Can <cengiz@kernel.wtf>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 29, 2020 at 06:13:44PM +0300, Andy Shevchenko wrote:
> On Wed, Jul 29, 2020 at 5:00 PM Cengiz Can <cengiz@kernel.wtf> wrote:
> >
> > `find_gmin_subdev` function that returns a pointer to `struct
> > gmin_subdev` can return NULL.
> >
> > In `gmin_v2p8_ctrl` there's a call to this function but the possibility
> > of a NULL was not checked before its being dereferenced. ie:
> >
> > ```
> > /* Acquired here --------v */
> > struct gmin_subdev *gs = find_gmin_subdev(subdev);
> > int ret;
> > int value;
> >
> > /*  v------Dereferenced here */
> > if (gs->v2p8_gpio >= 0) {
> >         pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
> >                 gs->v2p8_gpio);
> >         ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
> >         if (!ret)
> >                 ret = gpio_direction_output(gs->v2p8_gpio, 0);
> >         if (ret)
> >                 pr_err("V2P8 GPIO initialization failed\n");
> > }
> > ```
> >
> > I have moved the NULL check before deref point.
> 
> "Move the NULL check..."
> See Submitting Patches documentation how to avoid "This patch", "I", "we", etc.

I always feel like this is a pointless requirement.  We're turning into
bureaucracts.

> 
> > diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> > index 0df46a1af5f0..8e9c5016f299 100644
> > --- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> > +++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
> > @@ -871,6 +871,11 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
> >         int ret;
> >         int value;
> >
> > +       if (!gs) {
> > +               pr_err("Unable to find gmin subdevice\n");
> 
> > +               return -EINVAL;
> 
> And here is a change of semantics...

Yeah.  The change of semantics should be documented in the commit
message, but it's actually correct.  I discussed this with Mauro earlier
but my bug reporting script didn't CC a mailing list and I didn't
catch it.  Mauro suggested:

    53  > Yet, it could make sense to have something like:
    54  > 
    55  >       if (WARN_ON(!gs))
    56  >               return -ENODEV;
    57  > 
    58  > at the beginning of the functions that call find_gmin_subdev().

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
