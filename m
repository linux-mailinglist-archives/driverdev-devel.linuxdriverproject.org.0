Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA9B4A88D
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 19:37:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B9218574B;
	Tue, 18 Jun 2019 17:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K_6oOIMXoHXP; Tue, 18 Jun 2019 17:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 142C1844C7;
	Tue, 18 Jun 2019 17:37:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 680E41BF5AA
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6415F204C5
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 17:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-R-a7rvMuUx for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 17:37:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 by silver.osuosl.org (Postfix) with ESMTPS id 7EAC220448
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 17:37:25 +0000 (UTC)
Received: by mail-lj1-f180.google.com with SMTP id 131so405007ljf.4
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 10:37:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QROr5zriDXIm3C2J+ydlhxHZFPlNm4wl+giC4xaoC34=;
 b=Jq9kKqoUb2VmJTD/fdjLOpJ6OlKWK3BsI4TJY6HmQJOIFVS+PhpHzYgBzyBAx0L0yK
 yduw27Zbxw2DRpeHT4cKAoHqU+bBhUrs8jRK98LYxxMkTIZLBvDoyhW0bqQJ+rw3PyjB
 NDdxm6tS2+mh9G3uK6x47ngzO/1qfjWJOaLoYKSd0X92Wu/6iN+2jMEWWp0Ly0MBveX9
 +/U5GJfhpQbHtf74efe0DYNg1EuhdmzpByNdX1CLbkSQZ3BVOkDd9a0UV+Hu2ixYnqrw
 CPlYzaUUfJHLb9/S8+jayGwKwbXcKao0VRO3OAY+0lEXkpsXvSPP5cwSDk4SFezcxdYU
 pTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QROr5zriDXIm3C2J+ydlhxHZFPlNm4wl+giC4xaoC34=;
 b=mE95hw/2wTAHpQ8R007VLWf8jj+BGKhdNXldzahwz/fnXqTg+XYpPQqk1wn9OUwn/L
 Dil/MdGNveRb7h0UC6zDQ93knDiVOfPF1jJfOTbCnj0nneCSphTJIXy36ihikGc3oPUY
 5BNq0KFTiE9bj89aE1nxHJaBeD7EXlCadDZdErk7VmQI4rPmQ+CPzIbxJz9xBMJ8JsZE
 W2W8FR0JVszCQVq9zfg3a3ichyPBcNDvob/xptGKzNJhaIyOrhgcxqGva+xoMNIkeI/H
 6nZFinhpRiCTFxXe14QkMJzwCfxqSqlqW1yiZc+ig2+pArLSPxNGnNBxMYa+ShhjYFsb
 +7eQ==
X-Gm-Message-State: APjAAAW265h9dxfAhSTsTN+TB9dJ+2WBKa1GwazE5lmq3pMQbFgCMURr
 kAQZcMZmSd8PBBbQH+WWipuROgqtIJdIYDf/gN3Ujb/4O8A=
X-Google-Smtp-Source: APXvYqybJbrB2HTsNMMGAvCkrzRmM0i3sLs86Si+JSvi3tk4xwxA2skoL3QUi1uzNWm7y3Vo4ZFRhnSSidXf6dCZAnI=
X-Received: by 2002:a2e:9ac6:: with SMTP id p6mr35749812ljj.100.1560879443135; 
 Tue, 18 Jun 2019 10:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000b6b25b058b96d5c3@google.com>
 <20190618121756.GL28859@kadam>
In-Reply-To: <20190618121756.GL28859@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 18 Jun 2019 10:37:10 -0700
Message-ID: <CAHRSSExL1fUNpV4jBON5qh47M8A+na0twVNEqpvkBoYVnbJSHA@mail.gmail.com>
Subject: Re: kernel BUG at drivers/android/binder_alloc.c:LINE! (4)
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
Cc: syzbot <syzbot+3ae18325f96190606754@syzkaller.appspotmail.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 18, 2019 at 5:18 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> It's weird that that binder_alloc_copy_from_buffer() is a void function.
> It would be easier to do the error handling at that point, instead of in
> the callers.  It feels like we keep hitting similar bugs to this.

The idea is that if it is an error that the user can cause, it is
checked by the caller of binder_alloc_copy_from_buffer(). Most uses
are kernel cases where the expected alignments should be fine and it's
a BUG if they are not.

Admittedly, a few cases (like this one) have slipped through since
they cannot happen in Android (syzkaller has been very useful to find
our bad assumptions).

-Todd

>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
