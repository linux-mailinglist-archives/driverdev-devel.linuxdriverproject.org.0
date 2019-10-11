Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0662D4A37
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Oct 2019 00:11:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 418B525C9B;
	Fri, 11 Oct 2019 22:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NGl+JBdYeEK4; Fri, 11 Oct 2019 22:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E78D02046F;
	Fri, 11 Oct 2019 22:11:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD3FB1BF315
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 22:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9E6C85C1D
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 22:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AyX5zHd-HVg1 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 22:11:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8D76781A69
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 22:11:35 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id k9so9294214oib.7
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 15:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iYAYC3wS5kKgW3tJiDPUFQyWjg/Hppq/ySaf6EhAiPM=;
 b=NtE/nU2k1zFWLS8Z4FDgsjYbX5WCZ1ArXUPUCPvpWV8kwc3Dh7NQ7req7s1attiFtP
 b0qhInWtI3gB+KYBMIPR+WGpEqpCAYvqUduOs2NcQLIyG32CJ36fZXgDO3nv0OKQxhiF
 D3iuM1mIQiITP0fwnHdSpg1rfXsR0RJmvmioSlsrfQ/oOz+T8y1y2pp/PAE4KpeNjLM7
 wMAXjp+nPX3q2tJQ0GgWG/R/9ACmwDTDo3o6Bepti2xnthNrpeSksnTVn9MOWwC8b5NT
 2FpmXC7KnJ+izV1W9YfFAFHWY1vRy7YTKsQHFuwpnrP8M9SNN4WPKSVFTOoE9VbCnvzR
 sFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iYAYC3wS5kKgW3tJiDPUFQyWjg/Hppq/ySaf6EhAiPM=;
 b=huohlcMEBBIC/JJZADM95JCCGCuLpSF3NFqlh0IOPDQ3+LX2U5HjKwd8SuLJhEyB93
 X2jf/BwJjpP+0wLL06ChTYCchsKmzJ1vnGdUBBNIgaFYlOjF4fkrlOgOj1c8jfseJ90S
 Iezgabz5u/T7dvinfdp5KpHgrBUXoAXynxwiVILu9sxovRG0j7srkfKelGdtNxWWeHF1
 GRYIZ5wpdDRoQZLEhZx4inNla644oUsVTRIJ23b0KyDLcK5ad5D9Ba0I9e4D3XZPDgPv
 fB3LljmaFgKcPRbYaOSi7Is8W3spXka/NbxOswPsoSmgkYCRMOIrXghp4N8ZW8Prle/I
 ugGA==
X-Gm-Message-State: APjAAAWk9sZZo8V/YznK8RMMX5c7uf22PdxAUueBcOiaftUyjPKs5aSU
 Wri1gad4yEgrIKejI3bp+Zr51jclrF3BOiTD3IgxCw==
X-Google-Smtp-Source: APXvYqw57ERR6jnxHxAcPEFRpId1CnpeEXFS8Ct4nKyEDiRjVs5RN2xj9/cw9gxKlH7YLTtxPz9545qZlVs3A5XrOJw=
X-Received: by 2002:aca:cd4d:: with SMTP id d74mr14539387oig.157.1570831894397; 
 Fri, 11 Oct 2019 15:11:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190715191804.112933-1-hridya@google.com>
 <CAG48ez0dSd4q06YXOnkzmM8BkfQGTtYE6j60_YRdC5fmrTm8jw@mail.gmail.com>
In-Reply-To: <CAG48ez0dSd4q06YXOnkzmM8BkfQGTtYE6j60_YRdC5fmrTm8jw@mail.gmail.com>
From: Jann Horn <jannh@google.com>
Date: Sat, 12 Oct 2019 00:11:08 +0200
Message-ID: <CAG48ez2ez1bb=3o3h1KSahPU6QcdXhbh=Z2aX4Mte24H4901_g@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent transactions to context manager from its
 own process.
To: Hridya Valsaraju <hridya@google.com>, Todd Kjos <tkjos@android.com>
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
 kernel-team <kernel-team@android.com>,
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

On Fri, Oct 11, 2019 at 11:59 PM Jann Horn <jannh@google.com> wrote:
> (I think you could also let A receive a handle
> to itself and then transact with itself, but I haven't tested that.)

Ignore this sentence, that's obviously wrong because same-binder_proc
nodes will always show up as a binder, not a handle.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
