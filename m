Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80662286766
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Oct 2020 20:30:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8045A272DB;
	Wed,  7 Oct 2020 18:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bqRTE3UlpCh8; Wed,  7 Oct 2020 18:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D095C27256;
	Wed,  7 Oct 2020 18:30:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A4FCC1BF46D
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 18:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9E634204F2
 for <devel@linuxdriverproject.org>; Wed,  7 Oct 2020 18:30:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XeU8+fIqRrOW for <devel@linuxdriverproject.org>;
 Wed,  7 Oct 2020 18:30:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id EDD01204B7
 for <devel@driverdev.osuosl.org>; Wed,  7 Oct 2020 18:30:15 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id 144so1809411pfb.4
 for <devel@driverdev.osuosl.org>; Wed, 07 Oct 2020 11:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=;
 b=Oi3QTMD9IkaHxDQu21atk/izzNy05UEr29GvBeVD/aPrPFrwP7zFn/Z0ocm3YCp4/G
 MYj2vvs7sZheVYuugoADfNAzk9zrHJIcbQC6vQqHeZhqwKwGZCaiXL8Vmhwm+mooYfyf
 NVvspGSkmv/96/hUy7UhO+Bi6+iB0pFbMjf5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NEnx/MaMTPdV1sePaMjyGodsEMsS+Pwmt60JRHi/cE0=;
 b=YvtiWEnyj9rQDDExqioD1VpTFzfDDVZ+YKzMdGjt6AmLWIDsHO1gPyadxjhmCeDuiQ
 BoMH3y4JHQigxpQjsJ0dpwjlgxXpMAOtJMBaT1XThED3Sd4UTGO6rNT3XJypqSTTztPJ
 AkduKFREGn4TdzYBgucUtSd+8dM46HtTbvIpVvGRUTqZijl+g69WthU5VqCjXpYYINbC
 HpXVPtneRwqaH6+Ya1jiXJk0t94+gnICpxqS2X16O+m38m6OccRNAfQ4w2vNKQtjBTP7
 vHAmivu41XK65BFbqp5VTJ2N/NzJpgMrUXeHsqBlTYg2ypTiNGRXCfFxVziOhNp9rd9w
 AgBw==
X-Gm-Message-State: AOAM531cAEoHyg5re9ryRKxJ1FlTyXNC8R3Qx+F7rAbLd9aCIjpFT9Dj
 /ih1bNU5d5vbK4AKsE4YHCie1A==
X-Google-Smtp-Source: ABdhPJwANFS6YYncg0hxvWSF1CAR8KRQ83VHR0P39mH0uwrUqNSGUcIFT7Lpzw7MABy1uBVF3jVVDw==
X-Received: by 2002:a17:90b:4c90:: with SMTP id
 my16mr3717046pjb.27.1602095415557; 
 Wed, 07 Oct 2020 11:30:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id b6sm3411877pjq.42.2020.10.07.11.30.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Oct 2020 11:30:14 -0700 (PDT)
Date: Wed, 7 Oct 2020 11:30:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v2 00/11] Introduce Simple atomic counters
Message-ID: <202010071128.0772BDD6@keescook>
References: <cover.1602011710.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1602011710.git.skhan@linuxfoundation.org>
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
Cc: rafael@kernel.org, linux-kselftest@vger.kernel.org, joel@joelfernandes.org,
 rric@kernel.org, shuah@kernel.org, devel@driverdev.osuosl.org, minyard@acm.org,
 corbet@lwn.net, surenb@google.com, linux-doc@vger.kernel.org,
 linux-acpi@vger.kernel.org, lenb@kernel.org, tkjos@android.com, arnd@arndb.de,
 bp@alien8.de, openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 maco@android.com, christian@brauner.io, linux-edac@vger.kernel.org,
 tony.luck@intel.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 arve@android.com, james.morse@arm.com, hridya@google.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 06, 2020 at 02:44:31PM -0600, Shuah Khan wrote:
> -- Addressed Kees's  and Joel's comments:
>    1. Removed dec_return interfaces (Patch 1/11)
>    2. Removed counter_simple interfaces to be added later with changes
>       to drivers that use them (if any) (Patch 1/11)
>    3. Comment and Changelogs updates to Patch 2/11

Thanks!

> Kees, if this series is good, would you like to take this through your
> tree or would you like to take this through mine?

I think it's very close! I've sent reviews. Why don't you take this tree
for now? (Originally I thought this was going through Greg's tree since
it was touching a lot of drivers.)

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
