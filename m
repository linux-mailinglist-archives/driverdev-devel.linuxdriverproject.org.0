Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E6B3B5
	for <lists+driverdev-devel@lfdr.de>; Sat, 27 Apr 2019 16:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A222E2291B;
	Sat, 27 Apr 2019 14:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h1NJ1c2BPX1m; Sat, 27 Apr 2019 14:14:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E9EA8228BA;
	Sat, 27 Apr 2019 14:14:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F69D1BF340
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 14:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 69C3D857A4
 for <devel@linuxdriverproject.org>; Sat, 27 Apr 2019 14:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1o3UKEesGaVL for <devel@linuxdriverproject.org>;
 Sat, 27 Apr 2019 14:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 75E2C8575A
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 14:14:46 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id g24so468711otq.2
 for <devel@driverdev.osuosl.org>; Sat, 27 Apr 2019 07:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fNJmGKbv36s3sMlqGpxows0ZUIacXcPpEBALYAGUe/Y=;
 b=jdh6WW5fZa0BSmUAfpt5gppjYPJC/lPFo0HvEw9/IRuKGWuv7V97rcx6eu2yw48MKt
 ikDwjTMWg/ftRINw4uUiIx6ESwWi055wr6nXzWtuObnmffMIFX0bRr8Bd0S28PtgPAk1
 7NnU8hStFZaHyqPkcNOShf7gSaXIvSBGnzdEfzw+L2P3X0o1CVoyjkAf2JdPEN/vAD94
 I8ULa6x3tn0+jiIONZtDm2zWdCa7jg/d4/jdXXoEyAabDoZIyjH/XAzXrASsmw6OAs5G
 kMul83Ct7GlK/orI/l2FQLDZEpXMQwwdfKcNPCqLdDWdXjfM9XTWgo04EcKVx0tSs0ok
 IR0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fNJmGKbv36s3sMlqGpxows0ZUIacXcPpEBALYAGUe/Y=;
 b=KpdB715iMITibEnPEKMbhLZtSzjQeSqf6P6Npj3O3HQ+S/amfrqpCWYOAQCMa1IUO3
 oIMOHrsd5X0uk7YbelCDv9gB0VxaGBbcMxy99RRPXGL3NPgJhOghcDShbORyMau46rqN
 1AP8NvglHFpa2mFFqFutbA6pZFyzcRxkv7eLD1Ezt8tpp+26fTyF5guF1tyEka3eNmi8
 flMP0yDqzLwZpRw2fcujIBPH6XyTxjYmcVl4L5CX59KJzP58JCAP7aNpNulsPw5lJDtY
 CcR/2hmJkgZ+zh5bDUUnQrm0UVcqR3Cl8ubs0oaYG7T1G6pXTZnNzRph1jASuE3YTJ6k
 OU3Q==
X-Gm-Message-State: APjAAAU3B2Uhm3HZ4PIAaDdpwjWAGGR83+UEo8Atv5iGf5N8jN1YTFqm
 TXYE/wL7LoH92DGxMtwMwiP7I6MrqJh54JpDsCg=
X-Google-Smtp-Source: APXvYqxkImR+uL6ynwmODFrvJPQgKvcJlSeetJ+/1qZDSYG6jnKoglmkofm3yF3nHlxxZh3++2BbiWykhSBjuHZvxaI=
X-Received: by 2002:a9d:6318:: with SMTP id q24mr18403400otk.95.1556374485344; 
 Sat, 27 Apr 2019 07:14:45 -0700 (PDT)
MIME-Version: 1.0
References: <1556339208-7722-1-git-send-email-hofrat@osadl.org>
 <CAGngYiXBrNu7Jrk535=L89-mOSNx-6EfqL=1EwwG49Sf44R0Vg@mail.gmail.com>
 <20190427070021.GA2290@osadl.at>
 <CAGngYiX-s6dCc5focdXW5WYaiWiBF=dzacqFjSvXggvdxD3zAQ@mail.gmail.com>
 <20190427111748.GA3157@osadl.at>
In-Reply-To: <20190427111748.GA3157@osadl.at>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Sat, 27 Apr 2019 10:14:32 -0400
Message-ID: <CAGngYiV3YCDqD7c4qcc3hyBM2wV05Sk54_ROZckf5S4SLXSbvA@mail.gmail.com>
Subject: Re: [PATCH RFC] staging: fieldbus: anybus-s: use proper type for
 wait_for_completion_timeout
To: Nicholas Mc Guire <der.herr@hofr.at>
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 27, 2019 at 7:18 AM Nicholas Mc Guire <der.herr@hofr.at> wrote:
>
> so the issue is simply that the endiannes anotatoin is missing even
> though the conversion is being done - with other words there is no code
> lvel funcitonal bug here but rather sparse needs the anotation to verify
> correctness and that is missing. Just want to make sure I understand
> this before I try to "fix" a sparse warning.

Correct.

Thanks,
Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
