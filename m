Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37A21D6CDC
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 May 2020 22:25:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91B8188516;
	Sun, 17 May 2020 20:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ePyFjDJv1FP; Sun, 17 May 2020 20:25:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 020B5882F3;
	Sun, 17 May 2020 20:25:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5F81A1BF3F7
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:25:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5C3A4883C6
 for <devel@linuxdriverproject.org>; Sun, 17 May 2020 20:25:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p-95bWat58R4 for <devel@linuxdriverproject.org>;
 Sun, 17 May 2020 20:25:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 09E4F882F3
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 20:25:24 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id b6so8152513qkh.11
 for <devel@driverdev.osuosl.org>; Sun, 17 May 2020 13:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=eQFoMfc4wiRHArKbIabU/xQTAzEWkb3eRCH2jQlOh7w=;
 b=L7MwXVEtX8NrbAx3rhGebDUn1YU5iyNHc4/pQtu9ATpDmBRegFBlcy6WZ5R03Ugxat
 h5rCaTHNwx0fh+9lihPP7Gcedipg1dXvJ2n3z6Z147AusTTQ3CJVmu/6pOYFaT1Ln1hZ
 srzAseYhWiJpXpBSG6zlw6O/L4x6lQU0jHtMz+ssNVjJE/JIjtg99ak7OHX1hXLhoeKK
 3nBokB0RWgX/CWtmslrkveTfacx5FNJjeHC0q5CEi/fUoRrW+GJVbFBA9bPP82paCzBH
 Ne6FKS0vR+9yQ6pvBNbL+dVyKxMDkp7HJvEDkogmN7ilWWUXSfqOMiSu+Rn/sBmRVybA
 7kWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=eQFoMfc4wiRHArKbIabU/xQTAzEWkb3eRCH2jQlOh7w=;
 b=TUHuE+/VC7bHw9o5KMSYDiHn1xqfJgIt7GUXLMgBkRJ1D8MvB7NGqVCO5VK1uwZVQw
 tktD1JaYMihO2cGsBOUj+d+Rp8jdsoQY/+/WDBsMtg1I+mkrIXjyS8KPlqvYLiW5/i3Q
 MxzN9b3nPlmMI+xx5pTA46eeGsQk2XkfljTrz4lb9S2jJrOvyr5sZ6s6uPklSq1Sa0Fa
 haySptzU4e5fUW+wQUyTVI5JGsfMWjY8ylyFkZ+LA9qPPvAZhoRv9Z8wFEpbkjb/fI38
 wcTHYd7VAJowlRdU3F+IfBU0MYuIzOsxPXEHNSNaCgEW/jISrNSr7qXDEJAlzcBeDHrv
 JRFA==
X-Gm-Message-State: AOAM532dHVxyrSKnuSYHGzQoaFSf/LnlJWzcRarqszuGtDKii55uXHqx
 K7fQFovcMtlWIqNNebCNIp+0aGmzo7vZf1LMfi+Mvw==
X-Google-Smtp-Source: ABdhPJxJAlEdlloQNNu958JM4j2/umjLem/eeMitB8IY9psUhZcJd1KidorESNBEOaegBsAPh3xxlPviRdEioxp9K3o=
X-Received: by 2002:a37:8844:: with SMTP id k65mr13146388qkd.309.1589747122417; 
 Sun, 17 May 2020 13:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200517165819.136715-1-pterjan@google.com>
In-Reply-To: <20200517165819.136715-1-pterjan@google.com>
From: Pascal Terjan <pterjan@google.com>
Date: Sun, 17 May 2020 21:25:05 +0100
Message-ID: <CAANdO=Li7FUbVQk6m+CksZBv1zy-F+-1tN9oYZ4niYJ0utRfXA@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8192u: Merge almost duplicate code
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 17 May 2020 at 17:58, Pascal Terjan <pterjan@google.com> wrote:
>
> This causes a change in behaviour:
> - stats also get updated when reordering, this seems like it should be
>   the case but those lines were commented out.
> - sub_skb NULL check now happens early in both cases, previously it
>   happened only after dereferencing it 12 times, so it may not actually
>   be needed.
>

Hi,
I actually noticed the same duplicated code (and same late NULL check)
in drivers/staging/rtl8192e/rtllib_rx.c
drivers/staging/rtl8712/rtl8712_recv.c has only one copy of the code
but with the late NULL check
drivers/staging/rtl8188eu/core/rtw_recv.c has only one copy of the
code and doesn't do any NULL check

Now I wonder how to proceed. The code is not great so it would not
feel right to make it reusable.
Should I continue improving it on this driver only first (maybe trying
to reuse ieee80211_data_to_8023_exthdr from net/wireless/util.c for
example)?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
