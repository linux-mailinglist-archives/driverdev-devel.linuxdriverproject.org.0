Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2C7B2DB
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 08:18:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5FDDF85A46;
	Sat, 27 Apr 2019 06:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IVRTqtvaE8YV; Sat, 27 Apr 2019 06:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 124928542B;
	Sat, 27 Apr 2019 06:17:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBB6C1BF2BE
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 06:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D845A8543B
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 06:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xiRUlk3nXdzN for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 06:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46F1B8542B
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 06:17:54 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id e5so4488566otk.12
 for <devel@driverdev.osuosl.org>; Fri, 26 Apr 2019 23:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a5aMl4sodLMGUHxzMlxnPBZ2OA4JaFfsEYDHDmpQh20=;
 b=gcHz3UKpuq1SIRz7BN6bLePGzjlpYJfI0Gp9wENfs/Nt1PtNNPsixJwIqjPaKCKD8h
 Pr2UWt9uaYC/CYtDacufAEUf81ogUC4EigY+o2lv9kIXI3+fZf3kcRhgLrg85dje0Sjx
 eOQGp9ZcJX0sc/61pLNdNVYDrbntQH1detoXWHDr/QXu4mybq+Xbpn7gdebW7Ae0954t
 sk6d5ds2xbqwQL3GIvGfGJMDtTx5LgM4Kz2BgjtquGrJ8c3VIL/841Mq6ZwfJ1MgA+cO
 IkTvKzP9nkSTpnRe1u+P8AKMv2ty1uGf2OX8wmGlNgUdskTBO3q3+tRRf3HJEk1dTfc6
 +6RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a5aMl4sodLMGUHxzMlxnPBZ2OA4JaFfsEYDHDmpQh20=;
 b=i1JpXG/mIvemJPgqMvG3dSMt4YxdrCiodA5824WB/mvLuFlgmQO1tovon2aV/7u9IR
 DCmHzhzACCMJf4YVMYSb89J+xIkgSZNco2CNP1kFlQITnZlFKqPWRf2uGpghH9oGhMYg
 eIKFqj3ue81tSdPxnXPJF59DRfp/WnU8ZZvKRE7p8D2rrDAjVKv+pycYy/G4nXerM6MW
 yZ2o63DOinb16n2Cc6W/TihCZdk6HJcrxJ5JIDrVdUL9kxCTGZekB6hWla0OMPnJOsqE
 lHsCNZo+KAIGRuRpIzh8qixwaqGL9Helvnsm3ZX86BRDIpbiUbnwOnkCyzVVkjq4vSIp
 qT8g==
X-Gm-Message-State: APjAAAX1OcftrcLFa5v+jvUqDEvgWRTzXY3cQ7ZhjnH0uj77oOAROD0V
 q6h6qfA+itjD1mIrhQQvvAMEExOcYpQ4S3O9OxQ=
X-Google-Smtp-Source: APXvYqypOBAbfGJ7cAjyJIEkp/mJesKWo8rcX99MYO3XMHtqvudueD9nY5PZlARzVjMMs5yI7FYw+wRA8Slx5q7ud4Y=
X-Received: by 2002:a9d:6318:: with SMTP id q24mr17493106otk.95.1556345873275; 
 Fri, 26 Apr 2019 23:17:53 -0700 (PDT)
MIME-Version: 1.0
References: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
In-Reply-To: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 27 Apr 2019 02:17:42 -0400
Message-ID: <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
Subject: Re: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
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

Hello Nicholas, thank you for your contribution, I really appreciate it !
See inline comments below.

On Sat, Apr 27, 2019 at 12:32 AM Nicholas Mc Guire <hofrat@osadl.org> wrote:
>
> wait_for_completion_timeout() returns unsigned long (0 on timeout or
> remaining jiffies) not int.

Nice catch !

> thus there is no negative case to check for
> here.

The current code can only break if wait_for_completion_timeout()
returns an unsigned long large enough to make the "int ret" turn
negative. This could result in probe() returning a nonsensical error
value, even though the wait did not time out.

Fortunately that currently cannot happen, because TIMEOUT
(2*HZ) won't overflow an int.

That being said, this return value type mismatch should definitely
be fixed up.

>
> Signed-off-by: Nicholas Mc Guire <hofrat@osadl.org>
> ---
>
> Problem located with experimental API conformance checking cocci script
>
> Q: It is not really clear if the proposed fix is the right thing here or if
>    this should not be using wait_for_completion_interruptible - which would
>    return -ERESTARTSYS on interruption. Someone that knows the details of
>    this driver would need to check what condition should initiate the
>    goto err_reset; which was actually unreachable in the current code.

It's used in probe(), so no need for an interruptible wait, AFAIK.
It can stay as-is.

>
> Patch was compile-tested with. x86_64_defconfig + FIELDBUS_DEV=m,
> HMS_ANYBUSS_BUS=m
> (some unrelated sparse warnings (cast to restricted __be16))

That sounds interesting too. Could you provide more details?

<snip>

> -       ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> -       if (ret == 0)
> +       time_left = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
> +       if (time_left == 0)
>                 ret = -ETIMEDOUT;
> -       if (ret < 0)
> -               goto err_reset;

NAK. This does not jump to err_reset on timeout.

May I suggest the following instead ? (manual formatting)

- ret = wait_for_completion_timeout(&cd->card_boot, TIMEOUT);
- if (ret == 0)
-         ret = -ETIMEDOUT;
- if (ret < 0)
-         goto err_reset;
+ if (!wait_for_completion_timeout(&cd->card_boot, TIMEOUT)) {
+         ret = -ETIMEDOUT;
+         goto err_reset;
+ }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
