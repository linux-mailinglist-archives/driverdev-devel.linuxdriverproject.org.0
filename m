Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A240C29CDE0
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 05:42:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 73673869AC;
	Wed, 28 Oct 2020 04:42:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U0ZFj43CoJ_5; Wed, 28 Oct 2020 04:42:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6DD7D8692E;
	Wed, 28 Oct 2020 04:42:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33C051BF39C
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 04:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2986F8731A
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 04:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z1Tiru1W6uEa for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 04:42:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CF3987311
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 04:42:36 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id z5so5329921ejw.7
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 21:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+6fUclNsrtm5gMXmrEHSQ5gd6ZSjUYsqvc8uCaTtZP0=;
 b=fU9AFtJP9N9ZrEkU32WW+ZW2hKYhgxdDWveN+vqd0EA9koblqxwLbEL1SGmEJRjgbr
 A3OclRlUTb68Dr0/FZWDZP8u8/W9vYBAjQXLNsl4QN5NaDo279ETxSQ72fIkwo7lOw+m
 JBHli4x7ihkigeBqgyY6l2oeWmRE3yXwlWvyIiUkYPmxyLl7LgToDG0Tlleff8ZCQD+/
 giA0UimlRXh8AzOxecDoMDnFTjfPEFu92uteMrHOyGq60Y2UXDMoPQsPTmnNH5GpqF9T
 FgK+aRg6lASTLTqTFixV3a5kHSIZXUfi3hgpLRX+pOxOHyeNzovThMTEz3lBq8QeU0iN
 Dwsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+6fUclNsrtm5gMXmrEHSQ5gd6ZSjUYsqvc8uCaTtZP0=;
 b=J/YYAdEt80RYOezdy9cPPU0uFKbg2+30HPYTuaTblQgiRt+vvnX2c6J3F6AL2Ra/p7
 xDnYMULj8Dd/7bFrtm201W9E9Qxez4HLO26JiB5fV3y8VP6ezPGw/u4jc3RLIIFrcq2i
 bXrNMMhll1hmjJZZkthXt6hFTtQewWpoHmsOBhHAUzngx/cUSnt0IdZZd9lPKQo75I+M
 SPrUuKkkQMoShmEMZ3vrEB72LrIu3E5himWadHrn68vYoSbLqSpiNggfYpqPw6W1BXtf
 tAVmbz6ivtS9Qyk7wtCP37K1A1Wa5Myza7s/53u0qVIB7g8f+M715KQHXaiTWqExcAYQ
 hpKg==
X-Gm-Message-State: AOAM531+F/TRxIliEV53/hjCxe6Y0yGrH9KgNfzryZkcbSTsJqRz/0Gf
 KRtlbGzj1FshvHczzi4jM1w=
X-Google-Smtp-Source: ABdhPJx7nHQSeOffaFW7QGp1T0qmSUpnn1BwR3U0hx5uKJ38CFWJ/R5YTJQOq4Nu6fLxSIqc/y3Qhg==
X-Received: by 2002:a17:906:1804:: with SMTP id
 v4mr5876544eje.201.1603860154714; 
 Tue, 27 Oct 2020 21:42:34 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:b7fe:f700:14ec:85cd:eb33:2a5c])
 by smtp.gmail.com with ESMTPSA id v14sm2104156ejh.6.2020.10.27.21.42.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 21:42:34 -0700 (PDT)
Date: Wed, 28 Oct 2020 05:42:32 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8192e, rtl8192u: use correct notation to
 define pointer
Message-ID: <20201028044232.qtzsnrrh7xgdzsoc@ltop.local>
References: <20201026121435.GA782465@LEGION>
 <20201027112303.GA405023@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027112303.GA405023@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Muhammad Usama Anjum <musamaanjum@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 27, 2020 at 12:23:03PM +0100, Greg KH wrote:
> 
> Are you sure these changes are correct?  This isn't just a list of
> structures after this at the end of the structure?
> 
> Please look at commit 5979afa2c4d1 ("staging: Replace zero-length array
> with flexible-array member") which made most of these flexible arrays.
> 
> This is not a pointer, it really is an array, I think sparse is really
> wrong here, be careful.

Sparse's warning is not about changing the definition of this member
as if it was the argument of a function. It's about how can you use
an array of structure when this structure has a flexible member.
It's a recent warning, added purposely to catch this.
See https://lore.kernel.org/r/CAHk-=wgJZ05ap8VQdzWDWJVWVtZiOYTc6cnNB8gNeQzEnfm-tw@mail.gmail.com

-- Luc
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
