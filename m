Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04D2EC406
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 20:36:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3693E87205;
	Wed,  6 Jan 2021 19:36:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G+DaVqkbCh41; Wed,  6 Jan 2021 19:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 86A178717F;
	Wed,  6 Jan 2021 19:36:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE4EC1BF399
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 19:36:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA4AE86FAC
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 19:36:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xcNW-ZNajH3 for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 19:36:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA2A186FAB
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 19:36:49 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 106JTDTu096464;
 Wed, 6 Jan 2021 19:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=nI/4Ce5pCwiIuN4FJdPJzrp8kNpk+VzaHn0MWkSBG9o=;
 b=qn1KGJy439mVVg3cIaoBputkFJJk09fsHsfErXcjG6yZTcLGUY7lrCk2wuiKRJzgmCoR
 +JfgAVMTJRnucapudY1K+0Di6N59sL7WOy9DXNm32X4qKcdHcNwbAuLZ20K734WqRJx6
 tSohbjxgTa0dciPTEIgpCsYH88wMEdvXvqn1lBP+AYoYzRAL3AsBVwvxV9ESlovDwcgf
 GXVKKeNUxGgrlUxVvk/QxhsCnWcvgVWPaoirQe4HJ5cDoAdpHtgp2DansJeSgE2mZ8wj
 2/4cKBGl7nU5Lc3pftmqHPwGW+vGmT9RKIvGfNAjd4kNH5CGrksKLUzop6pS6Ai7I0M5 VQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 35wepm9hpd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 06 Jan 2021 19:36:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 106JUTaV024172;
 Wed, 6 Jan 2021 19:36:48 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 35v4rd2csc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 Jan 2021 19:36:48 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 106Jak66021370;
 Wed, 6 Jan 2021 19:36:47 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 Jan 2021 11:36:45 -0800
Date: Wed, 6 Jan 2021 22:36:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH] media: atomisp: ov2722: replace hardcoded function name
Message-ID: <20210106193633.GK2809@kadam>
References: <20210105202945.26913-1-fil.kolev@gmail.com>
 <X/VsF364jpGz6oze@kroah.com>
 <dcdda829-89d6-badd-4f22-72d95d24e9e3@gmail.com>
 <X/X45909l1Tk7Bni@kroah.com>
 <c9284a7f1443146b3885e8ceae3dcf113c531a36.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c9284a7f1443146b3885e8ceae3dcf113c531a36.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101060109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101060109
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
Cc: Filip Kolev <fil.kolev@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 10:25:26AM -0800, Joe Perches wrote:
> On Wed, 2021-01-06 at 18:52 +0100, Greg Kroah-Hartman wrote:
> > On Wed, Jan 06, 2021 at 07:43:42PM +0200, Filip Kolev wrote: =

> > > On 06-Jan-21 09:51, Greg Kroah-Hartman wrote:
> > > > On Tue, Jan 05, 2021 at 10:29:18PM +0200, Filip Kolev wrote:
> > > > > There is a debug message using hardcoded function name instead of=
 the
> > > > > __func__ macro. Replace it.
> > > > > =

> > > > > Report from checkpatch.pl on the file:
> > > > > =

> > > > > WARNING: Prefer using '"%s...", __func__' to using 'ov2722_remove=
', this function's name, in a string
> > > > > +	dev_dbg(&client->dev, "ov2722_remove...\n");
> []
> > > > > diff --git a/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c b=
/drivers/staging/media/atomisp/i2c/atomisp-ov2722.c
> []
> > > > > @@ -1175,7 +1175,7 @@ static int ov2722_remove(struct i2c_client =
*client)
> > > > > =A0=A0	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);
> > > > > =A0=A0	struct ov2722_device *dev =3D to_ov2722_sensor(sd);
> > > > > -	dev_dbg(&client->dev, "ov2722_remove...\n");
> > > > > +	dev_dbg(&client->dev, "%s...\n", __func__);
> > > > =

> > > > dev_dbg() provides the function name already, and this is just a "t=
race"
> > > > call, and ftrace should be used instead, so the whole line should be
> > > > removed entirely.
> > > =

> > > Thank you for the review!
> > > =

> > > How do I go about this? Do I amend the patch and re-send as v2 or cre=
ate a
> > > new patch entirely?
> > =

> > New patch entirely please.
> =

> There are quite a lot of these relatively useless function tracing like
> uses in the kernel:
> =

> $ git grep -P '"%s[\.\!]*\\n"\s*,\s*__func__\s*\)' | wc -l
> 1065

These are printing other stuff besides just the function name.  Maybe
grep for '", __func__\)'?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
