Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FD823DB82
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 18:09:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0EB386FAE;
	Thu,  6 Aug 2020 16:09:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Z24yHVydmvj; Thu,  6 Aug 2020 16:09:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6807985429;
	Thu,  6 Aug 2020 16:09:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C13991BF287
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:09:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BCF9188574
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 16:09:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qwwdK58qD22E for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 16:09:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DA1628859B
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 16:09:05 +0000 (UTC)
Received: by mail-lj1-f169.google.com with SMTP id v4so42713479ljd.0
 for <devel@driverdev.osuosl.org>; Thu, 06 Aug 2020 09:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b+FOmc3x4TlSIosvK+g/xbYJM2PQZPI5ZqFQRC+ljXI=;
 b=u2YT/+arQ2RT6JROfq2KclPiQp4+Q216/ziCsMWXtr9rNVYLBKRtFK6ZbJSSZd9PYp
 5MqQNXTpoE134DxS/Ec4aZOqUZhhsNxTmENZl2EeRinjavid10hIqBUv6oodlANe2SwJ
 Kgbbr4M0hEbLoS3xuOqRoMJJeYe6WoZc+FcByAn/5tnb0Igg/cKQqjhCRvI1S/A6XGJX
 tT1cbjFaLMp6GR6G+c7MoR43IwUXP0mxYZkfLALzluzzkTyur3Tqos38pP4hyQb8sxYh
 QHLR4fmX4aH5ThtvTDuFmbwBgcAmc1pcTvKTdlrwiGhQyPcdbaphs4xVm8jECht9r5CL
 thww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b+FOmc3x4TlSIosvK+g/xbYJM2PQZPI5ZqFQRC+ljXI=;
 b=q4ORzOaOMB9sIrHLRznKTyVRdZEEK5OlFoi+pyWYkat8MYr8hrTCYD3YMt0AafOQRb
 otckVxXDYqyuxyX0oxJg5eyjjJ8lIPUHsRl+lybqAdeConduQFf/rmdDEzU1JYShoMmd
 x6OpjB9YB5BplFXOouAhF5IWsMrS79G9BMJYLaWxBGgXxwVfvUDIWHXC4sMlQC2cIqw3
 jouxwOWdBhHuA/fIhe56QSUtzHtyiLGofpXD7hXTdUHPNmJoVKx4iu3nW+n8yDJhelm2
 7xF+rxZxte3c57TSg+PAMOC/080pKf+dFkBWQh0cmoxwUW5EXWVCx/ObdbCPW/kTHZs6
 SYsQ==
X-Gm-Message-State: AOAM533tzmLxkOgCG2bsKT+rzVRBTD9dreiJYRTlzG9yDydLbKuHR5sm
 sBSSuGI38i3tp+d0K4bGplvvJfRq9m2FQ6RPyZ7Zsw==
X-Google-Smtp-Source: ABdhPJw3JV+p1U0VEzzIMl77foo8ILJLvSfoLsNoqG/VsjTgotZRib0SJ53kgAs7YyHWHvURuABt6bcvPtjKrx6CBT8=
X-Received: by 2002:a05:651c:543:: with SMTP id
 q3mr4132966ljp.145.1596730143553; 
 Thu, 06 Aug 2020 09:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000006925ea05a69d5bfb@google.com>
 <000000000000ecb92805ac33a761@google.com>
In-Reply-To: <000000000000ecb92805ac33a761@google.com>
From: Jann Horn <jannh@google.com>
Date: Thu, 6 Aug 2020 18:08:36 +0200
Message-ID: <CAG48ez0Rdut=HxSyKUCiCVU=zZJPR7YXcOfL3tRBXXwUS0iKxw@mail.gmail.com>
Subject: Re: WARNING in binder_transaction_buffer_release (2)
To: syzbot <syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com>, 
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>, 
 "Joel Fernandes (Google)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Todd Kjos <tkjos@android.com>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 6, 2020 at 1:19 PM syzbot
<syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com> wrote:
> syzbot suspects this issue was fixed by commit:
>
> commit 4b836a1426cb0f1ef2a6e211d7e553221594f8fc
> Author: Jann Horn <jannh@google.com>
> Date:   Mon Jul 27 12:04:24 2020 +0000
>
>     binder: Prevent context manager from incrementing ref 0
[...]
> dashboard link: https://syzkaller.appspot.com/bug?extid=e113a0b970b7b3f394ba
[...]
> If the result looks correct, please mark the issue as fixed by replying with:
>
> #syz fix: binder: Prevent context manager from incrementing ref 0

I think this issue still exists, syzbot probably just hit it in a
weird way that doesn't work anymore.

This warning:

case BINDER_TYPE_FD: {
        /*
         * No need to close the file here since user-space
         * closes it for for successfully delivered
         * transactions. For transactions that weren't
         * delivered, the new fd was never allocated so
         * there is no need to close and the fput on the
         * file is done when the transaction is torn
         * down.
         */
        WARN_ON(failed_at &&
                proc->tsk == current->group_leader);
} break;

can be false-positive if the sender and recipient of the transaction
are associated with the same task_struct. But there isn't really any
reason why you wouldn't be able to have sender and recipient in the
same process, as long as the binder_proc is different.
(binder_transaction() has a weird check that refuses transactions to
handle 0 based on task_struct equality - which IMO doesn't really make
sense -, but transactions to other handles can happen just fine even
if both ends are in the same task_struct.)

Maybe the best fix is just to rip out that WARN_ON()?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
