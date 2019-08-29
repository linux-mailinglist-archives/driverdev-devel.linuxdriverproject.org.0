Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73091A274C
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 21:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3FC88938C;
	Thu, 29 Aug 2019 19:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuV4u3FEAi7h; Thu, 29 Aug 2019 19:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E7518933C;
	Thu, 29 Aug 2019 19:30:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D00211BF471
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 19:30:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C62478866F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 19:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tKabMNQTJYkB for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 19:30:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7962F885DB
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 19:30:43 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id k13so4963792qtm.12
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 12:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:user-agent:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=PHBiMQmUVz28Hd0px6+QdQ2QS/SD5yF5IycJ0vk3rnQ=;
 b=CcCjVInE6tr/YfESMZ/qf+EBEknG1VoEq53o6jx93gYc6HvyjOrLD/+H68DdR5fnDS
 djm79K9Oi3cKIVzFzjjt2mITg7EA5XJPscyiumkBTUogVUGFFRe9UdsZSnSL847Xn8Pj
 rNmjor0WHc5/sZMaoISQYU5ZxlF2AmMsOfOcA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:user-agent:in-reply-to:references
 :mime-version:content-transfer-encoding:subject:to:cc:from
 :message-id;
 bh=PHBiMQmUVz28Hd0px6+QdQ2QS/SD5yF5IycJ0vk3rnQ=;
 b=NVxmCOGCuD2PWwSd9q5iFW/7m1MJqWT4QGyNtTC07fN92CsS7/ZFigWzDikzGnEghR
 ziAWyd6B2xJuV4t4QGsv5v8JI9gEHry0PE5v+6fZsOPmdIAdjlSw4LHzu3eAl+fccjmC
 +RevmiRgVxHmO9Q3W6IARB493KjvHiDIoFL3/JZrp44f7d2frq715dtIwIOFEHFE0e8Q
 0IYtU1lliVeNho0quG8RS2T1r4NUPiK1061zj7vl0fzbYaE7zzySczKrGAitdHzf1pOv
 Kei9iHSIue3FU8WOGuTso20cObywxWO9s6RCjvPZe1JRCPWd5bQPkzHMJqbTL8+WgZb9
 1B8A==
X-Gm-Message-State: APjAAAWMuYK2SxPvZemmxXCMzfy9VhJB20k0WDuzCK++080Rqc60nyro
 BOe8nq/HPLYIZZo8CDe8JmjVlw==
X-Google-Smtp-Source: APXvYqyMp+ZGMSy0JYr3jnMPxQdfAgHwoet3wlf5bh40PdxAUu1IJ1iHGhD0mwj1MZdsruG+14T3pw==
X-Received: by 2002:ac8:1241:: with SMTP id g1mr11657678qtj.145.1567107042399; 
 Thu, 29 Aug 2019 12:30:42 -0700 (PDT)
Received: from [192.168.0.116] (c-73-216-90-110.hsd1.va.comcast.net.
 [73.216.90.110])
 by smtp.gmail.com with ESMTPSA id q42sm2314873qtc.52.2019.08.29.12.30.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 12:30:41 -0700 (PDT)
Date: Thu, 29 Aug 2019 15:30:38 -0400
User-Agent: K-9 Mail for Android
In-Reply-To: <20190829185901.GA4680@mark-All-Series>
References: <20190829054953.GA18328@mark-All-Series>
 <20190829064229.GA30423@kroah.com> <20190829135359.GB63638@google.com>
 <20190829152721.ttsyfwaeygmwmcu7@wittgenstein>
 <20190829185901.GA4680@mark-All-Series>
MIME-Version: 1.0
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
To: Peikan Tsai <peikantsai@gmail.com>,
 Christian Brauner <christian.brauner@ubuntu.com>
From: joel@joelfernandes.org
Message-ID: <009FE4FC-E1C2-43A4-AE75-A1FFE9A57356@joelfernandes.org>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 arve@android.com, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On August 29, 2019 2:59:01 PM EDT, Peikan Tsai <peikantsai@gmail.com> wrote:
>On Thu, Aug 29, 2019 at 05:27:22PM +0200, Christian Brauner wrote:
>> On Thu, Aug 29, 2019 at 09:53:59AM -0400, Joel Fernandes wrote:
>> > On Thu, Aug 29, 2019 at 08:42:29AM +0200, Greg KH wrote:
>> > > On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
>> > [snip] 
>> > > > The allocated size for each binder_thread is 512 bytes by
>kzalloc.
>> > > > Because the size of binder_thread is fixed and it's only 304
>bytes.
>> > > > It will save 208 bytes per binder_thread when use create a
>kmem_cache
>> > > > for the binder_thread.
>> > > 
>> > > Are you _sure_ it really will save that much memory?  You want to
>do
>> > > allocations based on a nice alignment for lots of good reasons,
>> > > especially for something that needs quick accesses.
>> > 
>> > Alignment can be done for slab allocations, kmem_cache_create()
>takes an
>> > align argument. I am not sure what the default alignment of objects
>is
>> > though (probably no default alignment). What is an optimal
>alignment in your
>> > view?
>> 
>> Probably SLAB_HWCACHE_ALIGN would make most sense.
>> 
>
>Agree. Thanks for yours comments and suggestions.
>I'll put SLAB_HWCACHE_ALIGN it in patch v2.
>
>> > 
>> > > Did you test your change on a system that relies on binder and
>find any
>> > > speed improvement or decrease, and any actual memory savings?
>> > > 
>> > > If so, can you post your results?
>> > 
>> > That's certainly worth it and I thought of asking for the same, but
>spoke too
>> > soon!
>> 
>> Yeah, it'd be interesting to see what difference this actually makes.
>
>> 
>> Christian
>
>I tested this change on an Android device(arm) with AOSP kernel 4.19
>and
>observed
>memory usage of binder_thread. But I didn't do binder benchmark yet.
>
>On my platform the memory usage of binder_thread reduce about 90 KB as
>the
>following result.
>        nr obj          obj size        total
>	before: 624             512             319488 bytes
>	after:  728             312             227136 bytes

And add this to the changelog as well. Curious- why is nrobj higher with the patch?

Please don't use my reviewed-by tag yet and I will review the new patch and provide tag separately.

Thank you.

-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
