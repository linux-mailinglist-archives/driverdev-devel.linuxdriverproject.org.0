Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AA6A86D2
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 19:06:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2EDF23120;
	Wed,  4 Sep 2019 17:06:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvVuHPOuThOX; Wed,  4 Sep 2019 17:06:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA5EF20459;
	Wed,  4 Sep 2019 17:06:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9A061BF3C5
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D594E87AB6
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 17:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qUjUqQj0jBlw for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 17:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25C1E87A87
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 17:06:33 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id g128so16512849oib.1
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 10:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=akOkLHg6n29QqKNPN0D/UrC0AAWyYG9BrPMgu+TzegI=;
 b=PqfURX+k6u7bgIDBNBhTj8IbdbvV8WLcJzdw7ODpyMdVIygpsWK/jkT5ZCnguxSFGd
 8VlYEI6lXwZN1QZXLQuutmnRlGIPY1On9/VfVAU4gDU8ryDHS2LfS1Z8KVuq0VPP0YB2
 Kg2IUgtcglo4YMwW3lvKeUdZY2DNA0m8T+rBqZYF1iGBFnrLH/gB2P30mjhenbTsIECo
 GACV4S8GD3SMKQ/wbeDTA4DoUx47PyYGSRKpJU9oSfXIyAVGnbd06gule5Y0U23AVDl0
 GUgA6RnDAslLlsw87sbyMMsWHrpqPks/fCgc35YCVyjhgmIyi9zBONaQrsk+jurKmPia
 QrCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=akOkLHg6n29QqKNPN0D/UrC0AAWyYG9BrPMgu+TzegI=;
 b=DZqsSUNOicEfKJi5kSucuTYZUq1t34/XNP1dgSbKHrHzw9QUxhBSSy8m0udvve65q6
 6mP5CJyPSz+ufphehLtKghDHofyyWRcI0wlH90He0zuYGZMoj+SExV0XKDUCGWYqx9kp
 PJSCi1GvOXq2xg2aIoogHfFO/62v/euANe9M7ttfMx7vm9na7iNEsDNWrktEUBMfST/k
 wcp6ipsHCMVuB4OjCINfVrg1pF4x7RNU4AHEFX1BogRJ2A7vaLYUVjbClk2+6kI05Pf9
 S1ySa+81TsXKgDAopVluAFM/FxJoxu9DP/QLHXQFzKWNDMKmVXBucP/5Sjm/gMCx++oF
 1LPg==
X-Gm-Message-State: APjAAAUcZQynXLgr8O9352wgAPqEBSwobxD/p7N7LCIo7fxRjZKYMazq
 8vAgEvJW24I/fuwubLIuTnw1vScWC9AFk1ATZHgUqg==
X-Google-Smtp-Source: APXvYqy1jl394J1dtoIqVg0tF3CLuM+SURQYJEtv6V/Z5qYxE+OHahZ2oLbi0N3f+Wd2lBeFo8hvyOT9gvPDap6hCi8=
X-Received: by 2002:aca:aa56:: with SMTP id t83mr4150370oie.178.1567616791972; 
 Wed, 04 Sep 2019 10:06:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
 <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
 <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
In-Reply-To: <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Wed, 4 Sep 2019 10:05:55 -0700
Message-ID: <CA+wgaPP_RE8xcEH8LZc_XSV-yTd0A14k0oFb3Ohfvs8v=ixTbg@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
To: Joel Fernandes <joel@joelfernandes.org>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 kernel-team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 4, 2019 at 7:20 AM Joel Fernandes <joel@joelfernandes.org> wrote:
>
> On September 4, 2019 7:19:35 AM EDT, Christian Brauner
> <christian.brauner@ubuntu.com> wrote:
> >On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
> >> Currently, the only way to access binder state and
> >> statistics is through debugfs. We need a way to
> >> access the same even when debugfs is not mounted.
> >> These patches add a mount option to make this
> >> information available in binderfs without affecting
> >> its presence in debugfs. The following debugfs nodes
> >> will be made available in a binderfs instance when
> >> mounted with the mount option 'stats=global' or 'stats=local'.
> >>
> >>  /sys/kernel/debug/binder/failed_transaction_log
> >>  /sys/kernel/debug/binder/proc
> >>  /sys/kernel/debug/binder/state
> >>  /sys/kernel/debug/binder/stats
> >>  /sys/kernel/debug/binder/transaction_log
> >>  /sys/kernel/debug/binder/transactions
> >
> >Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
> >
> >Btw, I think your counting is off-by-one. :) We usually count the
> >initial send of a series as 0 and the first rework of that series as
> >v1.
> >I think you counted your initial send as v1 and the first rework as v2.
>
> Which is fine. I have done it both ways. Is this a rule written somewhere?
>
> >:)
> >
>
> If I am not mistaken, this is Hridya's first set of kernel patches.
> Congrats on landing it upstream and to everyone for reviews! (assuming
> nothing falls apart on the way to Linus tree).

I really hope so! Thank you Joel and everyone else for the reviews !


>
> thanks,
>
> - Joel
>
> [TLDR]
> My first kernel patch was 10 years ago to a WiFi driver when I was an
> intern at University. I was thrilled to have fixed a bug in network
> bridging code in the 802.11s stack. This is always a special moment so
> congrats again! ;-)
>
>
>
>
>
> >Christian
> >
> >>
> >> Hridya Valsaraju (4):
> >>   binder: add a mount option to show global stats
> >>   binder: Add stats, state and transactions files
> >>   binder: Make transaction_log available in binderfs
> >>   binder: Add binder_proc logging to binderfs
> >>
> >>  drivers/android/binder.c          |  95 ++++++-----
> >>  drivers/android/binder_internal.h |  84 ++++++++++
> >>  drivers/android/binderfs.c        | 255
> >++++++++++++++++++++++++++----
> >>  3 files changed, 362 insertions(+), 72 deletions(-)
> >>
> >> --
> >> 2.23.0.187.g17f5b7556c-goog
> >>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
