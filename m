Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA1E1345F0
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 16:18:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0B01520526;
	Wed,  8 Jan 2020 15:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kXJ27q4cIVu2; Wed,  8 Jan 2020 15:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1A61204D8;
	Wed,  8 Jan 2020 15:18:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE20C1BF332
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 15:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C8A1420458
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 15:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0IREqH5yHeyb for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 15:18:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 1504720450
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 15:18:25 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 008FAM58175026;
 Wed, 8 Jan 2020 15:18:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=JWAazoicBsj1dkTDy4BLFaF4LrMkkoJBdvLPtIWlQow=;
 b=UiFkogC2O0VmEayMzQLMJuo0HPlw1Rg1L7p+R4Nwrtd/VG/4P5M1UqRn+kyKREWe/wat
 AHYQYe+CNpcuJNaij88WPViMk+SFOZinEoDDJ9YXvusWuSZPW2tfQrwvwf03yKrm7hA7
 bsp5f41vHt+Ltmv0fuk40n/s/NiAkPEbkT0pLOe7TrFVW8AEfGP8hEx/L5aGtZFLOWDr
 vjUyVA2vYbw4NQUqlUR/yODY9uYWGlPZLvdPlRgFTk1w7W9Kp2UqlkA5F90j5RuRzwGa
 5GFOYCPrxx8+9+nHo9JJqBumPcbQX6RBC+PsL6ty0WmuOyouyPCWDfB4Y+plHukI+ekV Xg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2xaj4u4mje-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 15:18:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 008FAR4v053481;
 Wed, 8 Jan 2020 15:18:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2xcjvft1s0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 08 Jan 2020 15:18:21 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 008FIH7m026416;
 Wed, 8 Jan 2020 15:18:19 GMT
Received: from kadam (/10.175.168.130) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 08 Jan 2020 07:18:17 -0800
Date: Wed, 8 Jan 2020 18:18:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] media: hantro: remove a pointless NULL check
Message-ID: <20200108151809.GG27042@kadam>
References: <20200108053534.6rwxk2httwoflbgv@kili.mountain>
 <1118f946572b3da0562fa1c0347fceaeda93f38f.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1118f946572b3da0562fa1c0347fceaeda93f38f.camel@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001080128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9493
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001080128
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
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel-janitors@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 08, 2020 at 12:08:21PM -0300, Ezequiel Garcia wrote:
> Hi Dan,
> 
> Thanks for the patch.
> 
> On Wed, 2020-01-08 at 08:35 +0300, Dan Carpenter wrote:
> > This can't be NULL and we've already dereferenced it so let's remove
> > the check.
> > 
> > Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> > ---
> >  drivers/staging/media/hantro/hantro_v4l2.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
> > index 85af1b96fd34..0198bcda26b7 100644
> > --- a/drivers/staging/media/hantro/hantro_v4l2.c
> > +++ b/drivers/staging/media/hantro/hantro_v4l2.c
> > @@ -688,7 +688,7 @@ static int hantro_start_streaming(struct vb2_queue *q, unsigned int count)
> >  	return ret;
> >  
> >  err_codec_exit:
> > -	if (ctx->codec_ops && ctx->codec_ops->exit)
> > +	if (ctx->codec_ops->exit)
> 
> Since you are here, can you remove the other unneeded
> checks in the driver?
> 

There is only one more, but yes, I should remove it as well.

> We are assuming ctx->codec_op is non-NULL, so perhaps
> a check in .probe, to check it explicitly would be better.

It's the address from inside the middle of a struct so it can't possibly
be NULL.  No need to check.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
