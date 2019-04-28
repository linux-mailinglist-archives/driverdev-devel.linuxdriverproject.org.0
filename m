Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F80B60E
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Apr 2019 16:32:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4433B84B23;
	Sun, 28 Apr 2019 14:32:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQCqysXPBqEp; Sun, 28 Apr 2019 14:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B838284867;
	Sun, 28 Apr 2019 14:32:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ADB681BF3E9
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 14:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB00284A92
 for <devel@linuxdriverproject.org>; Sun, 28 Apr 2019 14:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hs_mWkTUcz6Q for <devel@linuxdriverproject.org>;
 Sun, 28 Apr 2019 14:32:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B2DC84867
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 14:32:31 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id d62so584943oib.13
 for <devel@driverdev.osuosl.org>; Sun, 28 Apr 2019 07:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w+QLN0lhWS0TTAMCusecl/8H1fccZ10EVVpd07BbNgc=;
 b=P5JkzhtowAoVzgf4mWexhRA/N0+kMAM2EpslYR/Sy9HgyShJdJEFuFkueoKwLz1rwM
 fj1FiZaJqAxwqKUFdOs5onU5l/ICPOrRdoonoVU0ipUXJQ/mHi+86S67QZWqCoM63RrU
 bm+JRV/xaMmSIDTjdp4bEDBcGN1lAmstSPfcwCbkK+UNwxAHK3ZFRHpv+bKmBqUEp5hL
 au6WraHET8uU89ZzNXbmzmZ/U65oQbA6DiBmNTAHQZN85fwNNF1yQvyK9tHcxtYPzX5M
 kL1pdaAuJYJ2LjbfeEedv7ppykTPJ2fhJL0VvyRrfj7NQi4ADGjcvEDqjY0eM4bi16Mw
 3Vew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w+QLN0lhWS0TTAMCusecl/8H1fccZ10EVVpd07BbNgc=;
 b=T70Iz8ytHs7oTAttuTS4O+wJYleE06Ud2nunb55bbByEi7Y8CZDPN58dAd+btTEy8+
 cxsPFagf0UqCr3Q9abnurhGoWOzM5w6Do0O28nci9zL2b+eItD6xTCM9RAzGGxaJogJi
 QO5rvRrc14wHLjJ/TBVcgy1PZvLlJ/6t65w9edQg7GIONqBeI9S3wrUOhaGKsSWfkPjn
 pa8caqdC0w7X3qEAuK1RqwpaBICw5hapHem5brPJGFKbrTMwuccdz99ubTM746npDjpY
 5MtthWCF6AkTBM1/UUbGqRwAFcWje814v7OYPWTJJa787xoUW1WadPXSH4zJZvmtFhML
 bDug==
X-Gm-Message-State: APjAAAXGycyAYPQMHDovmE+d3hm/bqYIfCGsxC85qB4vJfD7kltUoA+N
 JgDndhD7yTG5FHzRqE4/XrGpdggQDPr5SffpAbYRa2mk
X-Google-Smtp-Source: APXvYqxuMJagp05qspO9G7+jFNbo87VF4TjqCNNKuU53Fk/6rzjEptsUWgrMdLXYGvP32BVD4U+74A8E+5QNz3yPP0M=
X-Received: by 2002:aca:ecc8:: with SMTP id
 k191mr12544298oih.103.1556461950564; 
 Sun, 28 Apr 2019 07:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <1556418804-10266-1-git-send-email-hofrat@osadl.org>
 <1556418804-10266-2-git-send-email-hofrat@osadl.org>
In-Reply-To: <1556418804-10266-2-git-send-email-hofrat@osadl.org>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sun, 28 Apr 2019 10:32:19 -0400
Message-ID: <CAGngYiV6ykYFuq458tWaLqDGLOo41aL5JE2OZ7uFTp3T4KOYkw@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybus-s: force endiannes annotation
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

Thanks for the contibution! See inline.

On Sat, Apr 27, 2019 at 10:39 PM Nicholas Mc Guire <hofrat@osadl.org> wrote:
>
> While the endiannes is being handled correctly sparse was unhappy with
> the missing annotation as be16_to_cpu() expects a __be16.

Your commit message has room for improvement here. See my remarks
on your other patch:
https://lkml.org/lkml/2019/4/28/95

>
> Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> ---
>
> Problem reported by sparse
>
> As far as I understand sparse here the __force is actually the only
> solution possible to inform sparse that the endiannes handling is ok
>
> Patch was compile-tested with. x86_64_defconfig + FIELDBUS_DEV=m,
> HMS_ANYBUSS_BUS=m
>
> Patch is against 5.1-rc6 (localversion-next is next-20190426)
>
>  drivers/staging/fieldbus/anybuss/host.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fieldbus/anybuss/host.c
> index 6227daf..278acac 100644
> --- a/drivers/staging/fieldbus/anybuss/host.c
> +++ b/drivers/staging/fieldbus/anybuss/host.c
> @@ -1348,7 +1348,7 @@ anybuss_host_common_probe(struct device *dev,
>         add_device_randomness(&val, 4);
>         regmap_bulk_read(cd->regmap, REG_FIELDBUS_TYPE, &fieldbus_type,
>                          sizeof(fieldbus_type));
> -       fieldbus_type = be16_to_cpu(fieldbus_type);
> +       fieldbus_type = be16_to_cpu((__force __be16)fieldbus_type);

Hmm... that would be cheating :)
what if you create a new local variable of type __be16?
Like so:

__be16 fieldbus_type_be;
<...>
regmap_bulk_read(cd->regmap, REG_FIELDBUS_TYPE, &fieldbus_type_be,
                          sizeof(fieldbus_type_be));
fieldbus_type = be16_to_cpu(fieldbus_type_be);

would that get sparse to shut up?

>         dev_info(dev, "Fieldbus type: %04X", fieldbus_type);
>         regmap_bulk_read(cd->regmap, REG_MODULE_SW_V, val, 2);
>         dev_info(dev, "Module SW version: %02X%02X",
> --
> 2.1.4
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
