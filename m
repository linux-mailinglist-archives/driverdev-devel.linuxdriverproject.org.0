Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7C32BC0D2
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 18:12:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EFE5B86E0F;
	Sat, 21 Nov 2020 17:12:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJUv0PZX41ir; Sat, 21 Nov 2020 17:12:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99FBB86DB1;
	Sat, 21 Nov 2020 17:12:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 65E621BF2E4
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 17:11:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62B0C86AC9
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 17:11:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ToJNQIHPXLL9 for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 17:11:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 835488699B
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 17:11:58 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id u18so17942802lfd.9
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 09:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=quCrZw3xjQlus6dsPuthLkw5agQjB3m+LKm8h41dAL0=;
 b=ddmMBP4Ze9m33DVUykspjKY2KVNIw9KTrtgVsU/DE6Ka8lRHMfvRcSEul+eztgd45n
 6wZqm3AsD7SS7l9Yrdrs6TovA6f3BX5Rp7sq7IF+1Sm85JVxkuoQlE8H70DQsTp2A1jd
 V/q+DIdNv/g/HAzs26YWcNxjPnHpTrOdOZ2CA1Jb5yZWFoE2SXwv4iXxJ5fsKKLRjJTo
 jEebQ4b2oOi67818pbR9CxMIXGhJdWi0/4bhOpG3QSMj7wSPpaFXqvIwe8v5OPGa5mOP
 KRM8e5B5G8FU4OOzi3jXWnnT3dzCALuP9ZvqxFvxgfumGlIDWFWOy8yOl7eLrQtg02yf
 SAnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=quCrZw3xjQlus6dsPuthLkw5agQjB3m+LKm8h41dAL0=;
 b=oUuaGQOW7wgje7fDYFB34341VSJPSA2yVl1HDWgSkjrfylzM+ED96y6crU0lKb/lRK
 +I7c+UJJqePzDqo0KGU4w9JYr8ELFosMYt7BvtoFJmU7uwtE0E1iBHHpydarq44aEekd
 2sDd7zbd+lGeT3e5nTGdEzaQ8AQrmI+XHDm+zNfRRT6eB1cb9OC/MKtVzMgSLE4/EnMP
 MxZxTsaGbjx5XzoIYefo6OHofAQlnbAI7vN3hP09V0FJ3cqDN+7Sqoq5Y/OckL7F1W6P
 ZuOmg1ZELnRFIkVu144Eve0tlyvgJnx+uSfRxZmrlIaGCMTFyJ+Fq1bkFfEfiDc0uHJm
 jKXw==
X-Gm-Message-State: AOAM5334xXwavr0wiD7g0SI2Pna7VS1Eq2OEBnZU0CFmJBkw5FY4mybx
 9JNnoVVieaCZWsyR7WWI2xMo5/Ra5jE8MIXlQPU8bA==
X-Google-Smtp-Source: ABdhPJyMNlwa4X7CQkWhvPpd88a2fJ9PtYFIy30vHt74u7V6698gYdMM3A7vxWOrDPJjPlcNcQktRKUdn+L0sTaJR5M=
X-Received: by 2002:a19:4147:: with SMTP id o68mr10708124lfa.365.1605978716421; 
 Sat, 21 Nov 2020 09:11:56 -0800 (PST)
MIME-Version: 1.0
References: <20201120233743.3617529-1-tkjos@google.com>
 <X7i+QcE8hhY03FX1@kroah.com>
In-Reply-To: <X7i+QcE8hhY03FX1@kroah.com>
From: Todd Kjos <tkjos@google.com>
Date: Sat, 21 Nov 2020 09:11:42 -0800
Message-ID: <CAHRSSEypnwWwNNvs0giYTjOeUXJuAb-4MNTymVf1uUJr8aUwSQ@mail.gmail.com>
Subject: Re: [PATCH] binder: add flag to clear buffer on txn complete
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Steven Moreland <smoreland@google.com>, LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Android Kernel Team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 20, 2020 at 11:14 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Nov 20, 2020 at 03:37:43PM -0800, Todd Kjos wrote:
> > Add a per-transaction flag to indicate that the buffer
> > must be cleared when the transaction is complete to
> > prevent copies of sensitive data from being preserved
> > in memory.
> >
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > ---
>
> DOes this need to be backported to stable kernels as well?

It doesn't technically qualify for stable since it is a new feature --
not a bug fix. We will want it for Android S launch devices (5.4+), so
it would be handy to have it in 5.4.y and later.

>
> thanks,
>
> greg k-h
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
