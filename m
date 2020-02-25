Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 067BB16B872
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Feb 2020 05:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DECF8790D;
	Tue, 25 Feb 2020 04:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XN60-4XxwOw4; Tue, 25 Feb 2020 04:16:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD640878C8;
	Tue, 25 Feb 2020 04:16:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD9141BF349
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 04:16:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C281085497
 for <devel@linuxdriverproject.org>; Tue, 25 Feb 2020 04:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cN36urRpSggm for <devel@linuxdriverproject.org>;
 Tue, 25 Feb 2020 04:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2223581FB4
 for <devel@driverdev.osuosl.org>; Tue, 25 Feb 2020 04:16:38 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d9so6234668pgu.3
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 20:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=nvyoV3rpQ/4826HWNHR3aBaazk1bR8G/UoAGyD9qxog=;
 b=E9fxaqTOYeSFSaSSQIldo2fp2IJNnP71BznsFOIL7k6dt3Z+Ka4wiGzB7dEoAxcSF4
 QGSB6z9cnQor5hK64igm4shz7pq9CS4tCAEMN5BtNUU4vOadCmtBCk4VcYJGS7RGKax/
 +ssyDxSQrj8zs+FHHz+46ObknMJoOZf+edbrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=nvyoV3rpQ/4826HWNHR3aBaazk1bR8G/UoAGyD9qxog=;
 b=oEHiFDiqxH+0uOpNvhYgDi327rMEmEMuMKCrew6Iyloi4ohjAfWeZk1X/idFmV9F2a
 1cD/kPeHNXSxiw8VmFsI5IzNhddgGUgZ2g0jiUuvOfE8/LAaUwjSrrbPDJwdrSfrD7bd
 I0yey+11+w9pJnezUZuETOpaTBal3uognx2i9Bhx2YmlWPYAWi1cGKDXZPhOrhqHsYbn
 4bwCSPDhuW0hbGudWWPWpjNK6/NETYcpJ5zdGyGXTf34NFzbiJXKGIYaWI9XCnt7+GM4
 f0EUr33iKZxDgCW7IaxXFNcvZ1gF99pQHSMRinsTkS/DMc+xE3mkcHNcai/BbOvinilY
 +3Jg==
X-Gm-Message-State: APjAAAUi9JS7yRvyfRNiMwMPAsva+7bug1W/Vt9+qG2WkOBjgg1BA+O5
 xjgAnRM2W3CD+6BR+OXvwRL07A==
X-Google-Smtp-Source: APXvYqzDkZ7WIMAa2Pdr/ulrK+HZWjwIS3QZkIaO4dtwMqbunTlMOKYIDoNqj3sFV852d/xtY4jiwA==
X-Received: by 2002:a62:1682:: with SMTP id 124mr31369031pfw.107.1582604197669; 
 Mon, 24 Feb 2020 20:16:37 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x12sm14784641pfr.47.2020.02.24.20.16.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 20:16:36 -0800 (PST)
Date: Mon, 24 Feb 2020 20:16:35 -0800
From: Kees Cook <keescook@chromium.org>
To: glider@google.com
Subject: Re: [PATCH 1/3] compiler.h: define __do_not_initialize
Message-ID: <202002242014.F641277@keescook>
References: <20200224153501.60040-1-glider@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224153501.60040-1-glider@google.com>
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, peterz@infradead.org,
 gregkh@linuxfoundation.org, arve@android.com, mingo@redhat.com,
 dvyukov@google.com, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 24, 2020 at 04:34:59PM +0100, glider@google.com wrote:
> For CONFIG_INIT_STACK_ALL it's sometimes handy to disable
> force-initialization for a local variable, if it is known to be initialized
> later on before the first use. This can be done by using the
> __do_not_initialize macro.

Nit-pick: other things are listed as __no_$feature. What about naming
this __no_initialize (or reuse the attribute name of __uninitialized)?

> __do_not_initialize should be applied carefully, as future changes to
> the code around the local variable may introduce paths on which the
> variable remains uninitialized before the use.
> 
> Signed-off-by: Alexander Potapenko <glider@google.com>

Please CC lkml as well in the future.

But yes, this seems like a reasonable work-around until compilers can be
taught which functions are considered initialization sinks. :)

-Kees

> ---
>  include/linux/compiler-clang.h | 10 ++++++++++
>  include/linux/compiler_types.h |  4 ++++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index 333a6695a918c..9204334d39261 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -24,6 +24,16 @@
>  #define __no_sanitize_address
>  #endif
>  
> +/*
> + * Disable initialization of a local variable when building with
> + * CONFIG_INIT_STACK_ALL.
> + */
> +#ifdef CONFIG_INIT_STACK_ALL
> +#define __do_not_initialize __attribute__((uninitialized))
> +#else
> +#define __do_not_initialize
> +#endif
> +
>  /*
>   * Not all versions of clang implement the the type-generic versions
>   * of the builtin overflow checkers. Fortunately, clang implements
> diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
> index 72393a8c1a6c5..b216beb5586fc 100644
> --- a/include/linux/compiler_types.h
> +++ b/include/linux/compiler_types.h
> @@ -180,6 +180,10 @@ struct ftrace_likely_data {
>  
>  #endif /* __ASSEMBLY__ */
>  
> +#ifndef __do_not_initialize
> +#define __do_not_initialize
> +#endif
> +
>  /*
>   * The below symbols may be defined for one or more, but not ALL, of the above
>   * compilers. We don't consider that to be an error, so set them to nothing.
> -- 
> 2.25.0.265.gbab2e86ba0-goog
> 

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
