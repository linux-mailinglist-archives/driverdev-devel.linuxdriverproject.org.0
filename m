Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0D82EB5FA
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 00:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53C6622EC9;
	Tue,  5 Jan 2021 23:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W6Itfel+2T6M; Tue,  5 Jan 2021 23:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C0D0122C51;
	Tue,  5 Jan 2021 23:16:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D44F1BF588
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 23:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99C1A86E1A
 for <devel@linuxdriverproject.org>; Tue,  5 Jan 2021 23:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-Xo34WMSkTJ for <devel@linuxdriverproject.org>;
 Tue,  5 Jan 2021 23:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AC20486DE2
 for <devel@driverdev.osuosl.org>; Tue,  5 Jan 2021 23:16:32 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id 23so2373761lfg.10
 for <devel@driverdev.osuosl.org>; Tue, 05 Jan 2021 15:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tGB6QUY+TXt7WNkTnLLJkBfEaanHlVTcyU2YpFl1kfo=;
 b=DmO66jbJC3yhw7U1cHjMNy4Af2+ScSsHR1Nzsih/9Q2IWnaMjBz9ypMDD7iWowglQ4
 FK/FZvzPKMz6By9e9cr2cOSeMScNaYIVRmZFnb7mDSRpY1YChWQc5lCmVbxiZW6qmIRB
 5SXwRgQV4B9SMb5wj2cLGm+hoMBR4CLqwrYiVKgRLTtYntqa9czDhW5/U7Ib5oC2xbL+
 WgAbGGDanQ1/XWYicAmYCbF/iBexDVcPRcEFyKUrSQ9u3OvaIaoN9UaWLf8zCIdXAM0l
 VjjWTeoiKwjMPVhLZ4Wy7vJoMPyFpUMThUJErz07cEgIlDcEyz7dbn4UKEf1ILGQr5ma
 mGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tGB6QUY+TXt7WNkTnLLJkBfEaanHlVTcyU2YpFl1kfo=;
 b=eLusAoNA7BXi05mNxMjYKZj//8Js9wjDLo8uhfICsTM7cXlltOpd7yB6HxZqWcI8CT
 ++AVT+KQakaDZRoi5Ab+37s1hWZCVi25Vsm7tBmTmLBM9ak0IkSA3aompYPd9RiL+MfN
 bWA4DUFnWSTOtilXXCpH7/Nps/Ylyi2a7vLdFHoizDXoO/7zZSxbZE+tc6dlZZyrKWnE
 S0PW+EMgx24Ohe1FsVIJmDofnJIcuCM10fCNQ+KjKyh99iKJobKtS5sXre9bC7g2kw75
 586DcShdepI0gYfv/UqpG6IhMzrAES2roECp6Tls1+FU8LFolKWnbv80ik5o0KaIDWFh
 FHjg==
X-Gm-Message-State: AOAM5323jsW5sAMLSHpSAxE4g2HxctSJBbVfYuu046R0KODWjcXnmAc3
 cui4e1J3zQaPDC4ryz6dWnVXOZjwTuxj1TSRiYB9VA==
X-Google-Smtp-Source: ABdhPJznuVrksgm84PMcus+QyDaVfgW6u2mkKsIVQltPcolvac4fgd/cpIlV2R1TwKOXnjtJItiW+yEwEo3Wad7yr1c=
X-Received: by 2002:a19:495d:: with SMTP id l29mr610927lfj.465.1609888590550; 
 Tue, 05 Jan 2021 15:16:30 -0800 (PST)
MIME-Version: 1.0
References: <20210104150651.32083-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20210104150651.32083-1-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 6 Jan 2021 00:16:19 +0100
Message-ID: <CACRpkdZTpxoBaZvXukKuxXObq-Acix74qbQ1kbxA1XqXGo=Y-A@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: match pinctrl nodes with its binding
 documentation
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
 Greg KH <gregkh@linuxfoundation.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 4, 2021 at 4:06 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> According to the binding documentation pinctrl related nodes
> must use '-pins$' and ''^(.*-)?pinmux$'' as names. Change all
> to properly match them. Also default state is for consumer
> nodes and shall be removed from here.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
