Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B20D1355
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:56:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8FEC86A14;
	Wed,  9 Oct 2019 15:56:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tMyFpt71gD1; Wed,  9 Oct 2019 15:56:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D089386BE2;
	Wed,  9 Oct 2019 15:56:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CD7171BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:56:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9891231C8
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:56:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WpS+C9MgSzu6 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:56:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 9CB332314E
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:56:41 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m13so2997066ljj.11
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 08:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WFlHeCQkLJIGXl9Y3KrukrQID/Wna2DJQv+XBSRue9Y=;
 b=XSNQSZgTy/3vmdQhLFPTjXXYD6ObdqSRS6amglcHznGRfnkPseJTLpqG9mOCmXl20O
 yIHDn/sAzQOKTJcW92jhNrq38uA1AW8FAVMp/p+RDlfrBN4jSNPVGjVxOBCnDbl/9fqj
 QjQNcNQbugzH3odS4wlSIae/lZolrXDPU0cZgOqJvTvBAKVVPfzbZvyNNTEiRf6lTwwU
 E8jvNcw8MbQjm91OZL4ozM0rTDsPxu0yEFfUSHLkFsc8VwjVv5uY2+mcMpXAeidrfPSi
 ckhYDlIvrUpEaplYaM3oIpnshhIrYknkLUi3TStf4taJX64c439wzauU2hee+gtVbzf/
 Itxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WFlHeCQkLJIGXl9Y3KrukrQID/Wna2DJQv+XBSRue9Y=;
 b=j0/d/07v3OM8sV2fE0jVq12xVSpempf/bSP3GCXKFIFs/TsW5XkQ0cAYXggSeWsAig
 pCC59St9hfwOfya+VcJa7Pa5kRP7dsbYkduFo7ZQ8t+UAJOVQUqmEWEuiPJSa3Bviy+9
 TGHQ3N53WdoA+Can3jIqNLcQsxPI5d4lNnYysdlGt+xBIgez2K/8y6yNDkgBNcI1VDeW
 TDKfHPvWqt804Pxt7RdJdTswbEAuzrPyaQStIj6bR5JPkahKLqMtoJSeOZa516FW9ygt
 u1bBXzRLifNCP3EyQ2lYhVW8X6EPrXPNiDrJZDYmSl+UjEZr+9iag2YSf4OYTV+PgyYf
 I/yw==
X-Gm-Message-State: APjAAAV96m6m6st2kz8ZnKIu2ljYfvb2DaR1qeZtVuDymJHFE4u8Edje
 2pPHcE2Uw1UAXsyUpb2LTLAy9sFIw8skU1J/sPECbg==
X-Google-Smtp-Source: APXvYqwLxpC/TiGljRX1NvHEZ/6aqwkZ3/aGIm6AEuP60itEXeqeP/1veKDYHWpVrchgY89b5qCCjN0JGRYZm6lQc50=
X-Received: by 2002:a2e:6a04:: with SMTP id f4mr2924621ljc.186.1570636599381; 
 Wed, 09 Oct 2019 08:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
In-Reply-To: <20191009104011.rzfdvq7otkkj533m@wittgenstein>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 9 Oct 2019 08:56:28 -0700
Message-ID: <CAHRSSExAL3fQMP9x9p34qF8dnFKLSp7EzhZ7Y5y-qbzExCRo1w@mail.gmail.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Jann Horn <jannh@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 9, 2019 at 3:40 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:

[...]

> >
> > One more thought, this can be made dependent on CONFIG_BINDERFS since regular
> > binder devices cannot be unregistered AFAICS and as Jann said, the problem is
> > BINDERFS specific. That way we avoid the memcpy for _every_ transaction.
> > These can be thundering when Android starts up.
>
> Unless Todd sees this as a real performance problem I'm weary to
> introduce additional checking and record a pointer for non-binderfs and
> a memcpy() for binderfs devices. :)
>

I don't see this as a real problem. In practice, memcpy will be moving
< 10 bytes. Also, by the time this code is in an android device,
CONFIG_BINDERFS will always be enabled since this is how we are
removing binder's use of debugfs. So a micro-optimization of the
!BINDERFS case will not be meaningful.

[...]
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
