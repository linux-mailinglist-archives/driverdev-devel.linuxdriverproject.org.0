Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8564924295B
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 14:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDE5C2314E;
	Wed, 12 Aug 2020 12:32:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mhWA3lQLy0j; Wed, 12 Aug 2020 12:32:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA1112155F;
	Wed, 12 Aug 2020 12:32:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A8E61BF9AF
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 12:32:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B104230FD
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 12:32:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pDF6+JAJYOIF for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 12:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 8A64F207A9
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 12:32:07 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id b22so1625752oic.8
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 05:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rVoACvL3vbhn7Hy+rg7NvJC/rRz4OGAEG/IOuYVfJLk=;
 b=YkqGfxOvN96eGolDSvt0iCWOvbZZeKLlCAGi8BAH/XmoiSQNEa5synSoNNTH3X5sLJ
 J0XSC09qP/ds7a/R4Q0SSHomSPcp0o15AVV2+lMvLnTd0vBV6RrhGJjKX/x/0SkqiKwV
 0A06fOqNelj9etWPOTYb+YgdV2enu7Fu10STP5iSBmXYnoCAcjjN9WoirJjjmeTuYc3n
 nbzkPOmaEZpF2jhtGMP8FxV8952FOiOMh2n1AUuK375GNKqppbaAbdxZ1DWWt48ETdQL
 u7QVCoEWkBLGQ3/N4TpSYorKV9FXu36SK0GdrESPraE01ZXd8Fjq2XFQXHvDOrZrjyq5
 8LeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rVoACvL3vbhn7Hy+rg7NvJC/rRz4OGAEG/IOuYVfJLk=;
 b=b9vZaJUwHPUMxnL56qfiHJIfSSi0LuHwCBzTxeVlyTjqXaNS0tc5b51ar9LsgCFMYI
 YWULoC80JgD21lHZOUQsg6gxnB5sLIYbiqkw6kUEGRktFx5f4G84VgJN9tJe9BN3f0x3
 +WREOCqJ2StaUjQalt6Zu4A5ZM6gvX82FzfC2sv1Xq85NSv38nIZL+RjfsUa+rMxYEGS
 lNYICrZLk3VyUWRXgzb9qssNlnWx0SGPdWMdkyAzffGBQ0IK+NQH0KpGFe47ernSQY/D
 4xtlgrFYBJ3GIQPZAKILYNwJcOcp6NmlsyFaav7IwxGvv89QUf6wqyk/ooqtJ+hTnFRM
 0s6g==
X-Gm-Message-State: AOAM530mMHE1YewVi368Y6u3WhzfJgwkvguDO1pUks+yY5LwwzicCO7E
 03DKSUAvTlSTYdYalJYmneT4XInFaZCKTEqUyVY=
X-Google-Smtp-Source: ABdhPJypHP+8lAnojHqsj+HMjv2Kx5qQD1vR1U48FukFJAYIMQIqPx17kRoJyhSS4FcPT0MB5slRlnJYgqYSUKBAAmw=
X-Received: by 2002:a05:6808:4c5:: with SMTP id
 a5mr7370620oie.175.1597235526662; 
 Wed, 12 Aug 2020 05:32:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de> <202007301113.45D24C9D@keescook>
 <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
 <202008111427.D00FCCF@keescook>
In-Reply-To: <202008111427.D00FCCF@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 12 Aug 2020 18:01:55 +0530
Message-ID: <CAOMdWS+nJr+g1c0Kb99Z=HwQjHtH_-NCC9hW-o6xFs4huGKsqQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
To: Kees Cook <keescook@chromium.org>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 alsa-devel@alsa-project.org, Oscar Carter <oscar.carter@gmx.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-input@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 Thomas Gleixner <tglx@linutronix.de>, Romain Perier <romain.perier@gmail.com>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Kees,

> Was a Coccinelle script used for any of these conversions? I wonder if
> it'd be easier to do a single treewide patch for the more mechanical
> changes.

No, I should have written one. Will do it.

> And, actually, I still think the "prepare" patches should just be
> collapsed into the actual "covert" patches -- there are only a few.

Okay. It's been done and pushed to:
https://github.com/allenpais/tasklets/tree/V4

> After those, yeah, I think getting these sent to their respective
> maintainers is the next step.

 Please look at the above branch, if it looks fine, let me know
if I can add your ACK on the patches.
>
> Sure! I will add it to the tracker. Here's for the refactoring:
> https://github.com/KSPP/linux/issues/30
>
> and here's for the removal:
> https://github.com/KSPP/linux/issues/94
>
> if you can added details/examples of how they should be removed, that'd
> help other folks too, if they wanted to jump in. :)

Sure, Thank you.

- Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
