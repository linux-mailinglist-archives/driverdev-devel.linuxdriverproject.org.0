Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EAFB3637F9
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Apr 2021 23:59:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21D1D835B9;
	Sun, 18 Apr 2021 21:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AyUKY_9TluKq; Sun, 18 Apr 2021 21:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 906E98350D;
	Sun, 18 Apr 2021 21:59:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 913B41BF239
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 21:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7EFE1834D5
 for <devel@linuxdriverproject.org>; Sun, 18 Apr 2021 21:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwv_yyrz9oJm for <devel@linuxdriverproject.org>;
 Sun, 18 Apr 2021 21:59:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com
 [IPv6:2a00:1450:4864:20::52b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 593AC82EA5
 for <devel@driverdev.osuosl.org>; Sun, 18 Apr 2021 21:59:34 +0000 (UTC)
Received: by mail-ed1-x52b.google.com with SMTP id d21so18278860edv.9
 for <devel@driverdev.osuosl.org>; Sun, 18 Apr 2021 14:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zKhJxm1RSdj8QfjnKVIMLcDr9NABki4J6DO4XgQvnMc=;
 b=tPPwU9QmEIPjKzQfcYtm/aJ23QFtTBmpvzGfc0Cg50xfNQAbJ/xwlJ9f2d8VSx73bm
 Q3SNZfiaWG+zaYzEinuzoPIPEmLASHZFMfmit2snw+7p/ycucTz1a833PZu06ANqu+Li
 8F0PE03OgHMm4gijvomdQ+fx1gh4Wc2vnEST6yuNx76HShMdw+XrZxZSP3rrZtlwpYpv
 YyDuu9iw6yDe4vyNjUHYCp5WFwUX59yn1TeN5uJJze4h9NbhPUX+NytPRoWKim32BIrf
 A4lV/Cs+0CKiRUXx3qa+G+Zxbc1RP+BH70cbwIlpUdEKl+5n40sp+2WqLZQSdurhUcdH
 ipIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zKhJxm1RSdj8QfjnKVIMLcDr9NABki4J6DO4XgQvnMc=;
 b=qnexS86k5JygDRgOIrvkGkoR/hc5eU6srozXI5Oxh3rJ6oxatz3t/mQOR/P+gV9cEA
 kki1zPQ4HpdtDRTHtMzriZGtIB7QKGG2JYjZ5skezDkffv6DRGrtCH1rTAxwwlAtYvvn
 oWOrohfUYGoy2gdspK/P/uvf6FgfuSxbK6JCEx2NsyB/NAcGR5Y8Q5qsC5kkp7p442AE
 GP8FHqvxzUzo1x3gQzlLbtARzQDU9MWnJMRHtmOrIW7Xy0yDm6f94i0KMgKAT70NfjcD
 GUaFVfBXkdehoEhzn1y8C+YeMKBAcfqBqcI5HUcx94FkBmxngSXLAdSMqe4JKoxRK2H2
 HIPw==
X-Gm-Message-State: AOAM531jzNT4Z5KpglHqP9+2wgLJ8RMGJPhuGfcXlHiyqniiWGFR6RdM
 GDgkLuEpOJ+hWdZhGCVNEPc=
X-Google-Smtp-Source: ABdhPJyK9/bLfOB9mpmfDRd9zVLyp67oBp66w/qW+CP3pZFPq58B/Au4BGVVrizvJJFeubWF3ieshQ==
X-Received: by 2002:a50:ec83:: with SMTP id e3mr17225703edr.113.1618783172532; 
 Sun, 18 Apr 2021 14:59:32 -0700 (PDT)
Received: from mail ([2a02:a03f:b7fe:f700:7ce8:97a5:cad6:876])
 by smtp.gmail.com with ESMTPSA id l1sm11302084edt.59.2021.04.18.14.59.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Apr 2021 14:59:31 -0700 (PDT)
Date: Sun, 18 Apr 2021 23:59:31 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: David Laight <David.Laight@aculab.com>
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210418215931.kbgme42kgnpqbwn4@mail>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
 <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Ashish Kalra <eashishkalra@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 'Mauro Carvalho Chehab' <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 17, 2021 at 09:31:32PM +0000, David Laight wrote:
> > > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > > for this file.  Logical and bitwise OR are basically the same in this
> > > context so it doesn't cause a runtime bug.  But let's change it to
> > > logical OR to make it cleaner and silence the Sparse warning.
> 
> The old code is very likely to by slightly more efficient.
> 
> It may not matter here, but it might in a really hot path.
> 
> Since !x | !y and !x || !y always have the same value
> why is sparse complaining at all.

They both will have the same value here and any half-decent
compiler know that and thus generate the same code, so no
worries about efficiency.

Sparse complains because the programmer's intention is not clear.
Was a boolean context or a bitwise context that was meant?
Maybe '||' was meant and the RHS had to be short cut?
Maybe what was meant was '~x | ~y'?

-- Luc
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
