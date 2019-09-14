Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 87896B2D19
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Sep 2019 23:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EBE88578B;
	Sat, 14 Sep 2019 21:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hQonGRP_cyX9; Sat, 14 Sep 2019 21:08:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00D4B85758;
	Sat, 14 Sep 2019 21:08:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5FDA71BF300
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:08:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5B754867FF
 for <devel@linuxdriverproject.org>; Sat, 14 Sep 2019 21:08:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcj6gUGg4ziK for <devel@linuxdriverproject.org>;
 Sat, 14 Sep 2019 21:08:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D53984EB0
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 21:08:47 +0000 (UTC)
Received: by mail-oi1-f172.google.com with SMTP id v16so5391544oiv.13
 for <devel@driverdev.osuosl.org>; Sat, 14 Sep 2019 14:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jMW5QQfqB3GgO3Rwut+y8ooMRK6oMNFBtSgXBDuvbgY=;
 b=HvZan/wTdVlLNfNBct/c1zeuudQeshyJ69LVka0uJo6QZJZo61cdvd+XXNRN0uAfcd
 mNzatB28Ta5FEYbS5cfOJzsSDH5QkOqZN4x+d1vF6pcackIOVqwSvfheY2l+MUlNueE0
 lf7pi3eDjXxGYy9rATo0prNP0WfwnDS27R/Ode++EuNQ3wgXCZs0L5t2GetmQmWVa05z
 8hPCTxflzywUPju7Uf5g4+PZtS+rzmSL+dgiNENDhkTEd5xIZtzLPfvewT4Q2i8Bn3mr
 1b+qVHom0OkoHtSK7Y5ZxhaA5JvsACyQ2uu5alvI/SIf2NNKBq6GlFfA7ZqB4RIuf6yf
 Cr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jMW5QQfqB3GgO3Rwut+y8ooMRK6oMNFBtSgXBDuvbgY=;
 b=mSbqtkZ7z++9Q2oKpUajBufTa8O47ERc7xbnKgRiK+DnM4UaCieOSPwM29DYTHku2+
 OULDfgNqhSh92QLI4SrewBjCxl0mnWkoMVFWB0ZJArMd3WIlyIZvA8nbTn7jNmjFP3wP
 rUFJVEZGkf5cfwAqYjuxUy0A5AfFnkNv3a+O1mC0ADvrCrDYiKcSua2G4tI3fDmqIi6s
 xe9VGyCUn5HLwcPtajxFqvAKX5M5umTELSzJja0E7oF5UTLO/VXg52y4iQgwvOmUHHbx
 rMs1J305MkiaolNKcfv4SEQZTUdunrjZBdLOQbhMItnji9g4OrJBTF/j2FrVQuGJAwGz
 kt7w==
X-Gm-Message-State: APjAAAW9E6a73N/uBzCTPGTbn4jDzR1eBKyz94tel23nWXQn+S9RBb8C
 a7wNxdisRgfr2hepl3t1DtlrEyaiK54ODihS9dQ=
X-Google-Smtp-Source: APXvYqzfdOCMLTAlz0b2bARRrW5zytkIb1s5zlrSoVgDJNzlQtpbzvMiBem0XyrOtygyCcs/mxPD4cgAbfUaj5V97r0=
X-Received: by 2002:aca:7509:: with SMTP id q9mr8093677oic.111.1568495326122; 
 Sat, 14 Sep 2019 14:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190707065710.GA5560@kroah.com> <20190712083819.GA8862@kroah.com>
 <20190712092319.wmke4i7zqzr26tly@function> <20190713004623.GA9159@gregn.net>
 <20190725035352.GA7717@gregn.net>
 <875znqhia0.fsf@cmbmachine.messageid.invalid>
 <m3sgqucs1x.wl-covici@ccs.covici.com>
 <CAOtcWM0qynSjnF6TtY_s7a51B7JweDb7jwdxStEmPvB9tJFU4Q@mail.gmail.com>
 <20190821222209.GA4577@gregn.net>
 <CAOtcWM0Jzo+wew-uiOmde+eZXEWZ310L8wXscWjJv5OXqXJe6Q@mail.gmail.com>
 <20190909025429.GA4144@gregn.net>
In-Reply-To: <20190909025429.GA4144@gregn.net>
From: Okash Khawaja <okash.khawaja@gmail.com>
Date: Sat, 14 Sep 2019 22:08:35 +0100
Message-ID: <CAOtcWM0P=w-iBZzwekVrSpp7t2WO9RA5WP956zgDrNKvzA+4ZA@mail.gmail.com>
Subject: Re: [HELP REQUESTED from the community] Was: Staging status of speakup
To: Gregory Nowak <greg@gregn.net>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Speakup is a screen review system for Linux." <speakup@linux-speakup.org>,
 linux-kernel@vger.kernel.org, John Covici <covici@ccs.covici.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 9, 2019 at 3:55 AM Gregory Nowak <greg@gregn.net> wrote:
>
> On Sun, Sep 08, 2019 at 10:43:02AM +0100, Okash Khawaja wrote:
> > Sorry, I have only now got round to working on this. It's not complete
> > yet but I have assimilated the feedback and converted subjective
> > phrases, like "I think..." into objective statements or put them in
> > TODO: so that someone else may verify. I have attached it to this
> > email.
>
> I think bleeps needs a TODO, since we don't know what values it accepts, or
> what difference those values make. Also, to keep things uniform, we
> should replace my "don't know" for trigger_time with a TODO. Looks
> good to me otherwise. Thanks.

Great thanks. I have updated.

I have two questions:

1. Is it okay for these descriptions to go inside
Documentation/ABI/stable? They have been around since 2.6 (2010). Or
would we prefer Documentation/ABI/testing/?
2. We are still missing descriptions for i18n/ directory. I have added
filenames below. can someone can add description please:

What:           /sys/accessibility/speakup/i18n/announcements
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/chartab
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/ctl_keys
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/function_names
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

What:           /sys/accessibility/speakup/i18n/states
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/characters
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/colors
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/formatted
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO
What:           /sys/accessibility/speakup/i18n/key_names
KernelVersion:  2.6
Contact:        speakup@linux-speakup.org
Description:
                TODO

Thanks,
Okash
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
