Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D46F270E6
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 22:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F29D030EC8;
	Wed, 22 May 2019 20:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U+VvkSPb3Pok; Wed, 22 May 2019 20:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 826F630E31;
	Wed, 22 May 2019 20:39:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 509071BF271
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 20:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4CF4D30E31
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 20:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nt3HalOAUgH for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 20:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id E793830DDB
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 20:39:27 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id w37so5682475edw.4
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 13:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5+9nllOgOqGcyGmrfvDcUmSOWrC8yFHggzrCe9UTYtE=;
 b=bAeFcgUdf/5ML1E/MzzENtD5awT0MWiwgoQceHkJe6ahA/Fh2TvIRjjnOWkk2U9x7U
 jFutO3QG2OzVXpVsN3gfeFQq2EYaRFrvgdb+8L4zNudZ/VZlkhKlu97/IA7kE/Uqlxjr
 kkyuVrQ5PUTdtwGfH8LQs9b25v6q66tFD5jDwAVSGbEJ+ydXeBuHz/RdEdRUCTu0K49b
 5F5e4cXTEz4zXk870+4pyKlTkr/ouldN08tNKlbYssamZRjcIt4uniIkuByd1KJxu/yB
 X/MIDLxXzYirAb9vrQ7Pik/dbmE3Rgjf+LXpBiksEmsCs2sdGfi6d6B23L7siLv9iEv9
 M8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5+9nllOgOqGcyGmrfvDcUmSOWrC8yFHggzrCe9UTYtE=;
 b=R1JDW0EsGFsV1pl2mydRE7SvnrvpcdukaRHyvfjto0AZUNdt1q+CciOKmCjcMsXflV
 G8yqFZTKIxPz1ZPQKnt7B3cln9lngDlRrq/6cy2HN4e8CE4Z3mDWiPgUgh4L5yzI9UtQ
 qLS78+r0pJDEkfZh/hCAEdx8CIiBB/CbsZ8w3ANKi4GEfnlKVPDbPOoMvEhtbCtQL6Wa
 bkFBNq+NW2ZsOnnJoLTrWNFBJPJ+dgvhCBSo8vy1nNWhbY/vXQzveJATsErBCps+/DwY
 Fg8ufJFeXKsc/IGonR9r9s+MJ7LaOy/nLgzDgh6XFtx6EKJ4ZsRwCqoGCI7nHvMgYdBa
 Y7JA==
X-Gm-Message-State: APjAAAXHc87YSY2tAsPgp836sXn0TuL3IMeju7YdhD6OhxJesM63zg9p
 DXGQ9LYoP/X+yEI8ct4CdTo=
X-Google-Smtp-Source: APXvYqwdcYbffM8j3NtaUcd13nLdkMEMPS+kUm87hN0wNkX7ubA9YLhqMepwGFh4egh4KeMKQF+uJQ==
X-Received: by 2002:a17:906:2518:: with SMTP id
 i24mr61244810ejb.169.1558557566207; 
 Wed, 22 May 2019 13:39:26 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id v16sm7360487edm.56.2019.05.22.13.39.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 22 May 2019 13:39:25 -0700 (PDT)
Date: Wed, 22 May 2019 13:39:23 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: rtl8192u: Remove an unnecessary NULL check
Message-ID: <20190522203923.GA95273@archlinux-epyc>
References: <20190521174221.124459-1-natechancellor@gmail.com>
 <20190522070418.GP31203@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522070418.GP31203@kadam>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 John Whitmore <johnfwhitmore@gmail.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 22, 2019 at 10:04:18AM +0300, Dan Carpenter wrote:
> On Tue, May 21, 2019 at 10:42:21AM -0700, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:2663:47: warning:
> > address of array 'param->u.wpa_ie.data' will always evaluate to 'true'
> > [-Wpointer-bool-conversion]
> >             (param->u.wpa_ie.len && !param->u.wpa_ie.data))
> >                                     ~~~~~~~~~~~~~~~~~^~~~
> > 
> > This was exposed by commit deabe03523a7 ("Staging: rtl8192u: ieee80211:
> > Use !x in place of NULL comparisons") because we disable the warning
> > that would have pointed out the comparison against NULL is also false:
> > 
> 
> Heh.  Weird.  Why would people disable one and not the other?
> 
> regards,
> dan carpenter
> 

-Wtautological-compare has a lot of different sub-warnings under it,
one of which is the one shown. -Wno-tautological-compare turns off all
of those other sub-warnings. The reason that was done is there are quite
a few of them:

https://gist.github.com/nathanchance/3336adc6e796b57eadd53b106b96c569

https://clang.llvm.org/docs/DiagnosticsReference.html#wtautological-compare

It is probably worth looking into turning that on, I'm going to try to
do that as I have time.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
