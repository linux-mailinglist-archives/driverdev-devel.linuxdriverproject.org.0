Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1E0233CE2
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 03:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 309D48860D;
	Fri, 31 Jul 2020 01:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fzT6qC5+6UkL; Fri, 31 Jul 2020 01:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64AD887F46;
	Fri, 31 Jul 2020 01:33:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D359E1BF599
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 01:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9F0487C5A
 for <devel@linuxdriverproject.org>; Fri, 31 Jul 2020 01:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CvvXnZaI0CQW for <devel@linuxdriverproject.org>;
 Fri, 31 Jul 2020 01:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3A2F787C55
 for <devel@driverdev.osuosl.org>; Fri, 31 Jul 2020 01:33:01 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id z18so1086409otk.6
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 18:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q2T/qHYh0SZe6VHrMdVk8rJ3NpXcbd7edisixd4s0yM=;
 b=YGILJ8fyfHDDZ1IGVGVPA6Ee4kpxoLOTLExaHDeAttoX8Ppa0u1CxHR1ikyeweE37m
 4DbmtrWfJdvJ8XEeaA6Wnn16NGiX+ha+i2QKrBpwIHoMCdt4HVkaparnSgs9U3oqUkq9
 tCMvvrlYEXDha/2MySetbsMfc/fewrhK137l9f611aifk7P10buoRN7t+u4UHATmnDyL
 r8uGiqyV39YnJPLmL3mW1X8xBoX81Wor7kYvG/zshdpKJo9qbF96cG6CjSXCyc1jBNp5
 DrdI9tXtsRWRHuKpFp5o+qbrAZyTrxyDwZ85X55eXqOiZDp8Opfe6JmO8mLkHBrkAScq
 +4+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q2T/qHYh0SZe6VHrMdVk8rJ3NpXcbd7edisixd4s0yM=;
 b=kQ6qzbGynEnWG2e7raitLis5e4lTcH2yU64cfgz4NWyXVr/EOqoDU29A+jiRuWluu1
 1VMCDDIAzIR4usp6G/dt5Alb1auyCXOdKzDAVv1u6Z3NfQm7rBhkIynGqq1PgvN/3TsO
 ZRzJnVYQpiwp6UUmj9UGsoTMjv2dM0LSOsnTVfKONV377apYCTFWubDMeT2gsybmi51P
 ox2tQMS6tO0TGSEEYHdXSx/eg6PGJkD6lyJquq5saAzkQn6BjIhBYdiI28iB4z5LWIXb
 bL4emqYSTdNVQV3kOt1Z1IR4ypMyDpabaBnDIxZZT9qiPZ0v1fqLKNH/ZQoHG7qIc/Ji
 M8aA==
X-Gm-Message-State: AOAM531MMsJ4LXxC7OgZ53ozGTVTrjVgx17/ZJAZzOtRs/Qk27rbZYC6
 SupNfZ4dV7kf7gahwr4AYwlXlvbgijYJJFwxayo=
X-Google-Smtp-Source: ABdhPJwtwhTz4ctEBLOqMB6s6sM5KYTftA2UXRhHH6CsQCLoUcMQ0cj4mmIGeCOvepoJF49+xlUeez8/1Nf53vkY7L4=
X-Received: by 2002:a9d:60d:: with SMTP id 13mr1182884otn.232.1596159180255;
 Thu, 30 Jul 2020 18:33:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200730152724.39250-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20200730152724.39250-1-andriy.shevchenko@linux.intel.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 30 Jul 2020 21:32:49 -0400
Message-ID: <CAGngYiW6+-bcOH-_K7U3b1uVisHy4bbFX5CM9iA265GAzOLayw@mail.gmail.com>
Subject: Re: [PATCH v1] staging: fieldbus: Use %pM format specifier for MAC
 addresses
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy, thank you for the patch ! See below.

On Thu, Jul 30, 2020 at 11:27 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> -struct msg_mac_addr {
> -       u8 addr[6];
> -};

I would prefer to keep this structure. It's conceptually important,
because it describes the binary layout of a message going to a
peripheral.

Perhaps you can still print using %pM by doing:
printf("%pM\n", response.addr) ?

> @@ -59,17 +55,13 @@ static int profi_id_get(struct fieldbus_dev *fbdev, char *buf,
>                         size_t max_size)
>  {
>         struct profi_priv *priv = container_of(fbdev, struct profi_priv, fbdev);
> -       struct msg_mac_addr response;
> +       u8 mac[ETH_ALEN];
>         int ret;
>
> -       ret = anybuss_recv_msg(priv->client, 0x0010, &response,
> -                              sizeof(response));
> +       ret = anybuss_recv_msg(priv->client, 0x0010, &mac, sizeof(mac));

Should the address-of operator (&) be present in &mac ?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
