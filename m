Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBE429F159
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 17:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FB0F86C66;
	Thu, 29 Oct 2020 16:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmQ+oX2ALgCj; Thu, 29 Oct 2020 16:26:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E2DB86C2C;
	Thu, 29 Oct 2020 16:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E68341BF5B5
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E099286C4A
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id unq0yFLP86Rl for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 16:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D5AD86C2C
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 16:26:28 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 90A8920825
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 16:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603988787;
 bh=AGbrClZ+VS8MDj4+qu/P79fbZI0a9Y/wZY03UqXvbIQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1J75wL+fenl4QtKgToscDvcdRQgeJ9ckPQzCnFCgel1JGTOeHbz6thszvlkzq7Yc0
 afy5SOlJVefndRFGV2SkdGCmJhln4lVP1Vq8/bs74oxMQ9ihBEJRfif0zHcMKHy4By
 5P4ZjX7werGj7uRVG5cn2B9QiF1paJuVsL9yFAfs=
Received: by mail-qk1-f175.google.com with SMTP id r7so2457538qkf.3
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 09:26:27 -0700 (PDT)
X-Gm-Message-State: AOAM531Hs1nQPJUWukAqgJTLAqGlsMty4nk8i1ApskqUveJoaB6KqNJb
 Y3FI8CInoZ6V9bL5jxFcuX3ejwS+53zt9EvTp1A=
X-Google-Smtp-Source: ABdhPJyKhwYeabEUTLeiqjDrdTiy26Ddcp+Fv2Yu27W3qNBlCpIN9wtSAH4ct8Pp5ZNA5hi9rwB4IlEYlt8RC94tdJo=
X-Received: by 2002:a05:620a:b13:: with SMTP id
 t19mr4215522qkg.3.1603988786437; 
 Thu, 29 Oct 2020 09:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <20201027212448.454129-1-arnd@kernel.org>
 <20201028055628.GB244117@kroah.com>
 <20201029085627.698080a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20201029085627.698080a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 29 Oct 2020 17:26:09 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0+C450705M2-mHtvoS1Ogb4YiBCq830d1KAgodKpWK4A@mail.gmail.com>
Message-ID: <CAK8P3a0+C450705M2-mHtvoS1Ogb4YiBCq830d1KAgodKpWK4A@mail.gmail.com>
Subject: Re: [RFC] wimax: move out to staging
To: Jakub Kicinski <kuba@kernel.org>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@arndb.de>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Networking <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

n Thu, Oct 29, 2020 at 4:56 PM Jakub Kicinski <kuba@kernel.org> wrote:
> On Wed, 28 Oct 2020 06:56:28 +0100 Greg Kroah-Hartman wrote:
> > On Tue, Oct 27, 2020 at 10:20:13PM +0100, Arnd Bergmann wrote:
> >
> > Is this ok for me to take through the staging tree?  If so, I need an
> > ack from the networking maintainers.
> >
> > If not, feel free to send it through the networking tree and add:
> >
> > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Thinking about it now - we want this applied to -next, correct?
> In that case it may be better if we take it. The code is pretty dead
> but syzbot and the trivial fix crowd don't know it, so I may slip,
> apply something and we'll have a conflict.

I think git will deal with a merge between branches containing
the move vs fix, so it should work either way.

A downside of having the move in net-next would be that
you'd get trivial fixes send to Greg, but him being unable to
apply them to his tree because the code is elsewhere.

If you think it helps, I could prepare a pull request with this one
patch (and probably the bugfix I sent first that triggered it), and
then you can both merge the branch into net-next as well
as staging-next.

      Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
