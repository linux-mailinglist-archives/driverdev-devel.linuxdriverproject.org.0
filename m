Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF49F36B8D0
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 20:19:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B3F182C75;
	Mon, 26 Apr 2021 18:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kd9aO1ZvfZS1; Mon, 26 Apr 2021 18:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7472F82993;
	Mon, 26 Apr 2021 18:19:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 51B191BF391
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:19:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48DBD40379
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:19:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linux-foundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hdfC4ME3QVcL for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 18:19:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEBFE4037E
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 18:19:09 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id 124so8653546lff.5
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 11:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9fj9vMd+buFku6gAKT/mPMkFnjXdzojSDejPQup/S60=;
 b=Q01kOhUGWWIKHSVb/Zmh7lArlQYPc2ZrxW136Xdk0xLgCmuKsigWhmNvvDMqT65qWy
 e9ITGeuPpHw69XYPQQcDHkqr06DiQicWPqFFYOIzn5mTzjm2rCYlRZxNsv4X9Bj9Flc3
 EdcMBIO6JHLIZbaK906r4a/KKC399U9peqTfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9fj9vMd+buFku6gAKT/mPMkFnjXdzojSDejPQup/S60=;
 b=Y0+HE7c9QjjfzrqCllUTVu5yW7vUgY6sKDdVov1tcMymboSJ35hhhWE6sUQ17g6Z6j
 XXLkBmadgJnAjnRCj7zq68xblB252Dcy/RMO3yHipcRtEQgymQwjRJqOLDPMYbLk+9r1
 aROSprYxyvoPH4qXpc8TsTouCjhP31jrueqKXGYbi/eACz+vIODekwQAmGH6veI6Qgzx
 YoaCHMCkpTKGlG/bezi+9WzvVBKF29qCYa0io4l9VYTfhKNuPyrlsyQKn8LOzlFxKaY2
 GilVoSnlJz4GVIVuScKCO51eQyaLkWXTNujyB9LOOtYxE52+ZPo3gXAK9gNsUyajYtHD
 UR7Q==
X-Gm-Message-State: AOAM531b1IDYnvLToDYR/3sJXrz7VkZ8h0iGZwWmRmti0i8gC1IeFz4Y
 eA10irQnEhkqpYis9Q1EswsmevsXO6OCcFPp
X-Google-Smtp-Source: ABdhPJwIgct1P9vi5qBvwfFCm1Tt69ir4zQ34fx6S0pcK66lPlrBm87W/sXHMSDZ6a8q3KCZi7D+yQ==
X-Received: by 2002:a19:ec06:: with SMTP id b6mr9616721lfa.561.1619461147326; 
 Mon, 26 Apr 2021 11:19:07 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com.
 [209.85.167.54])
 by smtp.gmail.com with ESMTPSA id o18sm1477305lft.265.2021.04.26.11.19.06
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 26 Apr 2021 11:19:06 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id w9so5825013lfr.12
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 11:19:06 -0700 (PDT)
X-Received: by 2002:a05:6512:a90:: with SMTP id
 m16mr13314098lfu.201.1619461146259; 
 Mon, 26 Apr 2021 11:19:06 -0700 (PDT)
MIME-Version: 1.0
References: <YIa2ErYuJyCfSkS+@kroah.com>
 <20210427002648.22459fa7@elm.ozlabs.ibm.com>
 <YIbYI2825E4Z2b/3@kroah.com>
In-Reply-To: <YIbYI2825E4Z2b/3@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 26 Apr 2021 11:18:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgWLrNQeV20DiCnJVQpfKFkbtC+8=rAqt-wyBFMrHToEw@mail.gmail.com>
Message-ID: <CAHk-=wgWLrNQeV20DiCnJVQpfKFkbtC+8=rAqt-wyBFMrHToEw@mail.gmail.com>
Subject: Re: [GIT PULL] Staging/IIO driver updates for 5.13-rc1
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Stephen Rothwell <sfr@rothwell.id.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-staging@lists.linux.dev,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 26, 2021 at 8:11 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> Yeah, merge issues with other trees are hard to resolve in the single
> tree here, not much I can just yet, have to wait for them to hit Linus's
> tree.

It's generally a good idea to mention these things if you know about
them, just in case the other tree had come in in the meantime and I
had merged it first.

That didn't happen this time, and I do generally catch these things
anyway as long as they at least trigger problems for my usual x86-64
allmodconfig builds (but not everything does trigger that).

              Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
