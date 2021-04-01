Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88032351364
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 12:25:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1E2440560;
	Thu,  1 Apr 2021 10:25:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YFwO4hHIfCgE; Thu,  1 Apr 2021 10:25:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E5934054D;
	Thu,  1 Apr 2021 10:25:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94AC71BF3C9
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 90619605DB
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bmdmw6Nggvi for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 10:24:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E00A60585
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 10:24:49 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id hq27so2083111ejc.9
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 03:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J7YrrrhPr6H4+aJ1lkG34rMuFAOACvVaQCsE3shxThk=;
 b=RwfJgvCkIljryl8uo0Vmwy2NZSGlqehWXjl1ezB3NnMbhUVMtz7Imp6cJmjHiV4c4u
 MOCSZbF5KXM0BPkLoo8ln+fo9T/lLzR9fzRy6KS8Q9OZ5ddViqvPoqp/FlqF29SEobts
 xvEBdEfRoyqb1GShptdxvCBIr5dG45kwTRF0enf0UE66rXgR0yEqI7Ijd22l0QnFpOGN
 6B2abN4aaqhtSo4CJwJtTL84Va2BROJEi7VJg3gaQRP1rr3BjpaJK547ghRrBwijc8bl
 lE16Qfqg/02+MSmoLwK7r+yDtF98UhWQ7qLtgbsXr4fCCdxmDBZeKulHdOUR1//IF5sz
 K8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J7YrrrhPr6H4+aJ1lkG34rMuFAOACvVaQCsE3shxThk=;
 b=ZtcIXe4Z6AZ1Bfjs+ikeZJ95oYQ9B7kjwLGntR5elk9wSaMZLnI7O92v8om/5iaxxJ
 n+Tj7SsxWlfGq219TKzwAFnpgh7fKQsKhwF743qvZjgwe0uKhTuNFyy8e6JfY3TE8ujI
 IXLrYfbkAgoreAXpMgLq6yinQLGkxtcRUxc2TgaDZJTYLzi4jKUdrtTxRLbJ0i/yJ6fJ
 ng8Z6lcizW/+/Kzz/L64HpvMrKOwOb3RVXzyREQ8z0hyAX2jed1/n4GG8X9U3IrDgyMh
 VCuk0CTQHYvZVtMCgY4/ipGnYtZ3TpVZ704bFvEpfDGFl1eXZZwFZp28fGjkYU/jVlIP
 RXiQ==
X-Gm-Message-State: AOAM531JW7pMqsNWwviyLwqDqgEkWi6ueQW77t9oVnKIA6lroc2a1uQQ
 pO6fFcSO5APa7PWPWL0EMTFDH1JdkkfcELe9+DwX
X-Google-Smtp-Source: ABdhPJy9oPfEuG5lV875yMF7Gj8RMK+uoG/+oS6kYgJYXI10oZOQ1GgD81mnM9ZocBNO5F2BWGpmbruurhnPMXIWJWE=
X-Received: by 2002:a17:906:311a:: with SMTP id
 26mr8276109ejx.395.1617272688184; 
 Thu, 01 Apr 2021 03:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-2-xieyongji@bytedance.com>
 <YGWX4aIE5QNxsJQ9@kroah.com>
In-Reply-To: <YGWX4aIE5QNxsJQ9@kroah.com>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 18:24:37 +0800
Message-ID: <CACycT3tESHmWUS6qrBpoOHGQKrJt7Qb8Xh1aawhDBHMPBb0Eag@mail.gmail.com>
Subject: Re: Re: [PATCH 1/2] file: Export receive_fd() to modules
To: Greg KH <gregkh@linuxfoundation.org>
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
 Kees Cook <keescook@chromium.org>, Suren Baghdasaryan <surenb@google.com>,
 Jason Wang <jasowang@redhat.com>, Sargun Dhillon <sargun@sargun.me>,
 Christoph Hellwig <hch@infradead.org>, Hridya Valsaraju <hridya@google.com>,
 arve@android.com, viro@zeniv.linux.org.uk, joel@joelfernandes.org,
 linux-fsdevel@vger.kernel.org,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 1, 2021 at 5:52 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 01, 2021 at 05:09:31PM +0800, Xie Yongji wrote:
> > Export receive_fd() so that some modules can use
> > it to pass file descriptor across processes without
> > missing any security stuffs.
> >
> > Signed-off-by: Xie Yongji <xieyongji@bytedance.com>
> > ---
> >  fs/file.c            | 6 ++++++
> >  include/linux/file.h | 7 +++----
> >  2 files changed, 9 insertions(+), 4 deletions(-)
> >
> > diff --git a/fs/file.c b/fs/file.c
> > index 56986e55befa..2a80c6c3e147 100644
> > --- a/fs/file.c
> > +++ b/fs/file.c
> > @@ -1107,6 +1107,12 @@ int receive_fd_replace(int new_fd, struct file *file, unsigned int o_flags)
> >       return new_fd;
> >  }
> >
> > +int receive_fd(struct file *file, unsigned int o_flags)
> > +{
> > +     return __receive_fd(file, NULL, o_flags);
> > +}
> > +EXPORT_SYMBOL(receive_fd);
>
> What module uses this?
>

Looks like now it will be only used by the module in my proposal:

https://lore.kernel.org/linux-fsdevel/20210331080519.172-1-xieyongji@bytedance.com/

> And why not EXPORT_SYMBOL_GPL()?
>

My fault, sorry.

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
