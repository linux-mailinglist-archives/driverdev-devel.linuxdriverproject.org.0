Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F0811A5D6
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Dec 2019 09:28:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 005C78850C;
	Wed, 11 Dec 2019 08:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hsxfA9A7wVzP; Wed, 11 Dec 2019 08:28:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D18388468;
	Wed, 11 Dec 2019 08:28:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF0E1BF2C1
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 08:28:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 081BB87D13
 for <devel@linuxdriverproject.org>; Wed, 11 Dec 2019 08:28:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id USqfMvfq4mfa for <devel@linuxdriverproject.org>;
 Wed, 11 Dec 2019 08:28:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1A81987CE5
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 08:28:43 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id j6so8713502ybc.11
 for <devel@driverdev.osuosl.org>; Wed, 11 Dec 2019 00:28:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gpuk/6fgFZEvalrQGg6avsB0dY+y51rwO2rD1UzUjgQ=;
 b=eNe13BCmYpqFXSSYVg/raEywCIw/5nPHLKm9U9qH8eornuNc3ym0k34KvrvgBTQT5D
 EORCrGYsxMd55hmo/ngIgqo7ckcbG0Nj9DXFUFsDY5i4u3ayPE1fS9bHSFQpSNbnUAR9
 0avaW0Hbs9D9XUQU5VOzwEwMR6bBhapPk/gJITbk4WzUeiE492ulHCFuu4JJjcLG66Df
 d0ZIckx5KBKVu27l/M8EdDMG7mYB3PdUtKjDvHHiSWSgEkktCics2RZKap3NM9/55Qc0
 VaHLXDOQ4PTa3KB/iY3hvvNNrPc0gcRUSNuOW1TFE0endihnaBmDqpvJQrQaySOWkMA9
 EoLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gpuk/6fgFZEvalrQGg6avsB0dY+y51rwO2rD1UzUjgQ=;
 b=b9j/Hu1AEz2rW7yXJ7HqRIEVlkE/yBTUohy6ZwmJR+clTy+bUUw45aiE6mOkBLsaIT
 1woDS5fIBZ6YF6rj2GQreQKheZ8CzwuhKCldRUg6F0AACpO7xU46RROBp8q8n9I5e2Yo
 MbHRpF6kN3EqT7A0Gf3BNxX6D6o8YotTNKjQ2wp3zvOFn3chSgkTAxOr9jX1dFt5eIOj
 v7SQ3VKNyNrNoh/GVYDf9HivOSXlkPF6AoSovZrTSic/IbNwkwf/H8xC4C6WC+UdxLtJ
 h7W+4tpFl3jZ+DTv5cDTO48+8JpdRehH+faAWppAtuvpcJztS6OJmQAe7W7wy0Zd+NpC
 FAmQ==
X-Gm-Message-State: APjAAAW0ulgdwQRQzufZlrWyXOln57g7SCukG8ZH3TQ+GyQ1WFJOgTBh
 gvzQtYe1JTfqwRYTxEUIpXo=
X-Google-Smtp-Source: APXvYqwE10h3gNKTPZrfppPm75isVrI65WhKpiLDIwf4LT9LCSccHABY4gnhxmaNnubCz/3EWbMT6A==
X-Received: by 2002:a25:ac8:: with SMTP id 191mr1674636ybk.396.1576052922070; 
 Wed, 11 Dec 2019 00:28:42 -0800 (PST)
Received: from karen ([2604:2d80:d68a:cf00:a4bc:8e08:1748:387f])
 by smtp.gmail.com with ESMTPSA id y9sm681643ywc.19.2019.12.11.00.28.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 00:28:41 -0800 (PST)
Date: Wed, 11 Dec 2019 02:28:39 -0600
From: Scott Schafer <schaferjscott@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: qlge: Fix multiple WARNING and CHECK relating
 to formatting
Message-ID: <20191211082839.GA13244@karen>
References: <20191211014759.4749-1-schaferjscott@gmail.com>
 <20191211073136.GB397938@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211073136.GB397938@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 11, 2019 at 08:31:36AM +0100, Greg Kroah-Hartman wrote:
> On Tue, Dec 10, 2019 at 07:47:59PM -0600, Scott Schafer wrote:
> > CHECK: Please don't use multiple blank lines
> > CHECK: Blank lines aren't necessary before a close brace '}'
> > CHECK: Blank lines aren't necessary after an open brace '{'
> > WARNING: Missing a blank line after declarations
> > CHECK: No space is necessary after a cast
> > CHECK: braces {} should be used on all arms of this statement
> > CHECK: Unbalanced braces around else statement
> > WARNING: please, no space before tabs
> > CHECK: spaces preferred around that '/' (ctx:VxV)
> > CHECK: spaces preferred around that '+' (ctx:VxV)
> > CHECK: spaces preferred around that '%' (ctx:VxV)
> > CHECK: spaces preferred around that '|' (ctx:VxV)
> > CHECK: spaces preferred around that '*' (ctx:VxV)
> > WARNING: Unnecessary space before function pointer arguments
> > WARNING: please, no spaces at the start of a line
> > WARNING: Block comments use a trailing */ on a separate line
> > ERROR: trailing whitespace
> > 
> > In files qlge.h, qlge_dbg.c, qlge_ethtool.c, qlge_main.c, and qlge_mpi.c
> > 
> > Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> > ---
> >  drivers/staging/qlge/qlge.h         |  45 ++++++-------
> >  drivers/staging/qlge/qlge_dbg.c     |  41 ++++++-----
> >  drivers/staging/qlge/qlge_ethtool.c |  20 ++++--
> >  drivers/staging/qlge/qlge_main.c    | 101 ++++++++++++++--------------
> >  drivers/staging/qlge/qlge_mpi.c     |  37 +++++-----
> >  5 files changed, 125 insertions(+), 119 deletions(-)
> 
> Hi,
> 
> This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
> a patch that has triggered this response.  He used to manually respond
> to these common problems, but in order to save his sanity (he kept
> writing the same thing over and over, yet to different people), I was
> created.  Hopefully you will not take offence and will fix the problem
> in your patch and resubmit it so that it can be accepted into the Linux
> kernel tree.
> 
> You are receiving this message because of the following common error(s)
> as indicated below:
> 
> - Your patch did many different things all at once, making it difficult
>   to review.  All Linux kernel patches need to only do one thing at a
>   time.  If you need to do multiple things (such as clean up all coding
>   style issues in a file/driver), do it in a sequence of patches, each
>   one doing only one thing.  This will make it easier to review the
>   patches to ensure that they are correct, and to help alleviate any
>   merge issues that larger patches can cause.
> 
> If you wish to discuss this problem further, or you have questions about
> how to resolve this issue, please feel free to respond to this email and
> Greg will reply once he has dug out from the pending patches received
> from other developers.
> 
> thanks,
> 
> greg k-h's patch email bot

I was wondering how I would go about chaning the patch. I know I should
switch to a patchset but how would I go about doing that? Also where
would I place the new patches? Would I, create a new patch series or
would I split the patch into new (smaller) patches and reply to this
thread?

Thanks, 
Scott Schafer
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
