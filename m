Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFC3181E19
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 17:40:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 33BA088845;
	Wed, 11 Mar 2020 16:40:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7cnwBOlnfF1R; Wed, 11 Mar 2020 16:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2EF2B887DF;
	Wed, 11 Mar 2020 16:40:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D47B1BF3E3
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4879289005
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 16:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iW-Rz4JPHYZA for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 16:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2542088F93
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 16:40:17 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id c20so2322960lfb.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:40:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CQIcBy++lHyFVoklpZOGyu0d/n/C4e98cfAviFgLA40=;
 b=cWURHYjD/tJtxdg5ooSD5UUro/x+YBOlFk4y+tva8PrMe04Lp79cJYAsZBQ/F2DSw9
 fYx+OUEu6TzSBsbfd0XuHXBaQ6lUcgsIKzVsqoZIcH8E7+Eg17pNwGZr+V8AFXqdQv/H
 XXXkt0ykm80BPvUyDoUjxKyJWej3IPnJDalAyddxePh/H0FoAO85XG4sxqGWo/wLetIW
 /iCz/cK1TT5cFnVGkjY+jk/0Kntgu9DyQpHwFGaxBH5Tx5qEihT5MmckIQhFpOEagfdg
 UrOCkQEwxl4BSZdUYVqfaqdDidgBcVisd61HWRP1epISHnRk/rHPITcbJCpGeJMPBhuU
 tgoQ==
X-Gm-Message-State: ANhLgQ3qdLlxvn/e6A5QR+hkUAE93SaArzeSt8khEd75R06tL/R4oKXC
 QglBTeptPC5OukljVXQ/EBc=
X-Google-Smtp-Source: ADFU+vsKli5lM9s2I7oLXmnLiT+0q6KNC6an93G/DMH2bGr0eLj2LPw+wAZCmBEhWbVDAodTdHzFgg==
X-Received: by 2002:ac2:5222:: with SMTP id i2mr2698506lfl.81.1583944815271;
 Wed, 11 Mar 2020 09:40:15 -0700 (PDT)
Received: from xi.terra (c-12aae455.07-184-6d6c6d4.bbcust.telenor.se.
 [85.228.170.18])
 by smtp.gmail.com with ESMTPSA id j6sm5961936lfb.13.2020.03.11.09.40.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 09:40:14 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92.3)
 (envelope-from <johan@kernel.org>)
 id 1jC4Oo-0006WF-Qu; Wed, 11 Mar 2020 17:40:02 +0100
Date: Wed, 11 Mar 2020 17:40:02 +0100
From: Johan Hovold <johan@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH] staging: greybus: Use scnprintf() for avoiding potential
 buffer overflow
Message-ID: <20200311164002.GL14211@localhost>
References: <20200311091906.22980-1-tiwai@suse.de>
 <20200311095814.GI14211@localhost> <s5hmu8n8b0m.wl-tiwai@suse.de>
 <20200311100903.GJ14211@localhost> <s5hy2s7nojd.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5hy2s7nojd.wl-tiwai@suse.de>
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

On Wed, Mar 11, 2020 at 12:01:26PM +0100, Takashi Iwai wrote:
> On Wed, 11 Mar 2020 11:09:03 +0100,
> Johan Hovold wrote:
> > 
> > On Wed, Mar 11, 2020 at 11:02:33AM +0100, Takashi Iwai wrote:
> > > On Wed, 11 Mar 2020 10:58:14 +0100,
> > > Johan Hovold wrote:
> > > > 
> > > > On Wed, Mar 11, 2020 at 10:19:06AM +0100, Takashi Iwai wrote:
> > > > > Since snprintf() returns the would-be-output size instead of the
> > > > > actual output size, the succeeding calls may go beyond the given
> > > > > buffer limit.  Fix it by replacing with scnprintf().
> > > > > 
> > > > > Signed-off-by: Takashi Iwai <tiwai@suse.de>
> > > > > ---
> > > > >  drivers/staging/greybus/tools/loopback_test.c | 24 ++++++++++++------------
> > > > 
> > > > Thanks for the fix.
> > > > 
> > > > Would you mind resending with a "staging: greybus: loopback_test:"
> > > > prefix since this is not a subsystem wide issue, bur rather a bug in a
> > > > specific user-space tool?
> > > 
> > > OK, will do that.
> > 
> > Thanks.
> > 
> > Perhaps you should replace the snprintf() at the start of the function
> > in question as well by the way.
> 
> Yeah, it's I also wonder while working on many other codes, too.
> I decided to minimize the changes at this time and concentrate only on
> the code that has a pattern like:
>    pos += snprintf(buf, limit - pos, ...)

But isn't the first snprintf() in such a sequence as much a part of the
problem as the following ones?

If the first pos = snprintf(buf, limit, ...) overflows buf, then the
next pos += snprintf(buf, limit - pos, ...) will be called with with a
negative size argument (i.e. a very large unsigned value), which
effectively breaks the length check regardless of whether you replace it
with scnprintf() or not. And all later calls will similarly continue
writing beyond the end of buf.

But wait a minute. This is user-space code, so there's no scnprintf().
Did you not compile test this? ;P

In fact it seems no-one has for a while. This code is just broken and
doesn't even compile any more. Maybe we should just drop it instead.

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
