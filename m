Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7D9805B
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 18:40:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3440D84469;
	Wed, 21 Aug 2019 16:39:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdEqrKdhKmDs; Wed, 21 Aug 2019 16:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA28181E4A;
	Wed, 21 Aug 2019 16:39:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E4DE1BF9B6
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 16:39:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5477681E4A
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 16:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PXybTuk7_Ihw for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 16:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C0B8B8086C
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 16:39:37 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id l2so2095780oil.0
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 09:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sxCC5PNKFq1qlMlDHX2114JmkBHkuOiSN9kijvV45PM=;
 b=bNl2JxK9BfMRTnsM4weeTx56/CjtDoDrOyTngIhjMguPbCGnPkzn/7nZLdVuQwqdnU
 /BoK7QZm4kB21Vjv6YeZVPLzmlWCYj1zWh+OL7Mc2+w/+lQy620mJhfCJaZa5n+LAEJL
 PIQbxTPSyRZKVnkgiKbCS62O+dMvWqbBoDtnmfq5sPqPi09RD9CmDD37K9HqHbgfe97R
 pwzNItpK+lTulH3AJB8BlJjiUNnMa3gLind9oPrEADRSg9ckrLMf0G6J91ncw5nX+EmI
 Fk3I4X+90jSRhqhzD+RGdkFBRFkGXwqPfPX4Xctgb/UIT3319MTqjUsnoUa+6+4rVjgV
 pTcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sxCC5PNKFq1qlMlDHX2114JmkBHkuOiSN9kijvV45PM=;
 b=Wz27AfEEDl+i/YW+5WowkODCb5SjnRgf6IlCsmyM6mymrAsx0xBnHjhbr1Ti0y++mB
 bXmW12u8W8ZaCp+s8DFzGZKjoiBIWu5pWVhgGzQiLsdZ9ke0KT5q9bMnWeZzjCSPs8+J
 lYuB33bkR90LAoG8BXRkwCwEXku0xkLTDVKFjb1bn5rLSIAM7b90K+fLlSTQhgpbNWCC
 ndjC+eQd5cOlYfwbyuRdHmTMl28tX+nGCYMCl97+IGfND8Zy/qhz8Of4Vx24jKJiZ49F
 b+VyoQpdMeAMF8d0jzpPMOYVSPkVE7r+RFLNki8IGMwSrGpNJf1g5zJ35H82yEAH4r4n
 4eZw==
X-Gm-Message-State: APjAAAXaICRM6QjJreZpe11Ri4Y1q+mgTxXn80Izr3WqXE+aZuDLNnTD
 C820TDDhzqrbWscYHM59g1z6R3wuWVMMois9Xd0=
X-Google-Smtp-Source: APXvYqxHIoe+PIEIlnKGzCMCFlcO6qhjhxZbk8ZDmvMG8MgTWgDKHiZYxnzNVxw78jlsDE9DqcOG70I9ndAioOPJCA4=
X-Received: by 2002:aca:5f45:: with SMTP id t66mr647829oib.111.1566405576805; 
 Wed, 21 Aug 2019 09:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot> <20190707065710.GA5560@kroah.com>
 <20190712083819.GA8862@kroah.com> <20190712092319.wmke4i7zqzr26tly@function>
 <20190713004623.GA9159@gregn.net> <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
In-Reply-To: <m3sgqucs1x.wl-covici@ccs.covici.com>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Wed, 21 Aug 2019 09:39:25 -0700
Message-ID: <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 Gregory Nowak <greg@gregn.net>
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
Cc: devel@driverdev.osuosl.org, Simon Dickson <simonhdickson@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 John Covici <covici@ccs.covici.com>,
 Samuel Thibault <samuel.thibault@ens-lyon.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 25, 2019 at 3:49 AM John Covici <covici@ccs.covici.com> wrote:
>
> I think the program is genmap, I  have it in my init sequence, but I
> am not sure it does anything at this point.
>
> On Thu, 25 Jul 2019 00:04:07 -0400,
> Chris Brannon wrote:
> >
> > Gregory Nowak <greg@gregn.net> writes:
> >
> > > keymap
> > > I believe this is the currently active kernel keymap. I'm not sure of
> > > the format, probably what dumpkeys(1) and showkey(1) use. Echoing
> > > different values here should allow for remapping speakup's review
> > > commands besides remapping the keyboard as a whole.
> >
> > AFAIK the Speakup keymap is just for remapping keys to Speakup
> > functions.  It's a binary format, not related to dumpkeys etc.  You need
> > a special program to compile a textual keymap into something that can be
> > loaded into /sys/accessibility/speakup/keymap.  I may have source for
> > that lying around here somewhere.  This is "here there be dragons"
> > territory.  I think the only specification of the format is in the
> > source code.
> >
> > -- Chris
> > _______________________________________________
> > Speakup mailing list
> > Speakup@linux-speakup.org
> > http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup
>
> --
> Your life is like a penny.  You're going to lose it.  The question is:
> How do
> you spend it?
>
>          John Covici wb2una
>          covici@ccs.covici.com
> _______________________________________________
> Speakup mailing list
> Speakup@linux-speakup.org
> http://linux-speakup.org/cgi-bin/mailman/listinfo/speakup


Hi Greg N,

Would like to send this as a patch as Greg K-H suggested? If not, I
can do that with your email in Authored-by: tag?

Thanks,
Okash
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
