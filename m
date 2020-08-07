Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE4523EE95
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 16:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD7C98739F;
	Fri,  7 Aug 2020 14:06:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i6ueNjTHhGKC; Fri,  7 Aug 2020 14:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AFD6487386;
	Fri,  7 Aug 2020 14:06:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6DF481BF312
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 14:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6A3DC87374
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 14:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R25677Cd5d94 for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 14:06:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 908CB87336
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 14:06:27 +0000 (UTC)
Received: from ip5f5af08c.dynamic.kabel-deutschland.de ([95.90.240.140]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1k430o-0007uZ-AT; Fri, 07 Aug 2020 14:06:22 +0000
Date: Fri, 7 Aug 2020 16:06:21 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH] binder: Remove bogus warning on failed same-process
 transaction
Message-ID: <20200807140621.lrruiojgsax42hze@wittgenstein>
References: <20200806165359.2381483-1-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200806165359.2381483-1-jannh@google.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Hridya Valsaraju <hridya@google.com>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 06, 2020 at 06:53:59PM +0200, Jann Horn wrote:
> While binder transactions with the same binder_proc as sender and recipient
> are forbidden, transactions with the same task_struct as sender and
> recipient are possible (even though currently there is a weird check in
> binder_transaction() that rejects them in the target==0 case).
> Therefore, task_struct identities can't be used to distinguish whether
> the caller is running in the context of the sender or the recipient.
> 
> Since I see no easy way to make this WARN_ON() useful and correct, let's
> just remove it.
> 
> Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")
> Reported-by: syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com
> Signed-off-by: Jann Horn <jannh@google.com>
> ---

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>

Thanks!
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
