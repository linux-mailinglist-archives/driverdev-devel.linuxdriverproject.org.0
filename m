Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B62E72D1C3F
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 22:44:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 309772E173;
	Mon,  7 Dec 2020 21:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xBmVRmT7VfO5; Mon,  7 Dec 2020 21:44:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 66A7B2E162;
	Mon,  7 Dec 2020 21:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8540E1BF3A4
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 21:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7BDA82E1F3
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 21:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0MQI+avv13O4 for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 21:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by silver.osuosl.org (Postfix) with ESMTPS id DD3062E17F
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 21:44:04 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id d20so20184397lfe.11
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 13:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NBllnL8naQwiLC3IbQ729nVkC34dWc2rKWCyWdH5Py8=;
 b=YzEXc63jD6JXdypKnuewp+ea/CgHHiBDUoFB1W2zKHwdVhFGLPBBETGuO++CuhHmE6
 NBgMEpJl6h4P+RzvyXvO6GNtsNeLZw9lln3RpJRBWPD3XVptl02AM+h3xBfD9L3X/V2B
 mEAh4JO1bjQqgtgCJHZ2Api/oJwN4bYF3iw4KnqJmQd55uDtHLvz8DCvf2ZZxlWU+5lC
 NWZIL5ftDZ/D2gMYLNIZpC6XgvMQyxbqO+5nKXde4EVhxp4sMTCY3XWnoqXMQVsGPwct
 bL1rrZMtELljIjVrU+HIYALDBy87TxdKunAWvu6/aBKub2xN3IA5Z4aPhXMMOeTLs5hL
 eC8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NBllnL8naQwiLC3IbQ729nVkC34dWc2rKWCyWdH5Py8=;
 b=uj2ciwRkluNXBN5EJHPSiZ6RCvAyyFjzMtpqdxX+JSe0Wj5aIkrUcxI19VeflVqzwo
 bYgzSVXrnHgYjToA3BJriMK/TVb3BV2egUPZVmLbtpsaiwT8eqnrd7J6qT2bze/rS8Xw
 fcPdNPeDS4+SzzX/bbD3RLyfHo4Lb63OaYYMXXauvtXl32u2+SnzecMKHyh7zq7jk7zy
 QJhja3z1mjfsDP7Yq6FqqSOzRL5FTFzpb5fp9M6dgfRhZn/oUajAHwwJNiPjqt/ovhwk
 xYdre4mcajcruNo58zQVhIPsWWF+ZJKoeCOoP1e1aWzSxWzd9Uz1PlmFbH3m6Ej6XF2H
 iFbw==
X-Gm-Message-State: AOAM530nCuP7I8Gvz8t62fXnn6Z5tlvVZAv3IeCeae3GCGyDnJ5CFBKH
 9FKLPTjhGwvg1ojxL2wSsTFw0glLRYZo3uTeTpryHw==
X-Google-Smtp-Source: ABdhPJzBFQxeWpbrZWzI8IAvXWeRXihWFY+gMGNPFO1E69dT+O2Nviq0M2ZRvmwNvqeh2WwWeAdngxJeYIkrO0APqRg=
X-Received: by 2002:a19:ad41:: with SMTP id s1mr9615981lfd.571.1607377442784; 
 Mon, 07 Dec 2020 13:44:02 -0800 (PST)
MIME-Version: 1.0
References: <20201206105333.18428-1-sergio.paracuellos@gmail.com>
 <CACRpkdapoB3P2wgMG+WbrsGopfgPtk5ZebRyb__wZK_hXzXZtg@mail.gmail.com>
 <CAMhs-H_R5dp14_8OG=Mh2kfRG3SXGGAcAhY8NF0sd4M8mk6nWQ@mail.gmail.com>
 <CACRpkdafXZJ5W9Z0LJv3p7htP12o2mULgHhFa8kmnT+LWJhh0A@mail.gmail.com>
 <X85PR+MHeoKm2b6b@kroah.com>
In-Reply-To: <X85PR+MHeoKm2b6b@kroah.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 7 Dec 2020 22:43:51 +0100
Message-ID: <CACRpkdY+Xsv4hnVhGWcPZkDLX0TzYWeUn2LmAEQLDTVkJd9g4Q@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: stop using the deprecated
 'pinctrl_add_gpio_range'
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: Weijie Gao <hackpascal@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 7, 2020 at 4:49 PM Greg KH <gregkh@linuxfoundation.org> wrote:

> Sometimes we just do a "add a new driver to the real spot" that goes
> through the subsystem tree, and when that is accepted, I delete the
> driver in the staging tree.  This is most often in networking.

That's unnice, it will loose the history, it is so nice to git blame
the source.

> Or you can wait until -rc1 and do a move in your tree, or just tell me
> to do the move in my tree with an ack, and I can handle it all.
>
> Whatever is easier for you is fine with me, I'm flexible :)

I say let's move it to my subsystem before the merge window
if there is time. I'll provide ACK.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
