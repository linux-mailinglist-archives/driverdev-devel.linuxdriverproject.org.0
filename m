Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3338EAFAEC
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 12:57:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DDC5A221F8;
	Wed, 11 Sep 2019 10:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o5BUoT5U7uIF; Wed, 11 Sep 2019 10:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E21CB203A6;
	Wed, 11 Sep 2019 10:56:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2033E1BF4D5
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 162E920373
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 10:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FKSv5vm5JLXk for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 10:56:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5973620371
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 10:56:53 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id k12so6592604uan.13
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 03:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=14NW5dNTI5wjm+IIeF7uMqd+x+fw/3tD1joT9kTS7uo=;
 b=ng2O7gB/m1uxqX6sCkIo/9DstYA+yJs+cpyqMV0NLqreVc6F4Bxb4BSP2PUvFQOC5j
 XRJO1kqD0815s6QVP7HTuBOB2ORP+5/kbPYtfjIqIjqOGISon9MJGXB/Zbn0n+CSP+A3
 3QBWO4hThsB2z1Dq4IXsI7aFcKvZAV/x2XLDZXGAWFLUmOQLerC4iZ+M16zV9cMhFZP3
 nC/i8nsGxTHVAvXoqzgUFSefWjHrEemNG7+GoIkJOtniAJE2ymRm8nNZx3oFAI17dw+h
 cHBUWYSSaG9bSDqvtPapPzOC3jI5fRmb+xY2ttJ5Gu7+A9HEYLnZYqtXXqWVsi9CkHyA
 OnOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=14NW5dNTI5wjm+IIeF7uMqd+x+fw/3tD1joT9kTS7uo=;
 b=dHU3igRZS4UAHxAWwUhEftOXBfQ1jtfDa2ub7qa7hwF2/XD92XA/amAz2UNepRwhE+
 l1L+bfD8LNMb4yqboUiAzPZk/VyG4tKH2xYG5uxi37G70NoHGt0Q40whhfWw1jAyxeZ6
 2uzbep5DLOjIQTsO1IfzLkxDk3PTKB8cOh+GK1gkr405Fm0oxrENgvv6TeutLryncJCE
 FNTdkUgRrEKo3x/zTYvskDipV0rjeHY7v04IxgitWuirrtj+vaEjKEMh3Rejw1BC2PWi
 HIOOKKuwSimJa8bPlv+gNzsa0FV8a2c74Nm/sBB6uiM14ArZVuIMFucS9PLoth8DTFSG
 tf5w==
X-Gm-Message-State: APjAAAXqSLRiUHSJfcZVNN+r+Bk7xKvNh1qwHpdZ+pWQ6/idRp2cTkhV
 AMGH24r/AhCh5wG4gc66gJN0oqpHte3NRY8DJU4=
X-Google-Smtp-Source: APXvYqzgcEDgDmQ7X5s00eW0kQjFyQWa4GbJPhefckDwpNR4hF6kt33vjQnCGd50hK+bcXVhzMUmdb4cxle9jrz38Xg=
X-Received: by 2002:ab0:a6:: with SMTP id 35mr16697682uaj.26.1568199412057;
 Wed, 11 Sep 2019 03:56:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180909.27775-1-sylphrenadin@gmail.com>
 <20190827084319.GB23584@kadam>
 <CACAkLupPBHeGSpYJQJ8eH1wnU2W+ff8rS8qzCG_P2hzDrwPLEQ@mail.gmail.com>
 <20190910113037.GC30834@kadam>
In-Reply-To: <20190910113037.GC30834@kadam>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Wed, 11 Sep 2019 16:26:38 +0530
Message-ID: <CACAkLuorMhHob68yaxyVdUpe3XjZ6NWW-s_zkc0GjZYn62Xt8w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8192u: Add or remove spaces to fix
 style issues
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 10, 2019 at 5:00 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Sun, Sep 08, 2019 at 12:58:39PM +0530, Sumera Priyadarsini wrote:
> > Hi, I am extremely sorry for a late response to this. I was caught up
> > with some laptop issues. I will send a separate patch making the
> > change right away.
>
> There is not need to apologize at all.  I'm not signing your paychecks.
> Take as long as you want.  :P
>
> regards,
> dan carpenter
>
I sent a patch. Would you please review it?

regards,
sumera
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
