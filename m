Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 709A41E4AB4
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 18:45:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CCA5725048;
	Wed, 27 May 2020 16:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjPjrtNMj9s6; Wed, 27 May 2020 16:45:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4676E24FA8;
	Wed, 27 May 2020 16:45:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9091A1BF834
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 16:45:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C01D24C93
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 16:45:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iw9TzZ3gIBJU for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 16:45:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B48E924C8E
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 16:45:24 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id s69so1746757pjb.4
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 09:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HOBnpx8HZKNA2mYIrdIzHPO79IIq+OTFtfJlgxpJynw=;
 b=p4Ckd5waAaTuvezAffm07NRV85HZodPW8wNla6B8uK/gXbUpwtX5HwUMRwlRt3Fdfh
 q2Giqjv+VG1ScvnivS3X3fmz31jXmDS8roFzNGnrS/HiWq4o8MSg+UyNhvKCbCsQv4vy
 FtPuEoMZSz1dZ7J4ExxMdMRMPIc2OOJiB5+mnuGh5KbMyuqRgRDnFgVlUIb/DoqtyC1I
 um+HfeHStBaBKv54odL4+T7QBiDqyR3cntNfh9Y+8us1fkWTCMz7Hk8KQCyhqH2EAGjP
 9GWSvpiZGfyqffIG24RHMBYKSuKLiAR9TGMuhGwYrfr9IwDxVlFuqDBtCi3JGA1g0DZb
 nqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HOBnpx8HZKNA2mYIrdIzHPO79IIq+OTFtfJlgxpJynw=;
 b=dKpMb5kI8HyPq2ZEWOMd/sGFukq6UlR0DqG0c61j7XATtQLzK//5dYMiZpB8vvYvMz
 BkhpL2cft8X+Sr69EA4MtM2PlCucjCFHxGYX85iIVplD8Ab3ep9POloyh0HkmUbEpa95
 ag1eFrfZa7+FMTXf5mm3tE05FK2T+1uYrh1FMWhwTV5BOYQXh0/U340wYFVQ42Xalv+l
 QkIsY3xjCS3keRnyRhfO1Cw4cIZReBQD22suB6LAAoAmn5cEksJrek7pejANrIOLmOfX
 X1+NtIQ/CoNax3kNir2HEdWqI7AUg5Bqwhyv0H1KuOkxaXk3BGYmv6EZgYNlKiD5GL5G
 DmDQ==
X-Gm-Message-State: AOAM533z5qARCk32DdSLZc9P4XlSFOaWk3V0XvKPAYaPps+JezCmR/EW
 wHnaD2YEpy819g1bdy0WybE=
X-Google-Smtp-Source: ABdhPJxqHB/iYSQ/+IIgLYnRKb0OQneD8BTKop/Sw/gGN6GWtWYe7tcz1W0KOcQOXoNpZgVtiC+KMQ==
X-Received: by 2002:a17:902:a584:: with SMTP id
 az4mr6717595plb.201.1590597924251; 
 Wed, 27 May 2020 09:45:24 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id c12sm3147692pjm.46.2020.05.27.09.45.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 09:45:23 -0700 (PDT)
Date: Wed, 27 May 2020 09:45:21 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: Re: [PATCH 0/7] media: atomisp: Address several clang warnings
Message-ID: <20200527164521.GA1239557@ubuntu-s3-xlarge-x86>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
 <20200527104525.5e6cd93b@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527104525.5e6cd93b@coco.lan>
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
Cc: devel@driverdev.osuosl.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 27, 2020 at 10:45:25AM +0200, Mauro Carvalho Chehab wrote:
> Em Wed, 27 May 2020 00:11:43 -0700
> Nathan Chancellor <natechancellor@gmail.com> escreveu:
> 
> > Hi all,
> > 
> > This series aims to clean up the code while addressing the majority of
> > clang warnings in this driver, some found by the 0day bot and others
> > found by me.
> > 
> > There are several enum conversion warnings that happen, which I do not
> > really know how to solve without understanding how exactly this driver
> > works. I would appreciate some guidance or a solution. Below are the
> > warnings, sorry for not wrapping them but they would be hard to read
> > otherwise.
> 
> ... 
> > ../drivers/staging/media/atomisp//pci/atomisp_compat_css20.h:117:22: note: expanded from macro 'CSS_ID'
> > #define CSS_ID(val)     (IA_ ## val)
> ...
> 
> I actually wrote a patch getting rid of this ugly thing:
> 
> 	https://git.linuxtv.org/mchehab/experimental.git/commit/?h=atomisp_v3&id=cf6a15543ace1e99364911c0b7a2f6b8f2f43021
> 
> This one was already submitted upstream (not merged yet), but there
> are also lots of other patches on my working tree.

Ah excellent, that makes the warnings a lot more readable. I am still
not sure how to reconcile the differences, it might be easier to just
change the types in the struct to int.

../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
        ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:68: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
        ~                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:48:39: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
        ~                                    ^~~~~~~~~~~~~~~~~~~~~~~~
../drivers/staging/media/atomisp/pci/atomisp_subdev.c:47:34: warning: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Wenum-conversion]
        { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, IA_CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
        ~                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
5 warnings generated.

> I'll try to apply your patch series on it, once I'll be able to
> fix a bug with mmap support.

It looks like all of them apply to your experimental branch aside from
patch 3, which you handled in a different way.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
