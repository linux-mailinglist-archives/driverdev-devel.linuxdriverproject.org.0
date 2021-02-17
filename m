Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D139231D5A0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 08:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83475871BA;
	Wed, 17 Feb 2021 07:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eHUlPj5gLIfV; Wed, 17 Feb 2021 07:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12EF1861E6;
	Wed, 17 Feb 2021 07:10:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A08241BF354
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 07:09:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9BE858666D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 07:09:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7qHsGDxDWvkD for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 07:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
 [209.85.167.178])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E034861E6
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 07:09:49 +0000 (UTC)
Received: by mail-oi1-f178.google.com with SMTP id l19so13994115oih.6
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 23:09:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fl2ViOY9h56E961Hc/YiKWFXGdUJS84TzaxmxWiWeG8=;
 b=kVqbPlNevld/jctgmmXNvAy3mm/wZj+H6Y6B1yvKoGltN9WB9BtjsIGLhBdLfEgi5x
 XxlGDM8rPeNO5CJ/zqblFDECrO5Ki5MV/1uXzhdy8Jv3RiLSG0KDcbcULhMi10IJG0JN
 o9PM5TkDqgJYUS1OIaU4ihtgtL+ZxovJ3ns6/EbsG3xi4WjPgZJtWGosoudWLXvqrNn7
 NJJebomdfzd2KdPc7zPNR+POxpQ+ecc4hdxlVwkcOpUBCBe5cW+O1MEQuNhvRpeZLs0I
 ij7H5z4iyMgxIIQ4+RgVJOj+4L/ndVPVGpgEQnSPLpY3K9DjKeZxHxzvlmX6lbh5lZW3
 MgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fl2ViOY9h56E961Hc/YiKWFXGdUJS84TzaxmxWiWeG8=;
 b=hivKN5vxA1C6dYgKhz16gMWOgiLXOGb0z5GEhKEYb/GZxUM5U4bkDxh59YP/bm1+iO
 mUXG6TEkYMw/KwlQ0lZ/kCGHD5WBwZSZHjeiIvCSG6LkFjuln6Xcci1SMKOoOlz2Yd2n
 NDXelojfktknOrIvPNzq6nHfhBdSlGraB4wCqTiFE0degJ4BrAUH4Ja9Uz9BdlHSNYNy
 ffWjwrWEzCwxLlJra6eQPzUglb8rBzU4RbYQQPXnMUQuqIpTHLMHlOG/ToX5Rn0nQT1k
 iEAGEjWRYPSeRLe1BigjK/M1Dc/beQFVh5YPR11j5Hg9oCCfM0cOQOYfaZ2Z2pHBehYp
 RNvg==
X-Gm-Message-State: AOAM53376R0JkpJxl9KOSGRWkXdldVcjJaDV58jWHmeJHC1wJ72P9ryx
 RMUsOUlkHqX2bYj4BBc4wEByQzpqpOrFIn6mEdM=
X-Google-Smtp-Source: ABdhPJwJn1U9AZa7VOgvauPTBDG8TJIOGQRC0UYjob/2kMwmml2/XmK8ewSCnFl3oP/gNoHaw21zJSAYadI0RTiFRNs=
X-Received: by 2002:aca:5606:: with SMTP id k6mr5170273oib.158.1613545788297; 
 Tue, 16 Feb 2021 23:09:48 -0800 (PST)
MIME-Version: 1.0
References: <20210217070710.7359-1-selvakumar16197@gmail.com>
In-Reply-To: <20210217070710.7359-1-selvakumar16197@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 17 Feb 2021 08:09:37 +0100
Message-ID: <CAMhs-H-in1wTtFSC+mVsvyCdNXArwOHqVxTp9D4KrgNqoCnjAA@mail.gmail.com>
Subject: Re: [PATCH v2] Staging: mt7621-pci: fixed a blank line coding style
 issue
To: Selvakumar Elangovan <selvakumar16197@gmail.com>
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 8:07 AM Selvakumar Elangovan
<selvakumar16197@gmail.com> wrote:>
> Removed an unnecessary blank line before closing brace reported by
> checkpatch.pl
>
> Signed-off-by: Selvakumar Elangovan <selvakumar16197@gmail.com>
> ---
>  drivers/staging/mt7621-pci/pci-mt7621.c | 1 -
>  1 file changed, 1 deletion(-)

Reviewed-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
