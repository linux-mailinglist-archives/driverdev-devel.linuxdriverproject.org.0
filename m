Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C86A25A93
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 01:00:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 93DCC2E1D9;
	Tue, 21 May 2019 23:00:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VWHomCtjpf5F; Tue, 21 May 2019 23:00:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9FCB22DB9C;
	Tue, 21 May 2019 23:00:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A9771BF578
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 23:00:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7674C86D08
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 23:00:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9G1QadHv1-d for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 23:00:14 +0000 (UTC)
X-Greylist: delayed 00:06:30 by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 60A3E86CC5
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 23:00:14 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id r18so51123pls.13
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 16:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=02nYY05v2QFr3Hfg9pPQ1xvZe/bkgLIox6orT9FB980=;
 b=oQFKQEvKdJ9k/WFF/QUvYG+lk/dKXT9bQyVDOteomDhohhE9Ml6KumTyPptjehvXnY
 zE8hStZBeEQEuFfa07M2G1PtOf3jsGFNzM7kBoKaTghA739BAod9YKK542Jk7NskzBAX
 bEyTsq16Z90dWKWOu3Er36r8Lw8INwaMeI8RRM7BU9zOLeCHBZAlCarDjPrlP0xwqGx+
 gA1H2ehrLIxAWqySLfHykLk2mIa1A6FdOSK+V9jv1Fm7yKnu+pJ1P4bHCzRH+nPPZBmf
 bOLqzG1U7yWFQpXjDBcCDUjh6E1nwjevDnXNbvbMamUIeJ4uwpoaw2YHFih3R6yQEIjK
 YO4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=02nYY05v2QFr3Hfg9pPQ1xvZe/bkgLIox6orT9FB980=;
 b=ANIur/vNukGcRRShVOTft+1OHM/+58y8sGvK8tlr78O3t+Xq4jkm+/+TmF/2BZCgvk
 lZoOlt7it1oGRFLyf4+1R2SSX7zWVYY4OkFrj8GEEx3K3U/2nk2xGVm2ERmvgITc71mQ
 03TuYEVKhPIAX8RT6nN3RdHlfDv9uF/YrK60NVQlMigS/tYo/Gxytf3byFeRAGLFHjVO
 7dxnmHdSzroO3tqm0ip+ntHNMKP3zirLGY85N2TT7qM60I4CfB9Xf+Tt0gK0DFyyOw0T
 0o7R12701Q/bddXsr8HP1j5K3tyJORwYaS0pwIqSEp1cZ995Gce4Rxqe2hOAlCfm1b4l
 jLMQ==
X-Gm-Message-State: APjAAAVHzUvgv4wX7xvcf+NmVODdQQTxWRX2ziycWhXL1fx/RiNNsyTY
 A8Ip/sQiFCaQkVmymNP8He0BoFbgv14gMZVYW5sX6w==
X-Google-Smtp-Source: APXvYqxduUhjYzwZiokDSqwpPRvgN6vAthBQXb7qyFz6P22SFMj6sUEJqqC0+eAyn0AKlW6iepuBKAfLujn+D2SO9Lw=
X-Received: by 2002:a17:902:4e:: with SMTP id 72mr34044835pla.80.1558479224024; 
 Tue, 21 May 2019 15:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190521174221.124459-1-natechancellor@gmail.com>
In-Reply-To: <20190521174221.124459-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 21 May 2019 15:53:32 -0700
Message-ID: <CAKwvOdmgpx0+d905PdRqUFeg8Fj8zf3mrWVOho_dajvEWvam9w@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Remove an unnecessary NULL check
To: Nathan Chancellor <natechancellor@gmail.com>
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
 rsmith@google.com, LKML <linux-kernel@vger.kernel.org>,
 John Whitmore <johnfwhitmore@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:42 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:47: warning:
> address of array 'param->u.wpa_ie.data' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>             (param->u.wpa_ie.len && !param->u.wpa_ie.data))
>                                     ~~~~~~~~~~~~~~~~~^~~~
>
> This was exposed by commit deabe03523a7 ("Staging: rtl8192u: ieee80211:
> Use !x in place of NULL comparisons") because we disable the warning
> that would have pointed out the comparison against NULL is also false:
>
> drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:46: warning:
> comparison of array 'param->u.wpa_ie.data' equal to a null pointer is
> always false [-Wtautological-pointer-compare]
>             (param->u.wpa_ie.len && param->u.wpa_ie.data == NULL))
>                                     ~~~~~~~~~~~~~~~~^~~~    ~~~~
>
> Remove it so clang no longer warns.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/487
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index f38f9d8b78bb..e0da0900a4f7 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -2659,8 +2659,7 @@ static int ieee80211_wpa_set_wpa_ie(struct ieee80211_device *ieee,
>  {
>         u8 *buf;
>
> -       if (param->u.wpa_ie.len > MAX_WPA_IE_LEN ||
> -           (param->u.wpa_ie.len && !param->u.wpa_ie.data))

Right so, the types in this expression:

param: struct ieee_param*
param->u: *anonymous union*
param->u.wpa_ie: *anonymous struct*
param->u.wpa_ie.len: u32
param->u.wpa_ie.data: u8 [0]
as defined in drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295
https://github.com/ClangBuiltLinux/linux/blob/9c7db5004280767566e91a33445bf93aa479ef02/drivers/staging/rtl8192u/ieee80211/ieee80211.h#L295-L322

so this is a tricky case, because in general array members can never
themselves be NULL, and usually I trust -Wpointer-bool-conversion, but
this is a special case because of the flexible array member:
https://en.wikipedia.org/wiki/Flexible_array_member. (It seems that
having the 0 in the length explicitly was pre-c99 GNU extension:
https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html). I wonder if
-Wtautological-pointer-compare applies to Flexible Array Members or
not (Richard, do you know)?  In general, you'd be setting
param->u.wpa_ie to the return value of a dynamic memory allocation,
not param->u.wpa_ie.data, so this check is fishy to me.

> +       if (param->u.wpa_ie.len > MAX_WPA_IE_LEN)
>                 return -EINVAL;
>
>         if (param->u.wpa_ie.len) {
> --
> 2.22.0.rc1
>


-- 
Thanks,
~Nick Desaulniers
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
