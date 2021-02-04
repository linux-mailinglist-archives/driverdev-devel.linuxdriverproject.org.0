Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F0430F4A2
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 15:11:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3B38850CF;
	Thu,  4 Feb 2021 14:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z+3WEzDqI7Od; Thu,  4 Feb 2021 14:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A57BB84F98;
	Thu,  4 Feb 2021 14:11:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A1E271BF5A3
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 14:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 84B3C20020
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 14:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2oix88Khqzta for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 14:11:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by silver.osuosl.org (Postfix) with ESMTPS id DA88D1FE49
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 14:11:40 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id j25so3852386oii.0
 for <devel@driverdev.osuosl.org>; Thu, 04 Feb 2021 06:11:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AeTSTNxgLE2BT0GTudXgmFb4g9IjjW+lbLXDMlVfRik=;
 b=KniTLZht5ZzZXmx/CS0CuYnRsrG0YvC1fhjkc7lgOku/Qx681ujkRQWZLUG89db/BZ
 poYfhwlWgg6XtR90PXORUuijJi2oEW3qgMMjT4YakaShGPZXp/QIBv1utwC6uthR7ITc
 gi4IYwBpQY5LXtmBUxOv+6N1RqiGoVZknK9tk+VuxmU63rKzgI3MtrpYSacGrsJAsK3X
 hkuYdhlvOG+2NU+M7r/c1kSwRKZgcGK7db0idNp0tkfXQoQGxMFaJeHfN3+j6dS1Blok
 EeNoXBAxUC2VinysRErLynemJmUOyQDOsTYZh/WMmGLc+nR20nPqYjiMGsWCr61gxSHg
 sj0w==
X-Gm-Message-State: AOAM532QuK81Tw+KR666Drx6E/TkriOCf0KkEA/c83Z314dyeMOhb6dz
 UkYOe5adEwQAG9Uo6PJg3i7ge+D/ZO1MF0eLh3LZOnoVfT4=
X-Google-Smtp-Source: ABdhPJwIMkZ9crB5RzPfP0aiVhmh61qrbaAU2HVxqJSpznq2cpzmYfpLAgUbYTQO/oABbafz5fjdh/q7MscPh0Ye06E=
X-Received: by 2002:aca:308a:: with SMTP id w132mr5018580oiw.69.1612447327733; 
 Thu, 04 Feb 2021 06:02:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.1612314468.git.skhan@linuxfoundation.org>
 <8d11eec80d6668065fb35a0b025c3614b67bf798.1612314468.git.skhan@linuxfoundation.org>
In-Reply-To: <8d11eec80d6668065fb35a0b025c3614b67bf798.1612314468.git.skhan@linuxfoundation.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 4 Feb 2021 15:01:56 +0100
Message-ID: <CAJZ5v0i8-HpSAk=HGOgVN1RTLup4Rh0WTt0H3LQh1EfuWE-e+w@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] drivers/acpi: convert seqno to use seqnum_ops
To: Shuah Khan <skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Tony Luck <tony.luck@intel.com>,
 Kees Cook <keescook@chromium.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 James Morse <james.morse@arm.com>, linux-kselftest@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Shuah,

First off, please indicate the component in the subject, for example:

"ACPI: extlog: convert seqno to use seqnum_ops"

On Wed, Feb 3, 2021 at 7:12 PM Shuah Khan <skhan@linuxfoundation.org> wrote:
>
> Sequence Number api provides interfaces for unsigned atomic up counters
> leveraging atomic_t and atomic64_t ops underneath.
>
> Convert seqno atomic counter to use seqnum_ops.

Apart from the above, it would be good to say why the change is an improvement.

It looks like the rationale is that using struct seqnum32 would allow
tools to easily detect the usage of sequence numbers, but is there
anything else in this particular case?

> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> ---
>  drivers/acpi/acpi_extlog.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/acpi/acpi_extlog.c b/drivers/acpi/acpi_extlog.c
> index 72f1fb77abcd..16a4928645a1 100644
> --- a/drivers/acpi/acpi_extlog.c
> +++ b/drivers/acpi/acpi_extlog.c
> @@ -12,6 +12,7 @@
>  #include <linux/ratelimit.h>
>  #include <linux/edac.h>
>  #include <linux/ras.h>
> +#include <linux/seqnum_ops.h>
>  #include <asm/cpu.h>
>  #include <asm/mce.h>
>
> @@ -93,8 +94,7 @@ static struct acpi_hest_generic_status *extlog_elog_entry_check(int cpu, int ban
>  static void __print_extlog_rcd(const char *pfx,
>                                struct acpi_hest_generic_status *estatus, int cpu)
>  {
> -       static atomic_t seqno;
> -       unsigned int curr_seqno;
> +       static struct seqnum32 seqno;
>         char pfx_seq[64];
>
>         if (!pfx) {
> @@ -103,8 +103,8 @@ static void __print_extlog_rcd(const char *pfx,
>                 else
>                         pfx = KERN_ERR;
>         }
> -       curr_seqno = atomic_inc_return(&seqno);
> -       snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx, curr_seqno);
> +       snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx,
> +                seqnum32_inc(&seqno));
>         printk("%s""Hardware error detected on CPU%d\n", pfx_seq, cpu);
>         cper_estatus_print(pfx_seq, estatus);
>  }
> --
> 2.27.0
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
