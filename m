Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D729D280DFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 09:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87CDD87324;
	Fri,  2 Oct 2020 07:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZSsBA8KrM0G; Fri,  2 Oct 2020 07:21:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6FDB87171;
	Fri,  2 Oct 2020 07:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 728081BF301
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 07:21:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C84F862FB
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 07:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8DJRdB1wf6o for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 07:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE97D862C9
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 07:21:19 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id o5so563775wrn.13
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 00:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=;
 b=IsAFPt3bvZYHfV+35NPHHU3k0vBqpZQJDx3q4QHSMyu8MkYuSqsoYTAQVpH5pHDiq4
 7Ox0cVqXMR1M/KyJrcxTxUWxWmVvsvM+jkboUDoK96PuvSrMd4M39JfI2P5qpsTaGmAQ
 W+IZZwGAh+8i2XECczaHk4P/G0zDn8/hPbT554DKt8b9sYjxNCug4gK5NBGOeuDROI86
 huv4E8++P2ep9ndFj0QayT1DEdH7V3SuMvnI7hl6Q0iAxQSR8nGHW+TkW8kw7kvFyqCe
 h6XGCFzI768Q7+bbhvkFo+5Aqs9U2ZcLvcXxya0LSu/kdLJL2pTbzK2prcjbYfkks4Kk
 LZdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=w4PVlPcr7dpTEG2yTeexZo3mfBgC1LUTIE3TVKKqTC0=;
 b=AgLDLEe8RcfOysT69fGSauxcd5Ds6TKJHfOSJ3gvAXfvhLvr8wFUDVy3XBiS6rlGZC
 fCFwrzkelxS0BG2Xs+yYsRWVeMYM6/621KJy+DSmR4jYrm9QwnbqFAC60mgvXAxr2mGi
 bPeJj5EZl7IeX5A4BhhSOsjsXDA0DpN1MST2VGjh53IIj36bP4E6u/tSdgoOeUi1uJ0L
 wR9hjCM4pp9vwCOGYbcSYs354EwMktmnQIm6kZi20cHHEhMJfuv2o8Aa2Bt9/+PMoM9H
 M5CK1Uf8J0qlizKfrKQf21F/398v8SPFojUXTwMKUt7zW73PDcuBZ6qo+m3NM4IZ0YgX
 9EPQ==
X-Gm-Message-State: AOAM533oBgQKKpF53Tgi7Bo60w9U5c7xVO6Ke8MYK0DH9+zgj81ypmjM
 qYkjZj3ECuUO+Vs9c/5KytRc/g==
X-Google-Smtp-Source: ABdhPJwFbDdME2xRypUZW1NmvccNMBIbMBry74SzvCzSLK32Q1LWoYuaZIflqgo4RWeBsSympZu2fQ==
X-Received: by 2002:adf:e74d:: with SMTP id c13mr1306972wrn.45.1601623278234; 
 Fri, 02 Oct 2020 00:21:18 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m10sm756826wmi.9.2020.10.02.00.21.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 02 Oct 2020 00:21:17 -0700 (PDT)
Date: Fri, 2 Oct 2020 09:21:15 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 3/3] media: zoran: fix mixed case on vars
Message-ID: <20201002072115.GC15586@Red>
References: <21fd8f12edb27d269eefdbea172aa3a80e2aa6ce.1601544491.git.mchehab+huawei@kernel.org>
 <5e09ed2cc5cacfac0653089fc976be3409f0fa9d.1601544491.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e09ed2cc5cacfac0653089fc976be3409f0fa9d.1601544491.git.mchehab+huawei@kernel.org>
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
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 01, 2020 at 11:28:15AM +0200, Mauro Carvalho Chehab wrote:
> Use this small script to replace CamelCase and wrong case
> on vars:
> 
> <script>
> FILES=$(find "$1" -type f|grep -e '.c$' -e '.h$')
> CAMEL_VARS=$(cat tags|perl -ne 'print "$1\n" if (m/^(\w*[A-Z]\w*[a-z]\w*)\s/)')
> for i in $CAMEL_VARS; do
>         new=$(perl -e '
>                 my $s = $ARGV[0];
>                 $s =~ s{([^a-zA-Z]?)([A-Z]*)([A-Z])([a-z]?)}{
>                         my $fc = pos($s)==0;
>                         my ($p0,$p1,$p2,$p3) = ($1,lc$2,lc$3,$4);
>                         my $t = $p0 || $fc ? $p0 : '_';
>                         $t .= $p3 ? $p1 ? "${p1}_$p2$p3" : "$p2$p3" : "$p1$p2";
>                         $t;
>                 }ge;
>                 print $s;' "$i")
>         for j in $FILES; do
>                 sed -E "s,\b$i\b,$new,g" -i $j
>         done
> done
> for i in $(git grep "#define zr" drivers/staging/media/zoran/*.[ch]|perl -ne 'print "$1\n" if (m/#define\s+(zr\S+)/)'); do j=$(echo $i|tr [a-z] [A-Z]); sed "s,\b$i\b,$j,g" -i drivers/staging/media/zoran/*.[ch]; done
> </script>
> 
> This should solve almost all warnings reported by checkpatch.pl
> in strict mode.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/zoran/videocodec.h   |   2 +-
>  drivers/staging/media/zoran/zoran.h        |  30 +--
>  drivers/staging/media/zoran/zoran_card.c   |  52 ++---
>  drivers/staging/media/zoran/zoran_device.c | 242 ++++++++++-----------
>  drivers/staging/media/zoran/zoran_driver.c |  94 ++++----
>  drivers/staging/media/zoran/zr36016.c      |  14 +-
>  drivers/staging/media/zoran/zr36050.c      |   2 +-
>  drivers/staging/media/zoran/zr36057.h      | 122 +++++------
>  drivers/staging/media/zoran/zr36060.c      |  76 +++----
>  drivers/staging/media/zoran/zr36060.h      |  66 +++---
>  10 files changed, 350 insertions(+), 350 deletions(-)

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
