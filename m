Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BB62A3B77
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Nov 2020 05:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE6B62050C;
	Tue,  3 Nov 2020 04:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eNsWeJdrplzk; Tue,  3 Nov 2020 04:40:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 793D3204D6;
	Tue,  3 Nov 2020 04:40:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A02D41BF316
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 04:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 98E91871AE
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 04:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xg7EAC4vUfdl for <devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 04:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD6B3871A7
 for <devel@driverdev.osuosl.org>; Tue,  3 Nov 2020 04:40:52 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id c18so11392260wme.2
 for <devel@driverdev.osuosl.org>; Mon, 02 Nov 2020 20:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZsLiELZDgcODbFWwv/znA2TZHH9P89qCS6Bl8IJIhes=;
 b=MXiyWkoXcOBvIDIqhK/7qOuAxVzeBzwauMfq6g7W67XTP6rdqX3h4BkrPvcLMiYUaX
 Df79GopWOuKeglWChvyynkNPTYMC5e59eNVN4MojGsaN0q0bxUfZcUrNp+J9eskY5/ku
 HPVB8S47rbbEd6OCj88GuEVD0niVjehAZAZ096Yvh9ghh7O4u/NNZxahSkuKa1JgrrDm
 quRLqVkpKNs2VcfNs+GQyi+3y5S8K4twujeXLr1efTN8zakcGKSeyRsH72IgV78qx08v
 OfQdo0z0DErlpFAuHBIik3V5QNTXt8efZHcVAFpg5KSgTJawkoFsSPnWBrSgEWNLegZr
 IjVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZsLiELZDgcODbFWwv/znA2TZHH9P89qCS6Bl8IJIhes=;
 b=GDHmb4hMJsXzT8iES1rZqaL0LU5CZxh/ydjG44BwE1D3XLf1olg+cZ8DL7lk1SlW2R
 HOcoPk7gi63kVo99cNHj2eIGyA3SAWuXdrdITji4aqDpGMU2IfIuu91D9Jl7d3OVxybx
 +znDWA1dxEXRckg/sYSFvzZ1AF1Lqtl8PQhvL2/t6IIxFJzC6+W53BP4PnMMOiPPCdF2
 DfqJ+CZ6kwwEm/w9WqUYLEzOuqns4CP7YqaxJqdH9A2TpkRVyXQMbqUD3ucrZH42+e+C
 7QN12dg8TOmzssxgccFYI+J9aFCrS61/K+NkpC27hrHR1mD07McJJHo6O5FpvAne75k8
 qDJQ==
X-Gm-Message-State: AOAM532wHqLp7lKJPtH0viq8fyU4AwHSFs0GSlhAbTPIDJ7Vhed7QhgN
 5f8LAGH5tyePKmW4u5R40t2rokdEbLzoU7JY/g==
X-Google-Smtp-Source: ABdhPJxQpc0z0XrT27/+lJ8iKLXRrHcrLo1NjLe8WzIH9ejxMt/T2Mirus5FzjK4k8biDW4mWHMYyRRjS2/iV1pJIB8=
X-Received: by 2002:a7b:c305:: with SMTP id k5mr1455562wmj.102.1604378451087; 
 Mon, 02 Nov 2020 20:40:51 -0800 (PST)
MIME-Version: 1.0
References: <20201102193402.GA14965@Sleakybeast>
 <20201102194055.GA2429929@kroah.com>
In-Reply-To: <20201102194055.GA2429929@kroah.com>
From: siddhant gupta <siddhantgupta416@gmail.com>
Date: Tue, 3 Nov 2020 10:10:39 +0530
Message-ID: <CA+imup-scsOiVghh9UyO=3SXFqj614dqJ-FjppF7hzzgz_D+Qw@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dma: Prefer Using BIT Macro instead of
 left shifting on 1.
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 Himadri Pandya <himadrispandya@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 3 Nov 2020 at 01:10, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Nov 03, 2020 at 01:04:02AM +0530, siddhant gupta(siddhant1223) wrote:
> >
> > Replace left shifting on 1 by a BIT macro to fix checkpatch warning.
> >
> > Signed-off-by: Siddhant Gupta <siddhantgupta416@gmail.com>
> >
> > ---
> >  drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > index 354536783e1c..a9e1a1b14035 100644
> > --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> > +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> > @@ -72,7 +72,7 @@
> >  #define HSDMA_GLO_TX_DMA             BIT(0)
> >
> >  #define HSDMA_BT_SIZE_16BYTES                (0 << HSDMA_GLO_BT_SHIFT)
> > -#define HSDMA_BT_SIZE_32BYTES                (1 << HSDMA_GLO_BT_SHIFT)
> > +#define HSDMA_BT_SIZE_32BYTES                BIT(HSDMA_GLO_BT_SHIFT)
> >  #define HSDMA_BT_SIZE_64BYTES                (2 << HSDMA_GLO_BT_SHIFT)
> >  #define HSDMA_BT_SIZE_128BYTES               (3 << HSDMA_GLO_BT_SHIFT)
>
> In looking at the code, does this change really make sense?
>
> (hint, I don't think so...)

Following Checkpatch, I thought it might be good to do as checkpatch said,
but the code looks better and more readable without the change. This
is my first patch and also a
lesson that i should not fix every checkpatch warnings. I'll pick
something better next time
Thanks for your comment
.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
