Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F6432FCE
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:39:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D1E39221B2;
	Mon,  3 Jun 2019 12:39:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MPulfOJj+iy3; Mon,  3 Jun 2019 12:39:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 72B96220EF;
	Mon,  3 Jun 2019 12:39:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3091BF4E6
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:39:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58793848FA
 for <devel@linuxdriverproject.org>; Mon,  3 Jun 2019 12:39:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UqV5B7OCnUTW for <devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:39:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 212AA847F8
 for <devel@driverdev.osuosl.org>; Mon,  3 Jun 2019 12:39:01 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id g18so254617qkl.3
 for <devel@driverdev.osuosl.org>; Mon, 03 Jun 2019 05:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2sjk4DZp0jJh29zFaVGsg/NLrYGXRIx+gqbhrU3b308=;
 b=iVkDnmDDGqSHgZxcBOe+dYlQE5rd/be+RMV2RdcIoK4e5tJzjN4k55g1bO+rzHOu7k
 s2lAepNzdqY1y+uoMgi/BS7YpdacEwf0DUS+aZ+OurOz8bb6o37SwSveDApm4eOXXAlO
 pvvEig5X2dEnLywT6q0JbWd6mPMFSTjfdvWhn5TMxDIac6yR9pyGgqupGReZvpmxomj7
 ECaR40FC3gcJn71H5GHh7ZPzypHcabUtmFgeOr35X+HDxet4lo1Kv58P4GbUwV5J4e5t
 se58zAweUHxenzdIVSAynpuww8gYjKG58UKfZTmY572jpl3r2QObZSiE68f8tuM0bE68
 fd3g==
X-Gm-Message-State: APjAAAX/9i6bPgSO830nZ5XdjqpHVOXlqLD1rNp0GPRfDO9flZ+fp9p5
 u8Bdp09ygfU8ziQQ0TtzjvTHR6JJ22xttI9TDvM=
X-Google-Smtp-Source: APXvYqwF3nCClTIJso5yc+GR6oQ5XHY5i09CBSNlMjWFJ2mRIJkxpz8C9hB6hMWWZsn1E19dNP9eBYoE5o1aKE2fpL4=
X-Received: by 2002:ae9:c106:: with SMTP id z6mr2626266qki.285.1559565540179; 
 Mon, 03 Jun 2019 05:39:00 -0700 (PDT)
MIME-Version: 1.0
References: <201906031939.e6qlcBmD%lkp@intel.com>
In-Reply-To: <201906031939.e6qlcBmD%lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 3 Jun 2019 14:38:43 +0200
Message-ID: <CAK8P3a16QW6et2v4AihnwuKgz7JaTUhR9tELknUechjLemwjGg@mail.gmail.com>
Subject: Re: [net-next:master 391/455] drivers/staging/isdn/avm/b1.c:163:49:
 sparse: sparse: incorrect type in argument 2 (different address spaces)
To: kbuild test robot <lkp@intel.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Networking <netdev@vger.kernel.org>, kbuild-all@01.org,
 gregkh <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 3, 2019 at 1:40 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Arnd,
>
> First bad commit (maybe != root cause):

Yep:

> >> drivers/staging/isdn/avm/b1.c:163:49: sparse: sparse: incorrect type in argument 2 (different address spaces) @@    expected void const [noderef] <asn:1> *from @@    got  const [noderef] <asn:1> *from @@
> >> drivers/staging/isdn/avm/b1.c:163:49: sparse:    expected void const [noderef] <asn:1> *from
> >> drivers/staging/isdn/avm/b1.c:163:49: sparse:    got unsigned char *[assigned] dp

I only moved the file, so the warnings are now for a different pathname.

I'll leave it for the staging driver crowd to fix them up, or ignore them as the
driver is on  its way out of the kernel.

     Arnd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
