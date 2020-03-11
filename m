Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CB3181E42
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 17:50:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C9802156F;
	Wed, 11 Mar 2020 16:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUNXGnWyeCZs; Wed, 11 Mar 2020 16:50:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 084B321509;
	Wed, 11 Mar 2020 16:50:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E47DC1BF3E3
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:50:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C8939885FF
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:50:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrmCi176766g for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 16:50:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED7C4887CB
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 16:50:13 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id j15so2332657lfk.6
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2WQ5QOhhtqyxc21CZANuOHGJ1oB8RH0uBOvaI9t9ga8=;
 b=ZYzbGb5f9a9bJ5KdkeN6BPtSZY+nr43mP20v7xl1BczsHJ4siI33if+BbnK/Z40YkY
 ZOhtIdEA/kINj4AF1MjkbXpl/h2shmxe/1JAYu0o4lWYLoEafkdw0FyRdb+YnaiztVtV
 5gGwOT6lgmgZNqFo2V327oyA5gEnyZMYwY+KXEQpQNRW1e/QpKrz5Ydt2khVC8E0FtwE
 1VS8TmywmzSVRMkMZr81WIGcU2itwvsRHZDWJotafwM7VrzGhJXYfE/95Qvahu0QgIvo
 40gb9t6laZdp+2gfqRhaBfKl8pe7ReuUvAKGH5CBywWJ7Qf35Du6c/QwJLVubC0JkOE5
 oZ2Q==
X-Gm-Message-State: ANhLgQ3isIn58Pk4SUXXJTv2Y+o5DT2TL69Wu9LbvIUEL+c7papQ8I1Z
 +W6odyucQuqgJe7GY0Eqwkc=
X-Google-Smtp-Source: ADFU+vs+MJAb3FR7/qAqR8AKzz/tytZKX5/oWzlP1X9KOKpe8QflhBi6kXm70N7J58UJLz6kz0jIBw==
X-Received: by 2002:a19:8292:: with SMTP id e140mr244707lfd.137.1583945412151; 
 Wed, 11 Mar 2020 09:50:12 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id 3sm6381291ljq.18.2020.03.11.09.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 09:50:11 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jC4YS-0006Zi-2G; Wed, 11 Mar 2020 17:50:00 +0100
Date: Wed, 11 Mar 2020 17:50:00 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200311165000.GN14211@localhost>
References: <20200311091906.22980-1-tiwai@suse.de>
 <20200311095814.GI14211@localhost> <s5hmu8n8b0m.wl-tiwai@suse.de>
 <20200311100903.GJ14211@localhost> <s5hy2s7nojd.wl-tiwai@suse.de>
 <20200311164002.GL14211@localhost> <s5h8sk67sd0.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h8sk67sd0.wl-tiwai@suse.de>
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
 Alex Elder <elder@kernel.org>, Johan Hovold <johan@kernel.org>,
 greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 11, 2020 at 05:45:31PM +0100, Takashi Iwai wrote:
> On Wed, 11 Mar 2020 17:40:02 +0100, Johan Hovold wrote:

> > But isn't the first snprintf() in such a sequence as much a part of the
> > problem as the following ones?
> > 
> > If the first pos = snprintf(buf, limit, ...) overflows buf, then the
> > next pos += snprintf(buf, limit - pos, ...) will be called with with a
> > negative size argument (i.e. a very large unsigned value), which
> > effectively breaks the length check regardless of whether you replace it
> > with scnprintf() or not. And all later calls will similarly continue
> > writing beyond the end of buf.
> 
> Yeah, that's the possible case although most calls are fine with it
> since the limit is PAGE_SIZE or so.  This might need a bit more
> special care.

Yeah, sure, it should be fine here too currently, even if the buffer
size is defined in the caller.

> > But wait a minute. This is user-space code, so there's no scnprintf().
> > Did you not compile test this? ;P
> >
> > In fact it seems no-one has for a while. This code is just broken and
> > doesn't even compile any more. Maybe we should just drop it instead.
> 
> Bah, I'm afraid that I overlooked this point!
> 
> I've scraped over many places via a script-like work, and did the
> compile testing of the kernel, but not about tools.  If that's the
> case, sorry for the mess, feel free to drop it. 

No worries. I'll try to take a look at the other breakages tomorrow and
see if there's any point trying to salvage this at all.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
