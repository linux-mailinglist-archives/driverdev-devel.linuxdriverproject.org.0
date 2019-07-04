Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2856A5F118
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2019 03:59:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AD9BD87E16;
	Thu,  4 Jul 2019 01:59:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I25g7pEpC1T5; Thu,  4 Jul 2019 01:59:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4319187DDB;
	Thu,  4 Jul 2019 01:59:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D22161BF232
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 01:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CDFD2864E5
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2019 01:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ub262faJO3nv for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2019 01:59:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 96887811CC
 for <devel@driverdev.osuosl.org>; Thu,  4 Jul 2019 01:59:15 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id a93so2204209pla.7
 for <devel@driverdev.osuosl.org>; Wed, 03 Jul 2019 18:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yBNyJBnqU/lYe/Ozz1jmxOlaF/PmqyD3BLJwt7wrtGU=;
 b=DafuIMzRmRoFk2EtihZ6K9OJnyDWcYNsPH7F4xqO38yVAcGxqFgy2ppKW0kLW2CB8l
 +Cl/DKFQwgopwOtQNq4x/amG+iW9DSq9UFXBxoP7PzwQ+x8lXt1l3II/rmf46niXX0YQ
 l+7PSi6Z3xLB1hFmW4N5rwVxWS1r0RUseTBaXBBT+pdO5TfHVgfLSoQVUzUzFNn6LLLk
 tklOtKZ0IsayBMkMNGdwT8Kt83LjaLPI1PoU8I2KHegSuHkMF42Xnbkcg2R8ykbiLv5s
 /PGeadBgf9cOKDIvujjxOCkmnPobO44M4GTLfFevleShqEpZvooKdQemKCO8OXTqBNGM
 UU6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yBNyJBnqU/lYe/Ozz1jmxOlaF/PmqyD3BLJwt7wrtGU=;
 b=hDPZ5IxGcRZx4wt4iNFl/pZJHImvqJMrrB0ptB8TUDSkMvxMWb5Jrvjeqpr8x1QSGX
 3lAZhMYE9ewKAz2tHm9TII5L3ifC9GDEwViX1EkOPD9iCzj9plFjqy1Qu4zEKJ6Y2x6M
 Y9SlZfoYQwYrT4MpyxXJqfUuKmUIIsnH+rabHcMbXzUpRW/eX9brRl+k8AG6tbFs+OKv
 qPHUiPe7YBZmMysCi8q6I9JarR7KjyNScG4CGznQQFASUV0pRBDV9B4s8h72nxO5KJC6
 PDc2NipyIm8Rq+nXeHBhZMcsR49p0dryJb0r2zMuccoQfDqG1BQW+PhpYfGX/6HeM0Ox
 Q+vw==
X-Gm-Message-State: APjAAAWQd0mWd+/SPNeUS+aGkFzEYq3F12gdC1EEdAncHM5kUtPFGJg2
 9JMI00ppVdTqkCY3+538I7g=
X-Google-Smtp-Source: APXvYqwzCTWt23oxzdyRl3RG83l5rEiHGsDuTVXrO82oG40/lICiq6krwvwERXdF37c9iMzrvV7HNw==
X-Received: by 2002:a17:902:b592:: with SMTP id
 a18mr46612654pls.278.1562205555190; 
 Wed, 03 Jul 2019 18:59:15 -0700 (PDT)
Received: from localhost ([218.189.10.173])
 by smtp.gmail.com with ESMTPSA id x25sm3582345pfm.48.2019.07.03.18.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 03 Jul 2019 18:59:14 -0700 (PDT)
Date: Thu, 4 Jul 2019 09:59:03 +0800
From: Yue Hu <zbestahu@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RESEND v3] staging: erofs: remove unsupported ->datamode
 check in fill_inline_data()
Message-ID: <20190704095903.0000565e.zbestahu@gmail.com>
In-Reply-To: <20190703162038.GA31307@kroah.com>
References: <20190702025601.7976-1-zbestahu@gmail.com>
 <20190703162038.GA31307@kroah.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, yuchao0@huawei.com,
 linux-kernel@vger.kernel.org, huyue2@yulong.com, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 3 Jul 2019 18:20:38 +0200
Greg KH <gregkh@linuxfoundation.org> wrote:

> On Tue, Jul 02, 2019 at 10:56:01AM +0800, Yue Hu wrote:
> > From: Yue Hu <huyue2@yulong.com>
> > 
> > Already check if ->datamode is supported in read_inode(), no need to check
> > again in the next fill_inline_data() only called by fill_inode().
> > 
> > Signed-off-by: Yue Hu <huyue2@yulong.com>
> > Reviewed-by: Gao Xiang <gaoxiang25@huawei.com>
> > Reviewed-by: Chao Yu <yuchao0@huawei.com>
> > ---
> > no change
> > 
> >  drivers/staging/erofs/inode.c | 2 --
> >  1 file changed, 2 deletions(-)  
> 
> This is already in my tree, right?

Seems not, i have received notes about other 2 patches below mergerd:

```note1
This is a note to let you know that I've just added the patch titled

    staging: erofs: don't check special inode layout

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-next branch.
```

```note2
This is a note to let you know that I've just added the patch titled

    staging: erofs: return the error value if fill_inline_data() fails

to my staging git tree which can be found at
    git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
in the staging-next branch.
```

No this patch in below link checked:

https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/log/drivers/staging/erofs?h=staging-testing

Thanks.

> 
> confused,
> 
> greg k-h

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
