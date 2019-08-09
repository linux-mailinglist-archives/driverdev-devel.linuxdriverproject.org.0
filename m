Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B81883AB
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 22:08:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D049122D2D;
	Fri,  9 Aug 2019 20:08:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bViqgY8VI4n6; Fri,  9 Aug 2019 20:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A15B22BCC;
	Fri,  9 Aug 2019 20:08:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2506A1BF2B5
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 20:08:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 21B0487813
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 20:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id er5Vnmi-8bLm for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 20:08:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6030687746
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 20:08:38 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id d17so137359738oth.5
 for <devel@driverdev.osuosl.org>; Fri, 09 Aug 2019 13:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bK7KxUzVsn8VTJ+Hf3wxQB3YMP5WkwuYdnj8VxgnBSE=;
 b=icVRSXJ8l3gDBm5+KYdytP97B5LamsZL9GMxcIs4Y1k3glZqs/6mIq2T9/cDkslS/M
 LLMPBAk0Puq6bECPCbYsNCYP6srkhQ2v2hYqXOl1KKvdLQnP3CWC0EqbAeT39Xthu+MO
 4Xqh+ECX+M3ps31nU2QA64d6Obf4vsTKQYqdo/PGEP4sDjK+F1kdD8ivG0dvB0Vr04er
 GaDXu9ph/EdDe6hiwp+1hzzvc0Aw1mhzvgpIzJUsu9xNX+mNM2TzxRci5HEwu5nMxX3m
 p4qCEn3Nm8mFBxTqYSPOeWGhvgx/gYCwIXiAdgdNTqDhKIgwY/M/qeqv3mC9Poyr0tOM
 Vm4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bK7KxUzVsn8VTJ+Hf3wxQB3YMP5WkwuYdnj8VxgnBSE=;
 b=CchyCC3OcNgQYfmWuuEoATj4p3QZPtYIB2EcTMaRdN3Ze9Doc2Zh1n3ZluiKJ1Hojq
 fmJnS45FmLSM8H1baHZi6/WLVmRnsR6QlaIJ3cxrsWeaEG+U2A0EvQeJQ72Rbyrlc0FQ
 X7FJdfSlxB0F85kZJt+dmGc5SL4+wbxKRCu3BtNhSLsb+f08+7qZSNY4IyU8pt8tTkoz
 M7fQtNSGBZtbHsh7IxGoRQbZlNJyKBbogCut6I3E4wggIG0ghI6BGQyTVmPJaM0rQOOa
 eYNtuBb93PC0BdMtwYC3HZUO96z5n9Vb5WFQgMrMGzxX1Y5NR7mGh08KWU+qUCn+xPRt
 gRWQ==
X-Gm-Message-State: APjAAAUlpf+BrYe6miP++IxthTSKwM33Uffc4Zm6DUWE2G+Ck7YdDJHo
 G0NCuIs4sC+LHvvloRwAjEjiMShLmhB4m8NmAIKqdw==
X-Google-Smtp-Source: APXvYqww2xFRM10n5D7e4RwxGnvUBVisuszGhFTmaJYbJF8aWwP1GvcI7JkaufQUg2xZQgUI03lQUoHetkTrSfSFcBo=
X-Received: by 2002:aca:5a04:: with SMTP id o4mr1089820oib.36.1565381317080;
 Fri, 09 Aug 2019 13:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190808222727.132744-1-hridya@google.com>
 <20190808222727.132744-2-hridya@google.com>
 <20190809145016.GB16262@kroah.com>
 <20190809182216.5xzx6tss6fh42mso@wittgenstein>
In-Reply-To: <20190809182216.5xzx6tss6fh42mso@wittgenstein>
From: Hridya Valsaraju <hridya@google.com>
Date: Fri, 9 Aug 2019 13:08:01 -0700
Message-ID: <CA+wgaPNjfvcVvcDB9ZBWupLegHchZ3AxYibBV8BPFE9SrPymtg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] binder: Add default binder devices through
 binderfs when configured
To: Christian Brauner <christian.brauner@ubuntu.com>
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 9, 2019 at 11:22 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Fri, Aug 09, 2019 at 04:50:16PM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Aug 08, 2019 at 03:27:25PM -0700, Hridya Valsaraju wrote:
> > > Currently, since each binderfs instance needs its own
> > > private binder devices, every time a binderfs instance is
> > > mounted, all the default binder devices need to be created
> > > via the BINDER_CTL_ADD IOCTL.
> >
> > Wasn't that a design goal of binderfs?
>
> Sure, but if you solely rely binderfs to be used to provide binder
> devices having them pre-created on each mount makes quite some sense,
> imho.
>
> >
> > > This patch aims to
> > > add a solution to automatically create the default binder
> > > devices for each binderfs instance that gets mounted.
> > > To achieve this goal, when CONFIG_ANDROID_BINDERFS is set,
> > > the default binder devices specified by CONFIG_ANDROID_BINDER_DEVICES
> > > are created in each binderfs instance instead of global devices
> > > being created by the binder driver.
> >
> > This is going to change how things work today, what is going to break
> > because of this change?
> >
> > I don't object to this, except for the worry of changing the default
> > behavior.
>
> This is something that Hridya and Todd can speak better to given that
> they suggested this change. :)
> From my perspective, binderfs binder devices and the regular binder
> driver are mostly used mutually exclusive in practice atm so that this
> change has little chance of breaking anyone.

As Christian says, we do not anticipate the change to break any
existing use cases since binderfs binder devices and regular binder
devices are generally not used simultaneously. Hopefully, there are
not a lot of unusual use cases since binderfs itself is relatively new
as well :)


>
> Now I really need to go back to vacation time - which I suck at
> apparently. :)
>
> Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
