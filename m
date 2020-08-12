Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A312428B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 13:33:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CC0A880E2;
	Wed, 12 Aug 2020 11:33:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sl2DA3nIkIIn; Wed, 12 Aug 2020 11:33:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BCF387E5C;
	Wed, 12 Aug 2020 11:33:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6167E1BF5F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 11:33:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 576B5867FF
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 11:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4m4aCPeCbz9W for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 11:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C139A87998
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 11:33:03 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id e11so1640701otk.4
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 04:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Em9Sp8XmzIpv/p2/XIEVSGX1+QelGDXMy8mBEoKzQGA=;
 b=svUM0PtlSc/BsJ398hEypGo/dtDceKxpkxJL2XapJiufbso1e8LfFI4bXYobnoySJa
 SRjvv9f/48b5GJPA7fHwECXPGN7eO/ub5qQngsk3EUO83vMzAXxkqcbbp5j1xemvZIq9
 s5mftpWisvt6SbOmNG3lr1AFiu06MFhrdLN47I42cpfWHFnGFPC0kmoM7pnxUZpSyLQj
 +N4Js6sN6aumylIuGGMt2QsXP+hkf1Ol4GBV8Uuo8S00kvpt2DD1ugHsd9sXoZ13vg/2
 3wLqiAgbMsq3tbjK6M6brM8AX2Uig0dYIzJF4KNHkRmKijkDxBWgQ34F0o2mtUai8o4g
 hCHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Em9Sp8XmzIpv/p2/XIEVSGX1+QelGDXMy8mBEoKzQGA=;
 b=q48j5RJfy5ewPRYWoeXZJirBI901RzRpAX3FgX/tJI3rtPkja36KNICieHZUmsNDAe
 mZVJ1xwDzbvxbEFKFRDRL+avKgc5XC3UzdXcVLVlELhrcVq0AYHplBwXhgfXXFtXRcd6
 CgyPsgQuT6QyJtpmRgKifKXLx7kE/Y2yHfQCtRtqlJWGEwPcXFVMzb+VL7sGk08O9sGw
 XXCx5kVcnWEbAacfx4QwAHA75eycLQ1klWJtdViJieNUHTlXdJdt1HGHjc3mnDSFxwlB
 9bpF2BbNyoV5+lZXfWBL3d8IDzSO8qqoaHWX5I7TYHPt6ZeAS8X6CMiyJAoEnc299qvP
 9/+Q==
X-Gm-Message-State: AOAM532lRMr5LccyNVankktSK3abTeoZv4mbbUHoxVySo9YEcSbbtkoa
 qu7m/6BvBZfbG41duU+qUeto+bRFTNMUdoPPG14=
X-Google-Smtp-Source: ABdhPJyApW1cAsqfCZE8viTLCHhX3eA/ksSTGjILeL6+zxKJ5TOuIeeZt8iyPAiUApQEScansB5N2ki5ANp9kIXSCiU=
X-Received: by 2002:a9d:128c:: with SMTP id g12mr8585420otg.242.1597231982871; 
 Wed, 12 Aug 2020 04:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200716030847.1564131-1-keescook@chromium.org>
 <87h7tpa3hg.fsf@nanos.tec.linutronix.de> <202007301113.45D24C9D@keescook>
 <CAOMdWSJQKHAWY1P297b9koOLd8sVtezEYEyWGtymN1YeY27M6A@mail.gmail.com>
 <202008111427.D00FCCF@keescook> <s5hpn7wz8o6.wl-tiwai@suse.de>
In-Reply-To: <s5hpn7wz8o6.wl-tiwai@suse.de>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 12 Aug 2020 17:02:50 +0530
Message-ID: <CAOMdWS+FJm0NZfbj+yyShX2edX6_9w5K+rA+_u+Z6-rrjcwucg@mail.gmail.com>
Subject: Re: [PATCH 0/3] Modernize tasklet callback API
To: Takashi Iwai <tiwai@suse.de>
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
 Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 kgdb-bugreport@lists.sourceforge.net, Thomas Gleixner <tglx@linutronix.de>,
 Romain Perier <romain.perier@gmail.com>, linux-input@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>
> I have a patch set to convert the remaining tasklet usage in sound
> drivers to either the threaded IRQ or the work, but it wasn't
> submitted / merged for 5.8 due to the obvious conflict with your API
> changes.
> Each conversion is rather simple, but it's always a question of the
> nature of each tasklet usage which alternative is the best fit.
>
> FWIW, the current version is found in test/kill-tasklet branch of
> sound git tree
>   git://git.kernel.org/pub/scm/linux/kernel/git/tiwai/sound.git

Great. Currently my tree has these converted to use the new
tasklet_setup() api. I will add these to my threaded IRQ/work tree
(which is still wip).

Thanks.


-- 
       - Allen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
