Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 032B1251DF
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 16:24:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 420972670B;
	Tue, 21 May 2019 14:24:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I0SrrxvYX6iN; Tue, 21 May 2019 14:24:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3BB125F62;
	Tue, 21 May 2019 14:24:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6A021BF4E2
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:24:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A274F227FF
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 14:24:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z3jwfNbyzFzQ for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 14:24:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by silver.osuosl.org (Postfix) with ESMTPS id E7F581FB6B
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 14:24:17 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id 66so16536243otq.0
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 07:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUxrnziin1x574uzkZypKzeIsKwDlwnDKF5aI5CN+oY=;
 b=RjMJS+dXsEtXak9tMSuGKKjN8TDKmWL/9t8Scn9r4N8yeEi/CIK1rXNHcjotaVvmPt
 YMXpfqNpx3rLn9mRyX8HUiUZ8FGmdh54swFrIDxpcEFeTDmCw1qux50YA+ZI3q0sqt59
 Ujy9PcWSIVElJ81LQsblcYdqwyaXoNByVQyGX5Z0En5eMt50rUYqpK2JUecUoTelXS/8
 Tu6Os+3ETx9iqmTm5V+7hnF61DMulmdNMtJLYSUrxt0i+OwEG+7XKqXRlZSmPEml/o3J
 /JWpv6FkN4f7C2GVf/evBSKVrOPBjKQna43Qy56EhDjw/8Phro4Ke14GShklE6Z5Csv9
 s+MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUxrnziin1x574uzkZypKzeIsKwDlwnDKF5aI5CN+oY=;
 b=tiMXulr5+IniHUkUmtkuMczWDK76dhCYDDW+8cifj+bTyIdSRdeUC20yQ+01W2zOju
 TDNBHY5CMnANCsI8+yzvfYzRvFHu3DbAr0Gd7kur6h9TR91PEsJR2SSmbQOUl2ykqsRX
 fVLNscsiK0U+xcS8FvNETsOTW0tZHHHUVvi9J5Fa2rjezZq2wmOuz5D5N1yZXwlgMZII
 VUAzH4R8QT80bWRvj5/0KD9wE41yQqpLa4hb0fn5JDjbSFZsvmOnO6dIMLjytJRuVHxQ
 eg3I4nUe3P/C7JMBz0n1L5pDN8U10xMFVpU1PVFyJQg5FS1/gNIS1aTWIg926vVz2Qap
 EbYw==
X-Gm-Message-State: APjAAAUY/rA7Lx3ppw3x6n7QZMFJuscJ0VXp7SdtFlK1rqfHkkFRtZXM
 UxmQjewmMFJjOzthpa2aCqCTc/04hCBRNcgg4aI=
X-Google-Smtp-Source: APXvYqz3MAWNZRXh3jlLxFwfO58pZuC74XzewO5pp/vp/5H38msqNuUfMqTdLt7EdPg7pW6ThTlL4Hmkxrcv9TvPf0g=
X-Received: by 2002:a9d:12f2:: with SMTP id
 g105mr33996649otg.116.1558448657107; 
 Tue, 21 May 2019 07:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <1558115396-3244-1-git-send-email-oscargomezf@gmail.com>
 <CAGngYiVNQrr2nKfGCdi8FzS5UnmGaDj_Gu_F0ZeOTMKX6_1Zuw@mail.gmail.com>
 <20190521141715.GA25603@kroah.com>
In-Reply-To: <20190521141715.GA25603@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 21 May 2019 10:24:05 -0400
Message-ID: <CAGngYiUxd15xVkcbFm4cC+0a+UU+VODTKC0z4p=NoW+pTXoYzA@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: solve warning incorrect type dev_core.c
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
Cc: devel@driverdev.osuosl.org, Oscar Gomez Fuente <oscargomezf@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:17 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
>
> Greg already took this patch a while ago :)
>

Thanks for bringing that up Greg, I'll double-check your tree next time.

Oscar, please ignore the v3 patch I posted.

Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
