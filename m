Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA452D947C
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 10:02:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 47D1A87150;
	Mon, 14 Dec 2020 09:02:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DUJDs5TwHKV; Mon, 14 Dec 2020 09:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FC328711F;
	Mon, 14 Dec 2020 09:02:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C0AD1BF3D6
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:02:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 288C4873EC
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 09:02:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OGy31Eev6kn9 for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 09:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A5F3786F74
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 09:02:06 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id 23so28210483lfg.10
 for <devel@driverdev.osuosl.org>; Mon, 14 Dec 2020 01:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h7gw/JKcedbcbsZwWfTxV9h1NBzBz2xSdjArgBt47FY=;
 b=WIy+wdN5lxXjhzWSRCsGIRQ/FvjPCq2eE4e/RV8zdXhIGPEGF+/Dygqmnulqs2h0oy
 N39B12UanCXacWSc66RvefD94HonfQ58k1NWUgKUKXAY4zpDQWmZvKBj2W5pKXwo6MnF
 x5FPL/HMF/C854ApS3GWH+di2LmuWIV832VXVJxSVFqa3C18AkaomEYHXeXemsM3TPxS
 taxqysgYJxMEsk+r+3hsfGMKVQZrkFWoWAA7Jpie9ACkrJQNQSOD704OWnUVXLMKGZsO
 wLziKwG+kqLlPfC6UJiTmTvZ0hzRWRIMrj9nolAASDlfjotDFLZxTgOzrfJhpsSn5TEM
 TqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h7gw/JKcedbcbsZwWfTxV9h1NBzBz2xSdjArgBt47FY=;
 b=c3AGUaPE4v5so20s1ZANdK0N6yDSR2HiKktJpuggMU/zrMKXcvqWVGaHez0hhFR1zS
 vGvkVBVeRH4rrRbybXq9jW+zEgMwpKs7A7NQYgnVRZIv9u/6zB1rChB0vLtn8z2XGCMV
 L/edsnLMP9Qy3nd4Z9CLeZ9fiSPGr2U9/3TywxiwFMQzWeU3jWqtKCL6g3UTIUNuu2n0
 9Z197Q5+tYNch3m4HqHKRfTYhXM0Y18Jb6rUmkl7v30/3bZd/ae45f4C4bgSS2PPHDzV
 7AOgpMwJZBkR5uVVKzPOM7MnosX16xUZx/GUUJ/A45PVVet9W/9/p4rVSiS5iOVL4ziL
 YZyA==
X-Gm-Message-State: AOAM5335AcklFkeEbCOGOdcjAtws4vMrILG/w0qgSuFc+qTyHEG2+UBh
 PwXMIZt9kOtrN4KmFypZhpAWvddMqDjBVebTH+OjAA==
X-Google-Smtp-Source: ABdhPJzcfW5SBxLhGM7ZnE4/gbP2E/5QbU94LqpZXgLMKTebXCXYm5Ux1pgYsFxkEX42MlFg1Dig+zvDzSrCm3pQeTM=
X-Received: by 2002:a05:6512:3f3:: with SMTP id
 n19mr1240953lfq.586.1607936524573; 
 Mon, 14 Dec 2020 01:02:04 -0800 (PST)
MIME-Version: 1.0
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 14 Dec 2020 10:01:53 +0100
Message-ID: <CACRpkdaAd-wJuqspYTuj4RGTyJgobX+6j=5ZWWSCtdLLMnPoYw@mail.gmail.com>
Subject: Re: [PATCH 0/8] pinctrl: ralink: rt2880: Some minimal clean ups
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 13, 2020 at 5:17 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> After this driver was moved from staging into pinctrl subsytems
> some reviews for bindigns and driver itself comes from Ron Herring
> and Dan Carpenter. Get rid of all the comments to properly be in
> a good shape before merge window.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

If Greg wants he can queue them last minute. Else I'll apply these
after the merge window, no big deal.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
