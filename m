Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5A72D25BC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 09:21:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1702086E44;
	Tue,  8 Dec 2020 08:21:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MltBkLGwEiKA; Tue,  8 Dec 2020 08:21:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF11B87232;
	Tue,  8 Dec 2020 08:21:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 228F61BF29F
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 08:21:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1EC24873ED
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 08:21:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qXLdO-20HEM5 for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 08:21:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8D8BC873DC
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 08:21:44 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q8so18064676ljc.12
 for <devel@driverdev.osuosl.org>; Tue, 08 Dec 2020 00:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/L9ij+xi4aU+RA5FHQP+6+0fS+qsQ1KICkMdHJmFYFc=;
 b=bYPvkZyzHphpd2LIG29zK/pI8TNd8M64LXuz04KBFAzCVM2tn6HgtLC4y0krAVsJGv
 HmZ6aUEcKYzXhARN1OGrWuBrOKpnEmmtqa7ywUSjV2r3A/jB2vpbQwNsgZOlxEJUcsl8
 QPPgKvurbDc295hFdI/W3mWEddd+hjtVyjNxtB0fT1BAi4cCrNQVH6032xcs8asD7CgZ
 EjanTiW0Fb3w7kLQrHr//TwXgV/cX7v7abUMsryIbh+Zh3qx0UasUnD0LEuYbhxqaqX1
 Y8uQ6gjPAkp/qoxxPhEYKuWcbegGalJQIMuDoMvXI7pe3d8Y1O/e8XVdhZAy05EJc7mH
 8j8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/L9ij+xi4aU+RA5FHQP+6+0fS+qsQ1KICkMdHJmFYFc=;
 b=Hk2pss/4gbmh+4CB+5VCQMn8ya/E78zb/2D9ygAlN+aCYGO31FwmHbyFCZ2OX8m/4Y
 sVNAPS2RqW35DgPNKqDC+FkykX1m1vzsjLwEj+oXh0QeQBv04o4GR4UJ0BCp+MZrDI4L
 TBpxqu/jL7hQ7BquXlOu+pSU1siIr1q6aKmaqk04ZkxW6zk0Fjt71hjAfg+FLRzlBPG/
 /Sf1uSOyUlyySN+0rwTOtRJ4w5qY50re7sZ1UK9f7Hlr+iHu02iG9w/8A8wzYTsQfDiF
 Uv2Ti6LUQQU6SA/994nkjru1FvdtNCvIC6OjlAiJjW4POVwp0SPtC70VoKbyegJfoNsZ
 haow==
X-Gm-Message-State: AOAM530xY4bT+7iwDzAcEeGeJVv7iseIp7GhlHGNU4z2S02lqDIJyuzg
 dAcl/KdYGel06Whpsynk+tDcg8/uEIQs7g4+guIi1A==
X-Google-Smtp-Source: ABdhPJz3QSFZPxGv2N/pnXp+VezSxPYZ2V9M6+O2npQftKaRSLMZh4qMKQdxMJx/Ncz13H34GLneBICqZoSBqKisFV4=
X-Received: by 2002:a2e:b1c9:: with SMTP id e9mr10482058lja.283.1607415702493; 
 Tue, 08 Dec 2020 00:21:42 -0800 (PST)
MIME-Version: 1.0
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
 <20201208075523.7060-3-sergio.paracuellos@gmail.com>
In-Reply-To: <20201208075523.7060-3-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 8 Dec 2020 09:21:31 +0100
Message-ID: <CACRpkdY_Me8kO-Fa-vUspJNv+2vy0fswTM-RaUoaZJ5rCfuynA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] pinctrl: ralink: add a pinctrl driver for the
 rt2880 family
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 8, 2020 at 8:55 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> These Socs have 1-3 banks of 8-32 gpios. Rather then setting the muxing of each
> pin individually, these socs have mux groups that when set will effect 1-N pins.
> Pin groups have a 2, 4 or 8 different muxes.
>
> Acked-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Greg I'm happy if you just apply this right now for v5.11, as Sergio
is obviously on top of things and the DT bindings will get there
eventually so I don't see any need to hold back the de-staging just
waiting for patch 1 (which I will eventually apply directly anyway).

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
