Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E24B260B7F
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 20:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16810862C9;
	Fri,  5 Jul 2019 18:44:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TqeDLjyDTMB; Fri,  5 Jul 2019 18:44:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B6E4A8626D;
	Fri,  5 Jul 2019 18:44:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 890221BF38C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 18:44:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8664B87E9C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 18:44:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xD1BV6yM2jh3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 18:44:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9A8088157
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 18:44:03 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id d15so8588133qkl.4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 05 Jul 2019 11:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9vNk4QMzZURSontxlUHaInbR3IEnlU2DimYqPqvtTfI=;
 b=tu3nnmxnuKYvmBagl68iBsRTXmQN1YXam2cQptVgnheit9UkRN+jxsDZOeXuuTYEWJ
 ZPlx1ZKil+yLdFeJsAtHJneuHyWdARNGKkr/ENgXGVfk26LbuXATkusbtioCT6ETB3/L
 ye212VsOsxkUeZ/aW4uKjSO0Z0OFf1rE64xaTBemrX2CkJpU6FD/Xg5XtQJ2p5QHai75
 R4BZcf6SyFg29xiaz9KhSNA38dUVnciX9OwRSf0ztyGmpVNEytvBKmmsHHDX21i85Rqa
 qwSsovnPWNdnVsiF/IArVM+VVlR2JwOFpc2ztc/Ne0PI8rzjr1Uk+qXkqO+N3a96pU7J
 qvPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9vNk4QMzZURSontxlUHaInbR3IEnlU2DimYqPqvtTfI=;
 b=dhQumYI5TRELjIlD2GEaDqSiYxfVsPy10nQKqU9kluZaetd3Jnj/eAPyJunZTBTa39
 b7jeyzZ56UGkQLldO66spjoJrIvM332pNajMl2C0EBkTk2fYz7caXsIc0iMBaEKb/9li
 rGQUUSZSVIUQwUZooF0TWsaXAECNkFOIJxFG+FaiyFyIgcHYHqTrz4L4kIp8JnOfkhlj
 nFLixAdR6S/zMSO8KHf8fT0iNar/l1S45deAhBkvRM6IUAhoTYc/YVr0WCP5/ZtbbhUP
 LSj/XP/94sD2VV5IiTYKEK16g17XMPP+pjNoE77nLHYV5PYr+eNYDO1oSKlqQ0AAhq65
 RIwg==
X-Gm-Message-State: APjAAAVqOwerxg2qscQtGosO9fd5R3bUhySC1K+3FblxBAAXNt6qQ99U
 rgVkaCcMfgtHAVBCMZgEnao2wlJAKkB8z95wuN4=
X-Google-Smtp-Source: APXvYqxSTx+dxClUHSnWgUlOrh16YxcMhcRRLmPH0YHX/SOLLrzB/RRw/MLDydBrwfQuqfifO2s/dUNpZw5ShBnthCc=
X-Received: by 2002:a37:9844:: with SMTP id a65mr4262574qke.500.1562352242756; 
 Fri, 05 Jul 2019 11:44:02 -0700 (PDT)
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
In-Reply-To: <CAMhs-H_K-mWQYWNUk3xEBc8Ek_128VzZa-Z1ps4yqbDDOZ+=Vg@mail.gmail.com>
From: Brett Neumeier <bneumeier@gmail.com>
Date: Fri, 5 Jul 2019 13:43:51 -0500
Message-ID: <CAGSetNv2adWboHoB4mi9pxgJwbFJhsSmyXegjb7Lc9-H3kiRDQ@mail.gmail.com>
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

On Wed, Jun 26, 2019 at 7:45 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> No problem, I also miss them rewritting code. That is bad :((.
> > BTW, I applied that on top of your other recent fixes (that ones
> > you pushed to  gregkh for staging). So I tested with the
> > updated GPIO reset code.
> Ok, anyway.. I have just sent the change jus to have the same code behaviour
> that was being there before.

FWIW, I have the same results as Greg -- the 4.2 driver works every
time, staging-next frequently hangs.

Out of curiosity, if it's not too complex an answer to go into, what's
the benefit of the staging-next driver? Is there a reason to prefer it
to the 4.2 driver?

-- 
Brett Neumeier (bneumeier@gmail.com)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
