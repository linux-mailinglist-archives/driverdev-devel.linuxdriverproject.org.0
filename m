Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A53286CDC95
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Mar 2023 16:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0BEC84153;
	Wed, 29 Mar 2023 14:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0BEC84153
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F5Qpr5AZr5ZH; Wed, 29 Mar 2023 14:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78BD684135;
	Wed, 29 Mar 2023 14:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78BD684135
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF9701BF3E9
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 14:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 89784614C4
 for <devel@linuxdriverproject.org>; Wed, 29 Mar 2023 14:31:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89784614C4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMwGzdTdn0as for <devel@linuxdriverproject.org>;
 Wed, 29 Mar 2023 14:30:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5046161466
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5046161466
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 14:30:59 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id p34so9061902wms.3
 for <devel@driverdev.osuosl.org>; Wed, 29 Mar 2023 07:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680100257;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Zr4X6wyMqM3FaFSlbgRQtbKkzLVZE5bqrrVko5Rwa5c=;
 b=LX36vMk60P0KTtAywKYoAuvxUWy2o1R8SFeE4Oa1ykSQ/QR5sj9EwREZigHcz/fO1u
 XAMUvWDanldqq9por9/iZMx2OfLRJSfdzYFUiVHo7Rs26BLaX5l7SPWM7vI/YdFhkciL
 0wdNBVt+USnQHX+ZP/RldM5jHLNU93KuOAL+60kzXOZddGOCP2VhGgAtRPH3MGePccCn
 7ViqRB0+zd5XYqpHUyV5Oacqi/RDltTU1F2E3HZcviQxrvSkA7ghidIvnQNGGZ8RubBr
 YzeHijt3IVSK2+nj8wxp+kCi0urC4FeEJA21nExXiAaZ9PUpfU67hPBNupfJ4JM7PirD
 rDrw==
X-Gm-Message-State: AO0yUKXWSiZUaj/Z5pJP8n08D1zPi0yP2ZWDDpglz2ncNvUnruSPO58J
 zgsjs+1sO5Y/Bu5Ef0ZzogY=
X-Google-Smtp-Source: AK7set8CpQuhy+NQhip4nyXlgZTJ/O7V2iF8vnlal0JCs0FmkIvo0kzZyO6if4P9x6msOc2ZGFi4mg==
X-Received: by 2002:a05:600c:2043:b0:3ee:4678:dde with SMTP id
 p3-20020a05600c204300b003ee46780ddemr15533132wmg.27.1680100256938; 
 Wed, 29 Mar 2023 07:30:56 -0700 (PDT)
Received: from suse.localnet (host-95-248-13-140.retail.telecomitalia.it.
 [95.248.13.140]) by smtp.gmail.com with ESMTPSA id
 v8-20020a05600c470800b003ef71d7d64asm2670516wmo.6.2023.03.29.07.30.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Mar 2023 07:30:56 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Kloudifold <cloudifold.3125@gmail.com>
Subject: Re: [PATCH v6] staging: sm750: Rename sm750_hw_cursor_* functions to
 snake_case
Date: Wed, 29 Mar 2023 16:30:54 +0200
Message-ID: <1854722.CQOukoFCf9@suse>
In-Reply-To: <ZCQeyWW3+d7+qT+b@CloudiRingWorld>
References: <ZCQeyWW3+d7+qT+b@CloudiRingWorld>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680100257;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Zr4X6wyMqM3FaFSlbgRQtbKkzLVZE5bqrrVko5Rwa5c=;
 b=KJT9KupMr4SgFRMB1R5Wh5QGDCXLeuHnE241gzx/vFvAdIk7ppT8Z1/BqjTEoZZmS3
 d0UPUn97r+cPBj80NygNM4gSJapGqb40vqiqV/fTx2iV5ugnPU5vY/faJZvPrGkmrZDS
 c2QVM/zfy5rAU1MQyTTHQMC5gtuuv2cEYSGLeg0aSDPPb28Jpac1WFoATQgNDbUxtRrb
 1Dsv+flWW5VqXfHEWEZUqj6H47QO7/vRO2p84ZitrI76Bei2hzLJmi6IV3oYcfXh8/Fa
 9M5LMdLzkNT5HOijXWkxgFHo3Iu/3GpRKKCJDTSMrLF8MwLTucF0eMahk8cAZxVEgDt8
 xb+w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=KJT9KupM
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Teddy Wang <teddy.wang@siliconmotion.com>, outreachy@lists.linux.dev,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, alison.schofield@intel.com,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On mercoled=EC 29 marzo 2023 13:27:04 CEST Kloudifold wrote:
> sm750 driver has sm750_hw_cursor_* functions, which are named in
> camelcase. Rename them to snake case to follow the function naming
> convention.
> =

> - sm750_hw_cursor_setSize  =3D> sm750_hw_cursor_set_size
> - sm750_hw_cursor_setPos   =3D> sm750_hw_cursor_set_pos
> - sm750_hw_cursor_setColor =3D> sm750_hw_cursor_set_color
> - sm750_hw_cursor_setData  =3D> sm750_hw_cursor_set_data
> - sm750_hw_cursor_setData2 =3D> sm750_hw_cursor_set_data2
> =

> Reported-by: kernel test robot <lkp@intel.com>
> Link:
> https://lore.kernel.org/oe-kbuild-all/202303110849.X24WnHnM-lkp@intel.com/

Delete the last two lines.

As Greg made you notice, it was not the Kernel Test Robot that had reported =

you an issue for which you decided to make a patch to fix it.

The reason you made this patch is because you know that the Linux kernel st=
yle =

guide wants developers to avoid camel-case symbols.

Before your "Signed-off-by" tag, you should only credit those tools and/or =

services (checkpatch.pl, Coccinelle, Smatch, Syzkaller/Syzbot, GCC, Clang, =
and =

so on) that had noticed that Linux has a problem that predates the first =

version of your patch and that your first version has the purpose to fix th=
at =

problem.

You made this patch because _checkpatch_ had reported issues with camel-cas=
e =

improper use, so you decided to convert some names to snake-case. You are =

invited to credit only _checkpatch_ for you patch ("Reported by =

checkpatch.pl.").

That credit is part of the commit message so, when you credit that tool, pu=
t a =

blank line after the credit and before the "Signed-off-by" tag. =


> Signed-off-by: Kloudifold <cloudifold.3125@gmail.com>
> =


Instead, you should delete this blank line after your sign.

> ---
> Changes in v6:
> - Include missed recipients in v5, no functional change to the code
> =

> Changes in v5:
> - Include missed recipients in v4, no functional change to the code
> =

> Changes in v4:
> - Update the commit msg (Deepak)
> - Use tabs replace 8 spaces
> =

> This v4 patch was prompted by 2 errors, 2 warnings and 1 checks reported
> by the scripts/checkpatch.pl, which detected the style problem.
> =

> Changes in v3:
> - Add this changelog (Philipp)
> - Move lkp tags and link to the correct location in commit log (Alison)
> - Update the commit msg (Philip)
> - Update the commit log (Bagas, Julia)
> =

> Changes in v2:
> - Use new function names in call sites (LKP)

This is the place to credit the Kernel Test Robot for noticing that you mad=
e =

mistakes with v1 and that v2 is for fixing them.

Therefore, give credit here to the Robot:

Reported-by: kernel test robot <lkp@intel.com>
> Link:
> https://lore.kernel.org/oe-kbuild-all/202303110849.X24WnHnM-lkp@intel.com/

Thanks,

Fabio

P.S.: Someone suggested to drop the "sm750_" prefix. I don't think you shou=
ld =

do anything like this because I don't see "static" functions prefixed by =

"sm750_" in your patch. However, later you may check if they can be "static=
" =

and, if so, drop the prefix and make them "static" (in a follow up patch).  =




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
