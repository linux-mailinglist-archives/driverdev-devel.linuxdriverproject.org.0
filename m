Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B441345CE2D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 21:37:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4CB934052F;
	Wed, 24 Nov 2021 20:37:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qvRuVKyjHRya; Wed, 24 Nov 2021 20:37:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 05B15400EF;
	Wed, 24 Nov 2021 20:37:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5662C1BF616
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4642F81D5C
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8OTiho-PKSGS for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 20:37:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com
 [IPv6:2a00:1450:4864:20::22b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8BD1481D5A
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 20:37:44 +0000 (UTC)
Received: by mail-lj1-x22b.google.com with SMTP id k2so8020059lji.4
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NiWa89xq2Q9IF+ljEdo4/Z/asgRFC2P5rcNU6pbebKs=;
 b=dn2NWxi0lUYot/N0eTDsmPLuuonR6nIKnTH8qT9MOSFlqysj+TS5FqWODd36P9xB81
 C5sqvp5cwoBGiwtfg02AfI3aL/C6tMWaiBkcCVNRtYLptq6PLdC4IBHhyyHNwxpQDN7c
 yiAZ/dBbxuyXwzG9WjgN+gxoR92GjZUAldIXVtQRbsTgJH8+7pyf1lHzLhaV8DxnxHBC
 cUXt3orBS++uEkXIzWz3eq+Gy7Ut6kPcOpGdq5M13kR5wJCdToWwLO3RkYcgPxxU/smf
 Ykx/jXgdkYmFCDRMZ4oP1LTQnPurN3RmFXuwi5mg84Ho/1XGc9GggM2Q4kuCWTu11oO0
 6TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NiWa89xq2Q9IF+ljEdo4/Z/asgRFC2P5rcNU6pbebKs=;
 b=3MvUKuOLequ9QO0FnnKj3EDjod60ISnKEJrIGt+tmKUJFqGA6HY6vp6WvoxyfQGlKb
 0u5c5hMj5cKXm1FoE2mA09jWXcL+8p3yywEny8P33i6TmG9Uue+TyNcb2NE450YbwHja
 8GsxyuZ/70DtcX39Gu2PjjsjW/jlctzvK3Q06N9FvUBwp21TnOwEXaTZtMOLI13ZxwB/
 Zr7U1L7URD/HZyAbKhpINSKvaG1peNG+36AVDSxxb19dU6tsf42C59j6tc4Aftp8JqtU
 y1v7fH1r1efrqneyd/MC1p5u3Lw9opcA/9bXNquH/1uJ6CEC6zz7yHXc9HsgybZygw1v
 fCsA==
X-Gm-Message-State: AOAM530wIeI87/d5pba0r/bD3v1YPdV5fEOV9/nV00x4R9ybE8h9RMPz
 kEngIHMN4Os5z1eE7s45D9xcQZsFT44rrW49OLvmIw/yAPI=
X-Google-Smtp-Source: ABdhPJyL75Mlj8xal8gIYuPHynOG80rShCrg0nTZF+lWp+P7xYgFGmnc53IBlOitVrzGGupuCheHT4r1L5ghKeafJZ4=
X-Received: by 2002:a2e:b751:: with SMTP id k17mr18583891ljo.467.1637786262375; 
 Wed, 24 Nov 2021 12:37:42 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-4-tkjos@google.com>
 <20211124124313.GH6514@kadam>
In-Reply-To: <20211124124313.GH6514@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 24 Nov 2021 12:37:30 -0800
Message-ID: <CAHRSSExk8iO5S+OP+GDGpysoMep8=bKW5tjEBJzOm+yAMeUqsQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] binder: defer copies of pre-patched txn data
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 24, 2021 at 4:44 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 23, 2021 at 11:17:37AM -0800, Todd Kjos wrote:
> > +static int binder_do_deferred_txn_copies(struct binder_alloc *alloc,
> > +                                      struct binder_buffer *buffer,
> > +                                      struct list_head *sgc_head,
> > +                                      struct list_head *pf_head)
> > +{
> > +     int ret = 0;
> > +     struct list_head *entry, *tmp;
> > +     struct binder_ptr_fixup *pf =
> > +             list_first_entry_or_null(pf_head, struct binder_ptr_fixup,
> > +                                      node);
> > +
> > +     list_for_each_safe(entry, tmp, sgc_head) {
>         ^^^^^^^^^^^^^^^^^^^
> All the list_for_each() loops can be changed to list_for_each_entry().
>
>
>         list_for_each_entry_safe(sgc, tmp, sgc_head, node) {

Will change. Thanks for the suggestion.

>
> regards,
> dan carpenter
>
>
>
> > +             size_t bytes_copied = 0;
> > +             struct binder_sg_copy *sgc =
> > +                     container_of(entry, struct binder_sg_copy, node);
> > +
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
