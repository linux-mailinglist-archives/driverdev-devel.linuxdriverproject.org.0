Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54989610DD
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 15:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCA098641F;
	Sat,  6 Jul 2019 13:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ruYVklUu6UxT; Sat,  6 Jul 2019 13:43:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DED185C56;
	Sat,  6 Jul 2019 13:43:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 351BA1BF5DF
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 13:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 334FD8511B
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 13:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HoTXpkmJeNyO
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 13:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E7C185116
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 13:43:22 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id h18so6441273qtm.9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 06 Jul 2019 06:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E2wzTeXAs6HgGFmbSYung62EHd3iKMNKpOKpTiEy2Jk=;
 b=m8RZqBR1EaoLHpfJ3eZHk2NHdE5yB6z3lg3FW2vNFzTdYkmY2R2nPPIwdrHi4jxmwx
 N7vXN37+817m4QZx9LyrTjDWjTpx05m+fwzmvq7sqvFHLsDYkZIS2LtzWoIxUzGlQ4ww
 WCmND/d6+5vIxNQwngU+gTSYWxQTvP1P3GiHevAv8LpIJ03JrZjKI4enuWxN+x+z7xvK
 sl5DYTfBbaqenjyXe7XKYzuxmkCYJQJyMYlSfL1pkxzzvDWat7fzTfvfr7hbXxWhjndy
 2qMmmQCagY6pT7sk8Lk9abl2AFWDUWSfThhmwK/ynQDs6ZaUOyFUDf/kczFJjJvuVbc4
 FOUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E2wzTeXAs6HgGFmbSYung62EHd3iKMNKpOKpTiEy2Jk=;
 b=kHn63GiqXR3/XOUQnaBXKhX036CpeERTKe5yzI35IUvFTEYIHs/4Bgk1nOqamKbjed
 UTlx+uxEvA4ENJ+EfijJLOMF224w4S+0pcHyPzIncT8h3SaogVL6Xc7Pw9rEp+OpSeWb
 5pbscwKtG0DLEbnCBXM4BxaFEqh8l4Nw9x7Jq9JBMxNe39M2zMhCUSkGxhdWO2+mphgj
 r6JcM3quG1Nv76lY0hUvPawZ7ziSVcmiqRvD/r4TgllVxgR+lGH1ZS51MzyZqXoA4bmv
 RTat97bU66HdZUyIMYBL0iQ3XzRSiXHApg404qjgeaq1g+adL0VG8gnVMvrIAOBxdDX9
 oHqQ==
X-Gm-Message-State: APjAAAUJslSkg5vH7KMWbmPk97LkP6U58Ksb45usagjocEU4kDkYP0DT
 dUebwjLMuCUOyoRRVDDqBDBEZkAwxz0SPGD37q0Amlor
X-Google-Smtp-Source: APXvYqx6eZQDZTTS2biOGt9gk2pqcvcKU750kZWR4hvtFTBKpScsAwZvpjX9G3gnSm2k5LfEu9vUZgSVNMFOeIwNZhw=
X-Received: by 2002:a0c:b07b:: with SMTP id l56mr7587966qvc.114.1562420601327; 
 Sat, 06 Jul 2019 06:43:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
 <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
 <CAMhs-H_c8sq=mX-rPRDHtkqyRj1fQcSNY_8M7Y5ZGU2FV9_zSA@mail.gmail.com>
 <24106212-9bf9-867c-fed8-8ad828431cd7@kernel.org>
 <CAMhs-H-0YcipUZ2xWxRTijUDL1F8NMb-gh5WoPcj-jHabbHZJw@mail.gmail.com>
 <CAMhs-H8JrLbsfk6YwFqVXOfr7M0zKosZ-iMwtU+5ObDOqOOAAQ@mail.gmail.com>
 <b4180913-127a-1847-57b7-d630897783f0@kernel.org>
 <CAMhs-H_7y_Uxr23uoh_-K+uoYTTNqARsqZfYpq-hU0vsRRjBsg@mail.gmail.com>
 <554866dd-9b81-5854-628e-cceabcdebe5b@kernel.org>
 <CAMhs-H_K-mWQYWNUk3xEBc8Ek_128VzZa-Z1ps4yqbDDOZ+=Vg@mail.gmail.com>
 <CAGSetNv2adWboHoB4mi9pxgJwbFJhsSmyXegjb7Lc9-H3kiRDQ@mail.gmail.com>
 <CAMhs-H_NgR991THPfiWkGFcukqY1QKviRfiEAd5r_B9U3bSs7w@mail.gmail.com>
In-Reply-To: <CAMhs-H_NgR991THPfiWkGFcukqY1QKviRfiEAd5r_B9U3bSs7w@mail.gmail.com>
From: Brett Neumeier <bneumeier@gmail.com>
Date: Sat, 6 Jul 2019 08:43:09 -0500
Message-ID: <CAGSetNtqGuZtNqLRU4JO7AN8nBz5XhGgFD=5iuw7scfaDv5DuA@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
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
Cc: Neil Brown <neil@brown.name>, driverdev-devel@linuxdriverproject.org,
 Greg Ungerer <gerg@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 6, 2019 at 4:00 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> > Out of curiosity, if it's not too complex an answer to go into, what's
> > the benefit of the staging-next driver? Is there a reason to prefer it
> > to the 4.2 driver?
>
> In terms of stability, the driver which is in staging-next now is not
> always working as expected,
> so I really apologize for that because main changes have been done by
> myself. In the other hand,
> you have to think what is staging tree for. Staging contains drivers
> that are not ready to be properly
> mainlined into the "real" tree because they are not clean enough, the
> use old apis and so on. The idea
> of staging is to have a temporal place to properly clean drivers in
> order to get them properly added into
> the official mainline tree and directories. Doing that it will always
> be supported in the kernel and it won't be
> deleted for the tree. The mt7621 pci driver is now clean enough to
> give it a try to be mainlined but we have to
> achieve the problem of pci link stability that sometimes gets the
> driver to hang.

I'm sorry, I think my question was unclear! I am not complaining about
the instability introduced in the current driver. I understand that
dealing with hardware is complicated and sometimes things are broken
for a while -- especially in staging or experimental drivers. That
doesn't bother me!

I am curious, though, about the motivation for this change --
obviously there must be some reason you rewrote the driver, but it's
not at all clear to me. I see that with the staging driver it looks
like maybe the 4.20 driver was split into the PCI controller driver
and a separate PCI PHY driver? If that's the main architectural
change, what's better about splitting them up that way?

Again, I understand that sometimes a question sounds really simple but
the answer is long and involved, and I don't want to take up a lot of
your time or energy. So if it is more complicated than a thirty-second
explanation, that's cool.

-- 
Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
