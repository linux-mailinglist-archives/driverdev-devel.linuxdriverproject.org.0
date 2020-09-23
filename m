Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D1276282
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 22:51:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9840D87045;
	Wed, 23 Sep 2020 20:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ugtPL+a+OQV; Wed, 23 Sep 2020 20:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0927486A14;
	Wed, 23 Sep 2020 20:51:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F39C01BF3EC
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 20:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F053786444
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 20:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IFWtGbgfJcCz for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 20:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B86B8354A
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 20:51:31 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id y1so449121pgk.8
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 13:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=5mYY1/QZ9bbfssPpUK5rLFj8T1wdt6FSex8pFDqPFDg=;
 b=Tq3pXhsBwLTidCxt7eYgud1yh+5MqYuMhaI39IMz3JyERa9Wzc4BDZQpPH91Gjbv+Q
 /JB/JLSWgKcFhfoDMM124/uPD+DhDxUdQb9lHyizVgJlLtcHDq2SmlEVwm58lJnekeLR
 IkXxVlMIcAIqu33TqWQHXtY710l5q8/AZLB8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5mYY1/QZ9bbfssPpUK5rLFj8T1wdt6FSex8pFDqPFDg=;
 b=LFBVCHNENayO/NV7aPhvZmyUrpiU1I7hk3k0mjoIvtdzz1WTs5YvekdajEBR0Mrzno
 twEoMcS/DK+V1GiZQpn6BQ0yhRN2fiyOpNYcGtbRml5tOb+Gah5TEsRnqfWessnxH1uR
 xNHewkppxfGNxNo0kcGXr7TEDBIRPKMjsyWQgrIbATTk+2a/QDp2vmrg0ZuKszOxSJ8K
 EANBt/fdHkIP5ALg2ncPXIknms3i/RikXjHr9AtLEvJbDigvkecUV71A8BJOC1Oykthb
 nf/4iXg2RlDc7WXm3+zpZCV4nFUFr+H1b2QD+UXSI3B6MOu4954cy5EhomO/GN1OMUcp
 8ARg==
X-Gm-Message-State: AOAM531rv54X7lz+Yl5VmNlBy+HfOXlZRyu7zJlEQhqIyUZKto3Aufbu
 FHu2fYK2/hjCvj5KxU1AHojzZA==
X-Google-Smtp-Source: ABdhPJxHH8RiAjKGsoRRpEBC64dx3TTxYmjdnMq58Xq+dmgez5buPEwmF5Yim6amKEbr1ubtA7nzhQ==
X-Received: by 2002:a62:7c43:0:b029:139:858b:8033 with SMTP id
 x64-20020a627c430000b0290139858b8033mr1517161pfc.3.1600894291018; 
 Wed, 23 Sep 2020 13:51:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m188sm555413pfd.56.2020.09.23.13.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 13:51:30 -0700 (PDT)
Date: Wed, 23 Sep 2020 13:51:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [RFC PATCH 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic
Message-ID: <202009231350.8343298C23@keescook>
References: <cover.1600816121.git.skhan@linuxfoundation.org>
 <4fe28fc5f315657e4af276b8a3c71d80a5eaa379.1600816121.git.skhan@linuxfoundation.org>
 <20200923051027.GA2578443@kroah.com>
 <202009231204.5531FBA23F@keescook>
 <20200923193134.GD199068@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200923193134.GD199068@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, maco@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 Shuah Khan <skhan@linuxfoundation.org>, hridya@google.com, surenb@google.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 23, 2020 at 09:31:34PM +0200, Greg KH wrote:
> On Wed, Sep 23, 2020 at 12:04:58PM -0700, Kees Cook wrote:
> > On Wed, Sep 23, 2020 at 07:10:27AM +0200, Greg KH wrote:
> > > On Tue, Sep 22, 2020 at 07:43:36PM -0600, Shuah Khan wrote:
> > > >  struct binder_stats {
> > > > -	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
> > > > -	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
> > > > -	atomic_t obj_created[BINDER_STAT_COUNT];
> > > > -	atomic_t obj_deleted[BINDER_STAT_COUNT];
> > > > +	struct counter_atomic br[_IOC_NR(BR_FAILED_REPLY) + 1];
> > > > +	struct counter_atomic bc[_IOC_NR(BC_REPLY_SG) + 1];
> > > > +	struct counter_atomic obj_created[BINDER_STAT_COUNT];
> > > > +	struct counter_atomic obj_deleted[BINDER_STAT_COUNT];
> > > 
> > > These are just debugging statistics, no reason they have to be atomic
> > > variables at all and they should be able to just be "struct counter"
> > > variables instead.
> > 
> > But there's no reason for them _not_ to be atomic. Please let's keep
> > this API as always safe. Why even provide a new foot-gun here?
> 
> These are debugging things, how can you shoot yourself in the foot with
> that???

Because suddenly you might be trying to use these values for debugging
only to dig and dig to discover that because they were non-atomic, some
parallel race cause a counter to get dropped, etc.

Since we can design this API robustly, let's take the opportunity to do
so.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
