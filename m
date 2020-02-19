Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 243BB163BC1
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 05:03:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3FA12203CE;
	Wed, 19 Feb 2020 04:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gembsto5KZeM; Wed, 19 Feb 2020 04:03:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BBC11203E4;
	Wed, 19 Feb 2020 04:03:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 215291BF574
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 04:03:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D0912035D
 for <devel@linuxdriverproject.org>; Wed, 19 Feb 2020 04:03:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JsQMKVNsyxZq for <devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 04:03:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 41ADE20021
 for <devel@driverdev.osuosl.org>; Wed, 19 Feb 2020 04:03:16 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01J43Dro116100;
 Wed, 19 Feb 2020 04:03:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=4a082+unim5sSZcSwTAMdgcw2O0kQMVZyf+PWBOP5+Y=;
 b=ptZwoVIxZwWZK+1uDUkiLEiSYuN7xdBgP2DccB4ZIFHLsQbSYushQ7mdFkhOB3djz5hv
 FMtNsv7JvbGEp9MC0Vt6ojqdpR3Da9DvbnURgb3+aFHh9Tjm3z39YSfLKh9EM26ycF7w
 +fu50BAmCNgOV9xzbHPGsw/AczaaagTUKKSdCE2MS31hs9Y3bvFT2GlzOFdsYQ4K7lQy
 d7RtSiwn44l44MC6QNKlQdHUC+J06bqGfEfnvkgyyEZhE0JisC6WbADmxLxIbGuWZkrs
 tO0DHDmPQ63JPhXyLP782udUWehrHHlZ+dqrnDpFA4ASBTEvPk53rTxZBAl6fiOtUG/t 5Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2y8udd0d6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2020 04:03:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01J42KAJ075792;
 Wed, 19 Feb 2020 04:03:12 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2y8ud9njdy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Feb 2020 04:03:12 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01J42tKC019491;
 Wed, 19 Feb 2020 04:02:55 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Feb 2020 20:02:55 -0800
Date: Wed, 19 Feb 2020 07:02:44 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH] staging: bcm2835-camera: call function instead of macro
Message-ID: <20200219040244.GI7838@kadam>
References: <20200218160727.GA17010@kaaira-HP-Pavilion-Notebook>
 <20200218183711.GE19641@kadam>
 <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218191747.GA12782@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 suspectscore=9 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002190028
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9535
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 suspectscore=9
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002190028
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Ray Jui <rjui@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 19, 2020 at 12:47:47AM +0530, Kaaira Gupta wrote:
> On Tue, Feb 18, 2020 at 09:37:11PM +0300, Dan Carpenter wrote:
> > On Tue, Feb 18, 2020 at 09:37:28PM +0530, Kaaira Gupta wrote:
> > > Fix checkpatch.pl warning of 'macro argument reuse' in bcm2835-camera.h
> > > by removing the macro and calling the function, written in macro in
> > > bcm2835-camera.h, directly in bcm2835-camera.c
> > > 
> > > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > > ---
> > >  .../bcm2835-camera/bcm2835-camera.c           | 28 +++++++++++++++----
> > >  .../bcm2835-camera/bcm2835-camera.h           | 10 -------
> > >  2 files changed, 22 insertions(+), 16 deletions(-)
> > > 
> > > diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > index 1ef31a984741..19b3ba80d0e7 100644
> > > --- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > +++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
> > > @@ -919,9 +919,17 @@ static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
> > >  	else
> > >  		f->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
> > >  	f->fmt.pix.priv = 0;
> > > -
> > > -	v4l2_dump_pix_format(1, bcm2835_v4l2_debug, &dev->v4l2_dev, &f->fmt.pix,
> > > -			     __func__);
> > > +	v4l2_dbg(1, bcm2835_v4l2_debug, &dev->v4l2_dev,
> > > +		 "%s: w %u h %u field %u pfmt 0x%x bpl %u sz_img %u colorspace 0x%x priv %u\n",
> > > +		  __func__,
> > > +		 (&f->fmt.pix)->width,
> > > +		 (&f->fmt.pix)->height,
> > > +		 (&f->fmt.pix)->field,
> > > +		 (&f->fmt.pix)->pixelformat,
> > > +		 (&f->fmt.pix)->bytesperline,
> > > +		 (&f->fmt.pix)->sizeimage,
> > > +		 (&f->fmt.pix)->colorspace,
> > > +		 (&f->fmt.pix)->priv);
> > 
> > This is not as nice to look at as the original.  Just ignore the
> > warning.
> > 
> > regards,
> > dan carpenter
> >
> So, is this warning to be ignored from everywhere in every driver, as it
> doesn't look good? And if yes, then why is it there in the first place?

Obviously the reason for the warning is a good idea.  Do a google
search for the dangers of c macros if you don't understand.

But at the same time uniformity and clean code is nice so it's a matter
of setting priorities.  Checkpatch is just a Perl script and not the
King of The World.  We can ignore it if we want to.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
