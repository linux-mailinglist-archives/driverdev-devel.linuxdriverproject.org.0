Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCE63648A1
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Apr 2021 18:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D153403A9;
	Mon, 19 Apr 2021 16:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GKNtTaKkclPQ; Mon, 19 Apr 2021 16:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9C4C40377;
	Mon, 19 Apr 2021 16:57:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EF2761BF9B5
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 16:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB3BF4013A
 for <devel@linuxdriverproject.org>; Mon, 19 Apr 2021 16:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6z1VnsZ6LY9 for <devel@linuxdriverproject.org>;
 Mon, 19 Apr 2021 16:57:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9FFED40100
 for <devel@driverdev.osuosl.org>; Mon, 19 Apr 2021 16:57:05 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id o16so4452119plg.5
 for <devel@driverdev.osuosl.org>; Mon, 19 Apr 2021 09:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LFLAtSvytla0zTYcsW46mWeyZlofOCWa3x8xY0lnO7M=;
 b=H8hCSiqQKIDKul/wf025S/2I8kyN/iAfc/+Te8+ygVBtigfjKvw+qcK3fdE/uG6iQb
 dbo/uRWNeF3x7j2Ybb0bk6EPtOkJrtvLoJeR3QT7hzwpWPgQw5mP0ZoEyIQB3r0shGzt
 wKqGYK5TtI0KlBz2LxjgiBdIb49oM5EMtcCBwnLWTW5iJCNyFZI2qomf2/2LUFJNrm5T
 YhevHK1tVhAF4F7A8tJ0bBoPfCl/taHnQhARBUQngM9VIm7yksjXNhLidnxpuIz4Gg2Z
 7gbZi5sTtzhRsoSrRraHSqZDOpE0/fXl30rmtV/exhogkg6G5tkLuoGCR9s3g3bhLCyg
 BuBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LFLAtSvytla0zTYcsW46mWeyZlofOCWa3x8xY0lnO7M=;
 b=ih4mU542M9BJ0DBqhO5K9OEGNKFb+/ascvyyQ7iqJwHc91O89u5kMhE2eW1PhuDvOp
 +6J4q+zTmArxnmuP1WAITXA/z4g7vuXzmfnN0pytRCb8CK4qxKCt/7ul4whl+iAkkly6
 hmTrbYCkxd8DZ9DCxJeZUHOmGZXyuUgjl7iEaxrrTTQ8VSruSBU2Puc184P6HMMYNGe4
 mYIQTZGHB4pghVhrXgOlesBAU4Toxk4QGWAPtjezcCZH+v+/Im1Bblott1T998yUQIut
 +alOZmjWjnHl1KLLumC7OM+mulXT1gILGdylbYxdMSAf+GiAFLFWwboGEih5qlLl1MPE
 VJvw==
X-Gm-Message-State: AOAM533c61y9U6qwqoFVxNUVx3IyzZLdODWCBo08pyfZMmY3dSb4BAR7
 s+ckqqeTyqHCsoCXdDE43ZI=
X-Google-Smtp-Source: ABdhPJwOKSCP2ZLHExvU1pSIpwpfsfPxKIPeYhQTx5XgAqjO98qey0O9Czry9a/reFAOjmKswt1tZA==
X-Received: by 2002:a17:902:b483:b029:e9:eef4:4f16 with SMTP id
 y3-20020a170902b483b02900e9eef44f16mr24796074plr.38.1618851424942; 
 Mon, 19 Apr 2021 09:57:04 -0700 (PDT)
Received: from ashish-NUC8i5BEH ([182.77.14.23])
 by smtp.gmail.com with ESMTPSA id 76sm7498096pfw.25.2021.04.19.09.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Apr 2021 09:57:04 -0700 (PDT)
From: Ashish Kalra <eashishkalra@gmail.com>
X-Google-Original-From: Ashish Kalra <ashish@ashish-NUC8i5BEH>
Date: Mon, 19 Apr 2021 22:26:59 +0530
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: silence symbol 'wfx_get_ps_timeout' was
 not declared warning
Message-ID: <20210419165659.GA2363@ashish-NUC8i5BEH>
References: <20210419153348.GA22782@ashish-NUC8i5BEH>
 <3163466.7bx4QQXRp1@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3163466.7bx4QQXRp1@pc-42>
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
 linux-kernel@vger.kernel.org, Ashish Kalra <eashishkalra@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 19, 2021 at 05:55:34PM +0200, J=E9r=F4me Pouiller wrote:
> On Monday 19 April 2021 17:33:48 CEST Ashish Kalra wrote:
> > =

> > Upon running sparse, "warning: symbol 'wfx_get_ps_timeout' was not decl=
ared.
> > Should it be static?" and "warning: symbol 'wfx_update_pm' was not decl=
ared.
> > Should it be static?" is brought to notice for this file.  static keywo=
rd
> > should be added to prevent this warning. let's add it to make it cleane=
r and
> > silence the Sparse warning.
> =

> Hi Ashish,
> =

> Thank you for your contribution.
> =

> It seems that this issue is already fixed by commit ce59858bbc10 "staging:
> wfx: make methods 'wfx_get_ps_timeout' and 'wfx_update_pm' static" (merged
> in master in version 5.8). Can you check you are working on the last tree?
> =

> =

> -- =

> J=E9r=F4me Pouiller
> =

> =

Thanks Jerome
It seems some sync issue with my source code.I will update to =

latest and correct
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
