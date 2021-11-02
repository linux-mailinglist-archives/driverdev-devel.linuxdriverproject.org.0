Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 125FA443153
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Nov 2021 16:13:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB77280DA5;
	Tue,  2 Nov 2021 15:13:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qU9wuYICzmlH; Tue,  2 Nov 2021 15:13:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B66BD80D9F;
	Tue,  2 Nov 2021 15:13:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 055D41BF3F0
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 15:12:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2CCE40196
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 15:12:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id maCkHbUpwxfJ for <devel@linuxdriverproject.org>;
 Tue,  2 Nov 2021 15:12:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1B83C400D0
 for <devel@driverdev.osuosl.org>; Tue,  2 Nov 2021 15:12:48 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id p16so43661346lfa.2
 for <devel@driverdev.osuosl.org>; Tue, 02 Nov 2021 08:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r/P+JlVQhPdjKm5XVeacoTH/sKiOZvU19Ao66NpLjpI=;
 b=aD7qi2PqWnlK63AXdBGNS1hr7R1FH79qcGi3MHxWRuL0rLfjXUaQ2cjMSyVz2Nfc3+
 ubgN2WgYfaUo112pMoj/Yhwev7VaVn219E6uZBZZIiZ6fiPLpryHgwhOrbWjM7KGnJ2x
 2mXiIG7EipPN7vw/m9BA3RzmCPi/y3xvJm5/9URsL3dRY2EHtw+WppaQrrHaSYsOR5W4
 46Kr6/q2GuVRu8RUnQ/bz3IIJWPE3ddy1zU3vN0mzORcb/DX9eY7qUlpLAGyPLymI7zU
 M3Bh0YSxiggp+lWL+tdEhmYAMPGtSfMXW8P09HvZvkU7UT9CTzXWzvX26djzsfohVxyl
 3a1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r/P+JlVQhPdjKm5XVeacoTH/sKiOZvU19Ao66NpLjpI=;
 b=O7ENMiLuLFhuYdkZJl/9nERjNajPA3hSjaC5EicW5HCn7irmB5UnAKSILNLN3s9C8h
 DLvWw4MSxb7JZzRdawRnL2JGrVQY7Yauut8fact6nFSI+/LRbY2/sbCxo94hQUsJOyXp
 1/y+fsDXjIsMxMnKf21ZiXtUyjJHv95fbySJmRFvTh8YuNN9X1p5ccezwJVOBpn6mPjk
 1K3UA0UCUXvJcJ8+j4aXJJ7graWxJ2qyWtysQvgnLx+tWb72YmRqQ7uPyl9sJ8D+SzGS
 zuN+AQeWZ1o+6YH7+E1F/3GN4yXV+/MYr5EqkhqogHJFw1Ampw2cxjgXueldSkHUWt0V
 lOOg==
X-Gm-Message-State: AOAM531V8ykf7OuJ6JS/jXVNAAEZo7N4E2hIcxUfutC6oC/DRaMm4I/L
 bdWRfaY8SdxTuspcZVgHA3l4h1SIVmTWf+AqXG75SQ==
X-Google-Smtp-Source: ABdhPJwW3bbYBMow+BLOQ6Z3kkTuneCZ+XClKxxTiKeWebydUO7lU3aFBAnfGW9IxwVbPNEWk0MGovuLAA7JuapWzkg=
X-Received: by 2002:a05:6512:1286:: with SMTP id
 u6mr30858097lfs.226.1635865966770; 
 Tue, 02 Nov 2021 08:12:46 -0700 (PDT)
MIME-Version: 1.0
References: <20211015233811.3532235-1-tkjos@google.com>
 <20211102132336.GG2794@kadam>
In-Reply-To: <20211102132336.GG2794@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 2 Nov 2021 08:12:35 -0700
Message-ID: <CAHRSSEwz-J57rz3n7-fnzK6gyY66WmvuG6BT6XdG6jZB668CWw@mail.gmail.com>
Subject: Re: [PATCH] binder: don't detect sender/target during buffer cleanup
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 2, 2021 at 6:24 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Fri, Oct 15, 2021 at 04:38:11PM -0700, Todd Kjos wrote:
> > When freeing txn buffers, binder_transaction_buffer_release()
> > attempts to detect whether the current context is the target by
> > comparing current->group_leader to proc->tsk. This is an unreliable
> > test. Instead explicitly pass an 'is_failure' boolean.
> >
> > Detecting the sender was being used as a way to tell if the
> > transaction failed to be sent.  When cleaning up after
> > failing to send a transaction, there is no need to close
> > the fds associated with a BINDER_TYPE_FDA object. Now
> > 'is_failure' can be used to accurately detect this case.
> >
>
> It's really hard for me to understand what this bug looks like to the
> user?  Is it a memory leak or do we free the wrong thing?

It is a difficult case to hit (impossible for "well-behaved"
processes), but it could result in file descriptors being closed when
they shouldn't be.

>
> regards,
> dan carpenter
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
