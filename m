Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8236EB60A
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 16:24:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E94B840D2;
	Sun, 28 Apr 2019 14:23:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cSfB3_crjNWX; Sun, 28 Apr 2019 14:23:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08AB6840BF;
	Sun, 28 Apr 2019 14:23:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CEEA01BF3E9
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 14:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CC127840BF
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 14:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id awXqYw6tm8It for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 14:23:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A1DE84083
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 14:23:55 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id d24so6476245otl.11
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 07:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UrVxQZBuvnp3JOhkf+W+d2tzb7u+gX+IuPDYN/m+AHg=;
 b=DskcGm1yhQ+wgZj3J9uDOi1xhc54srpJ5DlAcq+k1+TC2hIto1nhunNNhgqELlMwqC
 RUe0nTqQ9rd6e/nIGf4xqV7u3j7IB62bUHbT/vC3TvwMdk0AcB6BuCWjUGSRvAqESGhl
 V1Xb+CY+Qjkr+YRmbQy5SxjmNrdUEdcBxjeq/Jt1iDJaWU7+lHio52Y6Il/FGZQomzXX
 zfQiaUXnupWikDhzGj5PrbbTdBIPSMuiuJncqrnMBpCMiZFQ+NO+Q0lzw3LtWj2+Gjcd
 7q0UnAEg+Kjtzy90AsbCSlfdjAmeg+j8vvfXB80eqpfMCFetGTZUzUqTL7agFZW0y0+a
 sM0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UrVxQZBuvnp3JOhkf+W+d2tzb7u+gX+IuPDYN/m+AHg=;
 b=WKc+7dRln5lni9DAeNOoIYX77iNPSkjH60j5Bm+ZFmGuPtRaheYOYfzDOXLP1aM4/P
 FiU+9fLA15eqSEQZx3K4mNMOLlOUg6kEe1RzJzOvTG4NTblA/SgBodga1QdSzAzDkZTH
 Q5gkm+T7+ezTyFwJsVA7DDcEV9U2U7kAw0MP8/t/smK3QyUrL0TEVmtQTE0dGk21KAdv
 gkl2Tu0AarOG+51V+O/lmZlA3Q+KUba3jQSf/8Mj2jTwdBqTKIiv5RxU15n9wUSXTNEE
 x+86gTPTQoaOCNOXdtFqU6Ne0T6YS8vrNKZPrdBWshid6bpeCqQOx3+T4EB6ev9VmBgj
 AfIQ==
X-Gm-Message-State: APjAAAUZgVwN0Kx5YRFsSUQdZt02suPGDOrTcPKg85Au3vQbhMfoXKDw
 O1htpWuA1RVEdRgejDi5qLjhbM/0XOtBuJ8RvVQdnA==
X-Google-Smtp-Source: APXvYqysWBYGF4Ebxi+XdneZ+kfNwVpgMHSSoctrVi+yfU7Mm/wvOqmYyRKBxEveUy+JobpgBqBeZUV/i0gFr7hRQsY=
X-Received: by 2002:a9d:7319:: with SMTP id e25mr1730932otk.279.1556461434231; 
 Sun, 28 Apr 2019 07:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <1556418804-10266-1-git-send-email-hofrat@osadl.org>
In-Reply-To: <1556418804-10266-1-git-send-email-hofrat@osadl.org>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sun, 28 Apr 2019 10:23:43 -0400
Message-ID: <CAGngYiXMMKz2AesEAVO_wdXw0ixsnjNo0o920evZPL9CM0cdJQ@mail.gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: consolidate
 wait_for_completion_timeout return handling
To: Nicholas Mc Guire <hofrat@osadl.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Looking good, but see inline.

On Sat, Apr 27, 2019 at 10:39 PM Nicholas Mc Guire <hofrat@osadl.org> wrote:
>
> wait_for_completion_timeout() returns unsigned long (0 on timeout or
> remaining jiffies) not int - so rather than introducing an additional
> variable simply wrap the completion into an if().

Your commit message could be improved:

- the headline should make clear what this is, e.g. add functionality,
bugfix, shutting up sparse, etc. Using the verb 'fix' would be
good here.

- in case of a bugfix, it would make sense to write a short
paragraph about what can go wrong, followed by a short
paragraph outlining what the patch does to fix it.

>
> Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> ---
>
> Problem located with experimental API conformance checking cocci script
>
> V2: The original patch's logic was wrong as it was skipping the
>     fall-through if so using the fix proposed by Sven Van Asbroeck
>     <thesven73@gmail.com> - This solution also eliminates the need
>     to introduce an additional variable - Thanks !
>
> Patch was compile-tested with. x86_64_defconfig + FIELDBUS_DEV=m,
> HMS_ANYBUSS_BUS=m
> (with an unrelated sparse warnings (cast to restricted __be16))
>
> Patch is against 5.1-rc6 (localversion-next is next-20190426)
>
>  drivers/staging/fieldbus/anybuss/host.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
> index e34d424..6227daf 100644
> --- a/drivers/staging/fieldbus/anybuss/host.c
> +++ b/drivers/staging/fieldbus/anybuss/host.c
> @@ -1325,11 +1325,11 @@ anybuss_host_common_probe(struct device *dev,
>          *   interrupt came in: ready to go !
>          */
>         reset_deassert(cd);
> -       ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> -       if (ret == 0)
> +       if (!wait_for_completion_timeout(&cd->card_boot, TIMEOUT)) {
>                 ret = -ETIMEDOUT;
> -       if (ret < 0)
>                 goto err_reset;
> +       }
> +

Nit: why add a blank line here?

>         /*
>          * according to the anybus docs, we're allowed to read these
>          * without handshaking / reserving the area
> --
> 2.1.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
