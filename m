Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD84B2ECE14
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Jan 2021 11:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BA261867C6;
	Thu,  7 Jan 2021 10:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YwyOYeIemyXl; Thu,  7 Jan 2021 10:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91196865E0;
	Thu,  7 Jan 2021 10:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA7001BF429
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 10:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D634B871F2
 for <devel@linuxdriverproject.org>; Thu,  7 Jan 2021 10:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EOKOuohbC7z for <devel@linuxdriverproject.org>;
 Thu,  7 Jan 2021 10:46:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 007C686229
 for <devel@driverdev.osuosl.org>; Thu,  7 Jan 2021 10:46:10 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107Ad2RI021237;
 Thu, 7 Jan 2021 10:46:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=+nXFbYO12FXZYg/zscsbBhBStV646kHBHdEB2nrr0Bc=;
 b=k5KchOdDK0vlluEtl6ogmdaePJBG7UVjzvwqGPCGBJHYf0uw0Ll9kDy1hlDPIi9FTbJ+
 HLkFk8VJbN1NHaqJzptTYneUm4qmpqbi+i/Q8robgbH/G/Ecm0sFTjdG7XZ5CzHAC9Fj
 136uKmTA5kg/dAQLIU+vSbDS/1lUVhKmqQEhvshBgWhA6punKy+i1W8id0I407rjUcKC
 VTVprHXakDrSqORmzo79SIAUDORLM6eqWZZnH1596Oq8s01HeUU5TSkqhwT4t7adEgC1
 ueSuRyNg+QRFKqTH5/L83IOMP0xWeEpwxX/0RR1p2decuSJFCoZIPAKEZqfvBOj/yyN2 nQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 35wepmbuwf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 07 Jan 2021 10:46:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 107AeWPL190215;
 Thu, 7 Jan 2021 10:46:08 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 35v4rdv74f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 Jan 2021 10:46:08 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 107Ak5XB027722;
 Thu, 7 Jan 2021 10:46:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 07 Jan 2021 02:46:04 -0800
Date: Thu, 7 Jan 2021 13:45:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: LABBE Corentin <clabbe@baylibre.com>
Subject: Re: [PATCH -next] media: zoran: use resource_size
Message-ID: <20210107104557.GA5083@kadam>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
 <20210106145100.GJ2809@kadam> <X/Ybbj6gN2xrhIwP@Red>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/Ybbj6gN2xrhIwP@Red>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070064
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9856
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 spamscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101070064
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Zheng Yongjun <zhengyongjun3@huawei.com>,
 mjpeg-users@lists.sourceforge.net, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 09:19:58PM +0100, LABBE Corentin wrote:
> Le Wed, Jan 06, 2021 at 05:51:00PM +0300, Dan Carpenter a =E9crit :
> > On Wed, Jan 06, 2021 at 09:17:02PM +0800, Zheng Yongjun wrote:
> > > Use resource_size rather than a verbose computation on
> > > the end and start fields.
> > > =

> > > Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> > > ---
> > >  drivers/staging/media/zoran/zoran_driver.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > =

> > > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/sta=
ging/media/zoran/zoran_driver.c
> > > index 808196ea5b81..d60b4c73ea80 100644
> > > --- a/drivers/staging/media/zoran/zoran_driver.c
> > > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > > @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct v=
b2_queue *vq)
> > >  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
> > >  	vq->ops =3D &zr_video_qops;
> > >  	vq->mem_ops =3D &vb2_dma_contig_memops;
> > > -	vq->gfp_flags =3D GFP_DMA32,
> > > +	vq->gfp_flags =3D GFP_DMA32;
> > =

> > The commit doesn't match the patch.  Also this driver is in
> > staging because it's going to be deleted soon so there probably isn't
> > much point doing cleanups.
> > =

> =

> No, the driver just came back in staging since I fixed the videobuf2 conv=
ersion.

Ah... Thanks.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
