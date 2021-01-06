Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E73E72EC4DC
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 21:27:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06425873CE;
	Wed,  6 Jan 2021 20:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c6AB-v3yoR8D; Wed,  6 Jan 2021 20:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53380873B1;
	Wed,  6 Jan 2021 20:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 173BC1BF2FE
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 20:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0DAB127447
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 20:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQ6t7AD+Onyo for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 20:27:25 +0000 (UTC)
X-Greylist: delayed 00:07:22 by SQLgrey-1.7.6
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 6CAC2273A9
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 20:27:25 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id y23so3709228wmi.1
 for <devel@driverdev.osuosl.org>; Wed, 06 Jan 2021 12:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=;
 b=ctIAJZXn1n8n6ErtdFx+i0m//hYktYCyTIp+fkL2LcY4Jfm0wKjplw4EPnBOWExPAF
 tm1apLDsKQTMmoQJulDnTwruR9Hsv/yMpbPSwvB33Dn0xO8hHEGo06j0Mq+sinPqwyZs
 kWZVEpQfTT0gtFMj0arQ6YCHOg8raZObUVbJLy3IpkYwflXc322j700Bc561ZRWT68Qr
 WImc4bVeS/KdcVxYAC3M6Lh5048xfOZ+mJi3bkLkEPN0k184n8amf7w7eb1X+DXPr41W
 BYDH63AMZUvCTtDjclrX3JOjBQH+bUaDAXZVik31j8KCdfx49K2tkomwviBCLVObiuL0
 DAOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w3vu7Q77s3pJWhDM2ZQklqoYrnX9v2imWoObUc3E/RA=;
 b=WPbSZeje6huJvnKrYHxKTszEFgo7a37o58WXkzAApCaAO42p1y/GY3ds8eVIvn/phV
 G3ZP5zjVNeH+yVNnDaGs/O0E8f4tuAJKAJ/RCKv6VKiHBYRXBSX25Rd6V0nPuH8L+yuo
 74qjzswNkCewTSXPBuV1h2gCYexTcg/3kclMl6BnMNIwlJcLl56gcQQNTtZkSBsUyivG
 KRhc4/GByC/3fiSzRL/QjaRyn6zggozKRJHctMr5LgMPOfe89Sl2eJVJZGskzU2WZvfp
 JezBklLzaiZjmvf/PQCqWg6vhxCyquWhxV6zlvA7zO2LxiLghhWa+2fT1wbRu4oFYCqI
 GiEA==
X-Gm-Message-State: AOAM531HhhJUZ1sy58gP4jEPylp4urFAZMKVaceQqej7Oo2AJWgNZk5t
 abI+234ha6km6iJ7ujAbCekITkuPKeld5w==
X-Google-Smtp-Source: ABdhPJyBV1GURnIjVGPvwWRfM4Ufh3xwem8TBRk7I5b9Hoc2Gd8ZantU2ae2Sew+89YLsf+t89oB0A==
X-Received: by 2002:a7b:c1d7:: with SMTP id a23mr5101496wmj.62.1609964401954; 
 Wed, 06 Jan 2021 12:20:01 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id n16sm4435939wrj.26.2021.01.06.12.20.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 12:20:01 -0800 (PST)
Date: Wed, 6 Jan 2021 21:19:58 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH -next] media: zoran: use resource_size
Message-ID: <X/Ybbj6gN2xrhIwP@Red>
References: <20210106131702.32507-1-zhengyongjun3@huawei.com>
 <20210106145100.GJ2809@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210106145100.GJ2809@kadam>
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

Le Wed, Jan 06, 2021 at 05:51:00PM +0300, Dan Carpenter a =E9crit :
> On Wed, Jan 06, 2021 at 09:17:02PM +0800, Zheng Yongjun wrote:
> > Use resource_size rather than a verbose computation on
> > the end and start fields.
> > =

> > Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
> > ---
> >  drivers/staging/media/zoran/zoran_driver.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/stagi=
ng/media/zoran/zoran_driver.c
> > index 808196ea5b81..d60b4c73ea80 100644
> > --- a/drivers/staging/media/zoran/zoran_driver.c
> > +++ b/drivers/staging/media/zoran/zoran_driver.c
> > @@ -1020,7 +1020,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2=
_queue *vq)
> >  	vq->buf_struct_size =3D sizeof(struct zr_buffer);
> >  	vq->ops =3D &zr_video_qops;
> >  	vq->mem_ops =3D &vb2_dma_contig_memops;
> > -	vq->gfp_flags =3D GFP_DMA32,
> > +	vq->gfp_flags =3D GFP_DMA32;
> =

> The commit doesn't match the patch.  Also this driver is in
> staging because it's going to be deleted soon so there probably isn't
> much point doing cleanups.
> =


No, the driver just came back in staging since I fixed the videobuf2 conver=
sion.
One of the reason it is kept in staging is that media maintainer want to te=
st it with its own zoran card but covid19 delayed the physical recovery of =
it.

So the patch need to be resent, please.

Regards
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
