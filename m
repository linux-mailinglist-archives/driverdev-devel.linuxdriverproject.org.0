Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 396DF16BEF4
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 11:39:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E77F844D6;
	Tue, 25 Feb 2020 10:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMmyIRBIzQY5; Tue, 25 Feb 2020 10:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B03286990;
	Tue, 25 Feb 2020 10:39:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF061BF2B3
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 10:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2BFBB861A7
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 10:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wmEAicfJS6S0 for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 10:39:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F00E84900
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 10:39:16 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id t3so14082350wru.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 02:39:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T01h6iuP2rTY4GGKRACK3dSW1PWei7kSfe0/FUA9ALQ=;
 b=VHV8aUTLP8963iwAuedMShp862RkTA/rTVg9sikPISmb5JxkkpGyw2HPOBjF9mvFcw
 r3Q9bSCDIF1hedGK0esNtUejQCJXyeBoNgtmIjBbt37jvtgI/W7wJirS4daLL0ukuKFK
 OeWLCBF9tkCqj7SNnCPTl7kSgQ/TZ7o9JW37trgyU1oo+FZvSmPG+AtzWSWMGSyU/8L/
 6dCDVebSCv6E8y0nwpAXpkHX2ErTaUFixHgWXCIQAQ6ELDhxW1KySvscwZVIElrFDV5Y
 WuXclw3HVdKW1QV5LynN8GFT5+CBVDZNFmrG80Irontaxp35sahYew4UNYjhW1xaKyI6
 CNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T01h6iuP2rTY4GGKRACK3dSW1PWei7kSfe0/FUA9ALQ=;
 b=DKzRQ9/FtZXPPUPPibQtcPezCogBJ2FMOg2Vt+ItT4OQX+1S7PCaqmPv8AJ9ZvPqCU
 ojsaXRjugkxb4jCA1vSD7aQnPpaEo9IlYBB7ns0C9SRuxMcK4JYxvyqbgGcL/n3Yp3Fm
 ja/X19pxjeqlar5BhinFWHIE3ubnHP5FsxMu8rLblakbOX7isjdcqh1NEqr+3OnV8dZy
 Qkmt/RSwwPClA3IrDR6Qu6s3zXolFxrSqaNiKCXFgTNQKkG1eicsFmFMq5176zanbJ3J
 OlXArMlI12E15sEFrYiiaT0qqEsAS+yZElOBg9sQDZRjVNiRryTEtM4L0GbFTyglcl5F
 3zTw==
X-Gm-Message-State: APjAAAWVVs4NRuBvwNyAiUUbDFBy3FyECVazOl/iZnFjWk89uTzX/L5P
 YvpMDcpVvsy5zfijcbce/FE7egHy5kuicj2kpWMmqQ==
X-Google-Smtp-Source: APXvYqyDK3LNg1jOdRi0athK5VbtWiOja6QgsAbcLOO0XSRVOcdIwtT32YJuJBJafzY94j4A66a4WBxEYCcfVi2uPbA=
X-Received: by 2002:adf:f084:: with SMTP id n4mr71962390wro.200.1582627154775; 
 Tue, 25 Feb 2020 02:39:14 -0800 (PST)
MIME-Version: 1.0
References: <20200224153501.60040-1-glider@google.com>
 <202002242014.F641277@keescook>
In-Reply-To: <202002242014.F641277@keescook>
From: Alexander Potapenko <glider@google.com>
Date: Tue, 25 Feb 2020 11:39:03 +0100
Message-ID: <CAG_fn=V5kB_HZ9S+kJHHub_BfuoO5zLr3NE93dMmBgrizu_1Mw@mail.gmail.com>
Subject: Re: [PATCH 1/3] compiler.h: define __do_not_initialize
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
Cc: devel@driverdev.osuosl.org, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, arve@android.com,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Feb 25, 2020 at 5:16 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Feb 24, 2020 at 04:34:59PM +0100, glider@google.com wrote:
> > For CONFIG_INIT_STACK_ALL it's sometimes handy to disable
> > force-initialization for a local variable, if it is known to be initialized
> > later on before the first use. This can be done by using the
> > __do_not_initialize macro.
>
> Nit-pick: other things are listed as __no_$feature. What about naming
> this __no_initialize (or reuse the attribute name of __uninitialized)?
I agree that __no_initialize is more consistent (and also shorter than
__do_not_initialize).
Let's stick with this name.

> Please CC lkml as well in the future.
Ok, will do.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
