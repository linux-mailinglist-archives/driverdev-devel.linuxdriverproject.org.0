Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA8723DB89
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 18:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BBC524BB3;
	Thu,  6 Aug 2020 16:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ydZ44nmTYFVa; Thu,  6 Aug 2020 16:14:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D562924B99;
	Thu,  6 Aug 2020 16:14:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 017241BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:14:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F231888334
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:14:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MV0f0RPdeg7n for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 16:14:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1328E8831D
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 16:14:15 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id m22so7833339eje.10
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 09:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dUhK6XxdfktnJLvVMPHZp4b3o9WzGcvCUn7lMMPRpRY=;
 b=HfTFo6+NCf3S+9swY/fTtzedig26g/bIhESx5DqzJjD9jwCMYVYCAJ5R4bYYX1iFHL
 VIUbSAxvhkjzG6ciZBhTCBev/lO/UqdxZ9W8Wqx5lgO+UIVj2VM+t7uzUerAjmP0fdfl
 tFxW8XHxFKmfxrZGYEgJ26hAeI4WJA3Y2FngZioz0t/MTTQdN15ghhB/EQPQzWI0fMBF
 qfjzLg/pO1Yl0glZRJalvO2Y6LnvTXgOzhT2/3gQ2a41cxQP+0hYlw8kfm7mrkGKgxMi
 MhBR+SHavb9nXwJbX9BDptI7gXYjP3X4vdy9eXkKFtJW2c+u3a637bDi/9t+H7ZeI3u4
 wCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dUhK6XxdfktnJLvVMPHZp4b3o9WzGcvCUn7lMMPRpRY=;
 b=PlrANqdkxJn/cb+wG7JqhYBMPTWCIC4xUZQyPEf/ENTSB9o4qG0tQNUOhMrzH1yk15
 WMhaydieVroDnm40WLPYWgRYO5TtS2PQ5l+KFEXHnCCnl/cINA+KRJBq6uqj3WhvjrWQ
 tQfULTqdJR1uFKGW9Iuh1tXI3V1AUdT7gJ71wXgTcc5066WUygK4KGnR69TBKqVTKzS4
 QzbnVEjT6zkVC+lO+Kzu2JhIxsjgpJjhW0pBzfdmLtXAMgrHeSZ3lIpMgqwQYQcOFytI
 CIMdoJAdVt1CtpSUePm9N8LGgGAFTQinwQ4v7bD6TPQzuKE4LKpUZ1GJZnNMbo1CMrT4
 8GBQ==
X-Gm-Message-State: AOAM531RpP38CLLn0t+60i+Rla7rvKIM3uKXpoEknH3QcViF61r/f2iB
 HX+IN3dSqzITnyjPm6JvB1gjKLa6dxGm6T9tLSevDw==
X-Google-Smtp-Source: ABdhPJxJI5PkLwFsxMCbJSijgov8BkA6HTM/g4dOfaBOhR8DivHf4LCdyjvKHRZzQJWu3M/JyvJujWB1lbvsAWeL0eQ=
X-Received: by 2002:a17:906:c406:: with SMTP id
 u6mr5330651ejz.47.1596730453302; 
 Thu, 06 Aug 2020 09:14:13 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006925ea05a69d5bfb@google.com>
 <000000000000ecb92805ac33a761@google.com>
 <CAG48ez0Rdut=HxSyKUCiCVU=zZJPR7YXcOfL3tRBXXwUS0iKxw@mail.gmail.com>
In-Reply-To: <CAG48ez0Rdut=HxSyKUCiCVU=zZJPR7YXcOfL3tRBXXwUS0iKxw@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 6 Aug 2020 09:14:01 -0700
Message-ID: <CAHRSSEyJHcjZj73SjkzavdeDnoAp2pREJxQa58k94hEph8tRwA@mail.gmail.com>
Subject: Re: WARNING in binder_transaction_buffer_release (2)
To: Jann Horn <jannh@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 6, 2020 at 9:09 AM Jann Horn <jannh@google.com> wrote:
>
> On Thu, Aug 6, 2020 at 1:19 PM syzbot
> <syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com> wrote:
> > syzbot suspects this issue was fixed by commit:
> >
> > commit 4b836a1426cb0f1ef2a6e211d7e553221594f8fc
> > Author: Jann Horn <jannh@google.com>
> > Date:   Mon Jul 27 12:04:24 2020 +0000
> >
> >     binder: Prevent context manager from incrementing ref 0
> [...]
> > dashboard link: https://syzkaller.appspot.com/bug?extid=e113a0b970b7b3f394ba
> [...]
> > If the result looks correct, please mark the issue as fixed by replying with:
> >
> > #syz fix: binder: Prevent context manager from incrementing ref 0
>
> I think this issue still exists, syzbot probably just hit it in a
> weird way that doesn't work anymore.
>
> This warning:
>
> case BINDER_TYPE_FD: {
>         /*
>          * No need to close the file here since user-space
>          * closes it for for successfully delivered
>          * transactions. For transactions that weren't
>          * delivered, the new fd was never allocated so
>          * there is no need to close and the fput on the
>          * file is done when the transaction is torn
>          * down.
>          */
>         WARN_ON(failed_at &&
>                 proc->tsk == current->group_leader);
> } break;
>
> can be false-positive if the sender and recipient of the transaction
> are associated with the same task_struct. But there isn't really any
> reason why you wouldn't be able to have sender and recipient in the
> same process, as long as the binder_proc is different.
> (binder_transaction() has a weird check that refuses transactions to
> handle 0 based on task_struct equality - which IMO doesn't really make
> sense -, but transactions to other handles can happen just fine even
> if both ends are in the same task_struct.)
>
> Maybe the best fix is just to rip out that WARN_ON()?

Yes, probably so.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
