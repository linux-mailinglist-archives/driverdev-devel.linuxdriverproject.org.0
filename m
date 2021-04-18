Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E643632E8
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Apr 2021 03:16:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84FBB40298;
	Sun, 18 Apr 2021 01:16:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSqgUK8-fB25; Sun, 18 Apr 2021 01:16:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DCA4A40295;
	Sun, 18 Apr 2021 01:16:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 179401BF477
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 01:16:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 12C2B40418
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 01:16:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWDabK1Uvhj8 for <devel@linuxdriverproject.org>;
 Sun, 18 Apr 2021 01:15:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com
 [IPv6:2607:f8b0:4864:20::52e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CFC140415
 for <devel@driverdev.osuosl.org>; Sun, 18 Apr 2021 01:15:59 +0000 (UTC)
Received: by mail-pg1-x52e.google.com with SMTP id t22so21806272pgu.0
 for <devel@driverdev.osuosl.org>; Sat, 17 Apr 2021 18:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qqQD+Z+nB253nZVtVgtT7wguG++YUWkZJfAWayHbIMA=;
 b=rSZgdiq/JQSjvPadvBL8HXojf3/Yvg9cZO4T/kfRY2AtMpT4CIvkRo2KbqTJQ9zsWY
 +dj/U6eCvVTaeSE4rkkUswZ8DL5XtJ0YB+icdwdqdW5L39s5ExKP0YdYcIv38FXl2ABp
 suihlOUE0sTHhMmcg46tC4WaHRaAeNNLkbsjCquHu8j/7f+vYHSsnlFmsh6xZADaEIMe
 ouXMXgYP6oPcrfEYzSZZ01O9pzCcT6cKcplxNIpgwrW2egYnceFku7AnDAG0kAOoV5Fx
 HtXXQU4Z3qUKThoeUffoUXlWJjSf/RJSLMGAWENTB9/2D66E/AQ/ke5GaHNLGJRd0Ww8
 WdHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qqQD+Z+nB253nZVtVgtT7wguG++YUWkZJfAWayHbIMA=;
 b=Q1YAuPgcU3n4fd18AaT//xIB+DRYwyXc91szaVk354lUDy3Q/H/knMHC5QS5Z7zqNm
 tb+02N/vJv1az0cNSmBvPbSWlxRo7yjblCcsNLVb9thBSJ/IilbygHvE5oNWixRKViet
 krWYy2ykC6iP2Ef3eZYXzsI1oyRJheOMzzBi5Ix62mDRJjY9dnMOAa4f1mFxI7hoZj30
 2JjIZ8G3Sqk/P5giEwdanzWCmFiB8MXxQFAeHhYYNtx3kNPPbwdvjCd7DTu0O70YXJLI
 wmd9FNXN8lCKugKI1BK9Nc6PoUPBIwHhPQvWiw+BX1sSAcPDXK/iB6TG3EHMxkkl+eg9
 J1Zw==
X-Gm-Message-State: AOAM533dMCXacwQik5kuzn1iK5uW11CDwRi++JFFxC2Rudj8GdZe+Bx+
 EoyO3Pn0Om3y7NkZzM+IiUY=
X-Google-Smtp-Source: ABdhPJyr+az8NIkaFWezrqNfAZqgCpRd5QpWgpKzKFc4q+YbvntIZuMF2sJgqA4PT374h/CbaesWkA==
X-Received: by 2002:a62:e50f:0:b029:214:8e4a:ae46 with SMTP id
 n15-20020a62e50f0000b02902148e4aae46mr13989383pff.73.1618708558555; 
 Sat, 17 Apr 2021 18:15:58 -0700 (PDT)
Received: from ashish-NUC8i5BEH ([122.177.44.217])
 by smtp.gmail.com with ESMTPSA id r14sm9943710pjz.43.2021.04.17.18.15.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 17 Apr 2021 18:15:58 -0700 (PDT)
From: Ashish Kalra <eashishkalra@gmail.com>
X-Google-Original-From: Ashish Kalra <ashish@ashish-NUC8i5BEH>
Date: Sun, 18 Apr 2021 06:45:52 +0530
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210418011552.GA4023@ashish-NUC8i5BEH>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
 <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Ashish Kalra <eashishkalra@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 'Mauro Carvalho Chehab' <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 17, 2021 at 09:31:32PM +0000, David Laight wrote:
> From: Mauro Carvalho Chehab
> > Sent: 17 April 2021 19:56
> > 
> > Em Sat, 17 Apr 2021 21:06:27 +0530
> > Ashish Kalra <eashishkalra@gmail.com> escreveu:
> > 
> > > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > > for this file.  Logical and bitwise OR are basically the same in this
> > > context so it doesn't cause a runtime bug.  But let's change it to
> > > logical OR to make it cleaner and silence the Sparse warning.
> 
> The old code is very likely to by slightly more efficient.
> 
> It may not matter here, but it might in a really hot path.
> 
> Since !x | !y and !x || !y always have the same value
> why is sparse complaining at all.
> 
> 	David
This warning is coming from sparse as per below explanation

As the name suggests, a "bitwise" expression is one that is restricted to
only a certain "bitwise" operations that make sense within that class. In
particular, you can't mix a "bitwise" class with a normal integer
expression
Warning:
int __bitwise i;
int __bitwise j;
the two variables "i" and "j" are _not_ compatible, simply because they
were declared separately, while in the case of
	int __bitwise i, j;
they _are_ compatible.

https://yarchive.net/comp/linux/sparse.html
> 
> > >
> > > Signed-off-by: Ashish Kalra <eashishkalra@gmail.com>
> > > ---
> > >  .../media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c    | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > > index 358cb7d2cd4c..3b850bb2d39d 100644
> > > --- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > > +++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
> > > @@ -58,7 +58,7 @@ sh_css_vf_downscale_log2(
> > >  	unsigned int ds_log2 = 0;
> > >  	unsigned int out_width;
> > >
> > > -	if ((!out_info) | (!vf_info))
> > > +	if ((!out_info) || (!vf_info))
> > 
> > 
> > While here, please get rid of the unneeded parenthesis:
> > 
> > 	if (!out_info || !vf_info)
> > 
> > 
> > >  		return -EINVAL;
> > >
> > >  	out_width = out_info->res.width;
> > 
> > 
> > 
> > Thanks,
> > Mauro
> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
