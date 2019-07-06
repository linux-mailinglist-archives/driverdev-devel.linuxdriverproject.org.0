Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BF860F95
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 11:00:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 22A44204C7;
	Sat,  6 Jul 2019 09:00:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsF8-OjFR3So; Sat,  6 Jul 2019 09:00:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8DE6F2049E;
	Sat,  6 Jul 2019 09:00:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1F91BF2B5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 38BBB84837
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bRXTqTmfFLah
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 14EEB84545
 for <driverdev-devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:00:16 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id r21so6569622otq.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 06 Jul 2019 02:00:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uopRyMelhMj6qjAT+sOBYcv6h9vq2CRETtx2vfAPsWc=;
 b=Bzt7oAH9XC//VZtIUmwGwWqgCrJHUCqvaLcnDn5Szy0mfV9ZyCTv0EDGmS08U7hIAj
 uyI6H0nJasmgN8+qRz04tsa6UzKiRHMLrBbYgYImeC7JBh6r8QcYz/9m7hmSYDvFnnhm
 4LYqgfyjK1AtAnjkafCiqtgR+QZKl6j89faMZue3hlWFZCLSOtFFCJrfC2xRQAeFFBNb
 XdXmU0q7zpPN5ac1hQO/WyzCKygWqgQBH+pGSsHw/mZwCAc3XT1URLaPBLr7CQriEuNq
 Y+34r+iQMb0Cc5mLjcbBpSSUMJuQjwFo3C97piA3JHyHCXk3zGu/8ZUtdUW/UmGbSvfr
 ku9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uopRyMelhMj6qjAT+sOBYcv6h9vq2CRETtx2vfAPsWc=;
 b=s7Cho2amefaOrjCpnHecNZtjTBgDgzA3z7ylJhxseTHza7zhte11eZv8mbMqNVqbLU
 BvgjHXaVYk2f7qfNIYkjTYTpXMYabCJNfyw/bIo1IsxtzQqPkabOJkWThuo2cAf3igi2
 bwlqLB51Wbu4Qor/ER9eTQ9iarpAyDVKpgo2FAqYZ+e+dy01UzyKJYY/I32kt3E/ghpK
 8pRAsvTa1SCPmqUL1OiMRLM4DzeZKLwraiJVquPNkdB1NPV0yf4D78leSlneK88H2WCu
 bFfiuMJmNNv/GYrphV8nSx5HuEbhfh/PJiRdjpLFVENNgHkQZj1Z1RV5gqfeqP+efGnG
 t13Q==
X-Gm-Message-State: APjAAAW45Bd20w4frQg38TM5DC3VeoGzdTnDRtTpQde9ZwTRGCC61ra+
 TpNIElt51VN0XFkki7OhJyn/Tn+HCU/LvLLSA+s=
X-Google-Smtp-Source: APXvYqwuQUe9xw699YxzxgLJ8mbc+6W6YvGoqQ3wqHB4KbICpd2k5T2oLuCiWMrcICCmHR21djhI+kzKjo86LPNbdJc=
X-Received: by 2002:a9d:4546:: with SMTP id p6mr6304644oti.34.1562403615370;
 Sat, 06 Jul 2019 02:00:15 -0700 (PDT)
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
In-Reply-To: <CAGSetNv2adWboHoB4mi9pxgJwbFJhsSmyXegjb7Lc9-H3kiRDQ@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 6 Jul 2019 11:00:04 +0200
Message-ID: <CAMhs-H_NgR991THPfiWkGFcukqY1QKviRfiEAd5r_B9U3bSs7w@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Brett Neumeier <bneumeier@gmail.com>
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

Hi Brett,

On Fri, Jul 5, 2019 at 8:44 PM Brett Neumeier <bneumeier@gmail.com> wrote:
>
> On Wed, Jun 26, 2019 at 7:45 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > No problem, I also miss them rewritting code. That is bad :((.
> > > BTW, I applied that on top of your other recent fixes (that ones
> > > you pushed to  gregkh for staging). So I tested with the
> > > updated GPIO reset code.
> > Ok, anyway.. I have just sent the change jus to have the same code behaviour
> > that was being there before.
>
> FWIW, I have the same results as Greg -- the 4.2 driver works every
> time, staging-next frequently hangs.

I see, thanks for letting me know. We have to figure out what is wrong
and why we don't get an stable pci link.

>
> Out of curiosity, if it's not too complex an answer to go into, what's
> the benefit of the staging-next driver? Is there a reason to prefer it
> to the 4.2 driver?

In terms of stability, the driver which is in staging-next now is not
always working as expected,
so I really apologize for that because main changes have been done by
myself. In the other hand,
you have to think what is staging tree for. Staging contains drivers
that are not ready to be properly
mainlined into the "real" tree because they are not clean enough, the
use old apis and so on. The idea
of staging is to have a temporal place to properly clean drivers in
order to get them properly added into
the official mainline tree and directories. Doing that it will always
be supported in the kernel and it won't be
deleted for the tree. The mt7621 pci driver is now clean enough to
give it a try to be mainlined but we have to
achieve the problem of pci link stability that sometimes gets the
driver to hang.

Again, sorry for the inconvenience and any debug traces searching for
the problem, ideas or patches repairing the current problem are very
welcome.
I don't have hardware to test my changes on, so it is a bit difficult
for me to help more in these days.

Hope this helps.

Best regards,
    Sergio Paracuellos
>
> --
> Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
