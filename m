Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E76ED6895
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Oct 2019 19:38:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7F148226C2;
	Mon, 14 Oct 2019 17:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5bpaU+2DIY5; Mon, 14 Oct 2019 17:38:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 615C42262E;
	Mon, 14 Oct 2019 17:38:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1161BF280
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 17:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 778BB226C2
 for <devel@linuxdriverproject.org>; Mon, 14 Oct 2019 17:38:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j8AldmYWt90j for <devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 17:38:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 449692000A
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 17:38:03 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id w144so14422844oia.6
 for <devel@driverdev.osuosl.org>; Mon, 14 Oct 2019 10:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QSCO5aB2fA+02qEUEaBs4WEazb7/tnATGJJwnHFP2CY=;
 b=snBxDpYBkjPomhnffO2N88geBv6vgoB9wKs2Yu2t62CUJb0JWltYMS6AaF4WKv/NlB
 bLY6NAVQMq1lkCZPK3JKlFYPciGoE2cW/Qx8fbOFeI8HOrJtlgl3g4GSJLAGrRQ0zliB
 y7XfpND078dDkIKkQmM05NgKIQYQTHUonOhrDjy70Rwn1wGzOb4gn5gdhxpD/DrIDAOX
 UAyTRjasN9llYMhvUu+3xjF3E5Vkl3HkJ9lVC44s0rfPNVNPt1fqHyC5T3flTuk2nIKC
 wEo3r9449VLdpTdbOp9NpQ+N4KSwh0KVpmpiQB+VxUT7ncoubTL7ejieKOnBbdEQem50
 1zBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QSCO5aB2fA+02qEUEaBs4WEazb7/tnATGJJwnHFP2CY=;
 b=jBevBO0zS93AQ11wUln8FGFbuZHGaaQpjppr0UpSIvdBL/UgipcXwfTMaG2kHEPmTj
 hn1UovCES3HIXmYgaGHCn3BGYTfSYZgNJ/YbOXcF1z+9txGtHrWjWLK9ExF2xl+9QRN0
 96zD/OwSRch702aSlpr1Wjnnk/FK6EYaC14tVQ+I87OTcFwuVnfgKASr0xWSThCsFEq0
 4NKkI52fW4EO/802fLzukwJxwOtXfg6VhBA6n8mzHGafmpIqS5wPkCm3Ic2rivl8Q+ys
 97dnJE5dJN+hwtZo81SwYGliDFCGAD/M28udJaFdOxeHjv+EJHWUxodQRgwHRfbhcR5J
 YDSw==
X-Gm-Message-State: APjAAAUfheHkIvc/aQFP/4DhdGDbPbQTd5QdHaOnWW/GjP68otXBfPrI
 ABIbGAKXxBFHG7FthkPVw08wi80vMQZ9FMB9hSo7nw==
X-Google-Smtp-Source: APXvYqztx76pi31dpiCrP7KHa3pI9SHJTfDuzi9ExMRTPyT4Eeto/zDYD3BIljiOAlRPGJD1fyGVBZ5ggSkrm3My2vg=
X-Received: by 2002:aca:f403:: with SMTP id s3mr25678430oih.23.1571074681984; 
 Mon, 14 Oct 2019 10:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190715191804.112933-1-hridya@google.com>
 <CAG48ez0dSd4q06YXOnkzmM8BkfQGTtYE6j60_YRdC5fmrTm8jw@mail.gmail.com>
 <CAG48ez2ez1bb=3o3h1KSahPU6QcdXhbh=Z2aX4Mte24H4901_g@mail.gmail.com>
In-Reply-To: <CAG48ez2ez1bb=3o3h1KSahPU6QcdXhbh=Z2aX4Mte24H4901_g@mail.gmail.com>
From: Hridya Valsaraju <hridya@google.com>
Date: Mon, 14 Oct 2019 10:37:25 -0700
Message-ID: <CA+wgaPNPSOzEf-p8wsorqGe=eEbhFLkW6gYfYP1MaCqhQBvrnw@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent transactions to context manager from its
 own process.
To: Jann Horn <jannh@google.com>
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
 kernel-team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 11, 2019 at 3:11 PM Jann Horn <jannh@google.com> wrote:
>
> On Fri, Oct 11, 2019 at 11:59 PM Jann Horn <jannh@google.com> wrote:
> > (I think you could also let A receive a handle
> > to itself and then transact with itself, but I haven't tested that.)
>
> Ignore this sentence, that's obviously wrong because same-binder_proc
> nodes will always show up as a binder, not a handle.

Thank you for the email and steps to reproduce the issue Jann. I need
some time to take a look at the same and I will get back to you once I
understand it and hopefully have a fix. We do want to disallow
same-process transactions. Here is a little bit more of context for
the patch: https://lkml.org/lkml/2018/3/28/173
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
