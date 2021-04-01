Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5A8351348
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 12:20:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04095414D2;
	Thu,  1 Apr 2021 10:20:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ip5pjq_Va2oR; Thu,  1 Apr 2021 10:20:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A422440F95;
	Thu,  1 Apr 2021 10:20:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40D971BF3C9
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3020D8488E
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:20:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2HnX55K_aOcH for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 10:20:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6B6C4836CE
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 10:20:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 978DE61056;
 Thu,  1 Apr 2021 10:20:11 +0000 (UTC)
Date: Thu, 1 Apr 2021 12:20:07 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Xie Yongji <xieyongji@bytedance.com>
Subject: Re: [PATCH 0/2] Export receive_fd() to modules and do some cleanups
Message-ID: <20210401102007.jalrkgxk4vevfkjd@wittgenstein>
References: <20210401090932.121-1-xieyongji@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401090932.121-1-xieyongji@bytedance.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, keescook@chromium.org,
 gregkh@linuxfoundation.org, jasowang@redhat.com, sargun@sargun.me,
 hch@infradead.org, hridya@google.com, arve@android.com,
 viro@zeniv.linux.org.uk, joel@joelfernandes.org, linux-fsdevel@vger.kernel.org,
 maco@android.com, surenb@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 05:09:30PM +0800, Xie Yongji wrote:
> This series starts from Christian's comments on the series[1].
> We'd like to export receive_fd() which can not only be used by
> our module in the series[1] but also allow further cleanups
> like patch 2 does.
> 
> Now this series is based on Christoph's patch[2].
> 
> [1] https://lore.kernel.org/linux-fsdevel/20210331080519.172-1-xieyongji@bytedance.com/
> [2] https://lore.kernel.org/linux-fsdevel/20210325082209.1067987-2-hch@lst.de
> 
> Xie Yongji (2):
>   file: Export receive_fd() to modules
>   binder: Use receive_fd() to receive file from another process
> 
>  drivers/android/binder.c | 4 ++--
>  fs/file.c                | 6 ++++++
>  include/linux/file.h     | 7 +++----

Hm, I think we're still talking a bit past each other.
I'll try to illustrate what I mean in a patch series soon.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
