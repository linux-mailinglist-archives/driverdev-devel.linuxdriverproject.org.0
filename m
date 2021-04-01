Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9B53512BF
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 11:53:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 20F4440551;
	Thu,  1 Apr 2021 09:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ve3qlsV30B4P; Thu,  1 Apr 2021 09:53:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CA1840528;
	Thu,  1 Apr 2021 09:53:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4FFE1BF85D
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B142584984
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 09:53:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id apn1Ojdz3QDU for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 09:53:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C93C784A2F
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 09:53:32 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C0A2061056;
 Thu,  1 Apr 2021 09:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617270812;
 bh=uWjbvTO2WwgODclJI58uaXmPHckyqLbVbTRDI2A+ceM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w+4quU5PU1udpHsVgN0JN+IN8KXxML9/KwALZxKFxr30vDrLYB4pepnKSiWGYCx6Z
 AZs8eEt6hnUUOJ6L9LrF/8RBxhwOiDZvAVszLBzzrpa5pHoq83VOFiYu7FA2NmAfAF
 3IFcWjv5AHaJyLG0qKzs61Obbsb9KaDph9ccbrKk=
Date: Thu, 1 Apr 2021 11:53:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Xie Yongji <xieyongji@bytedance.com>
Subject: Re: [PATCH 0/2] Export receive_fd() to modules and do some cleanups
Message-ID: <YGWYDog+YhgeD1mS@kroah.com>
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
 surenb@google.com, jasowang@redhat.com, sargun@sargun.me, hch@infradead.org,
 hridya@google.com, arve@android.com, viro@zeniv.linux.org.uk,
 joel@joelfernandes.org, linux-fsdevel@vger.kernel.org,
 christian.brauner@ubuntu.com, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 01, 2021 at 05:09:30PM +0800, Xie Yongji wrote:
> This series starts from Christian's comments on the series[1].
> We'd like to export receive_fd() which can not only be used by
> our module in the series[1] but also allow further cleanups
> like patch 2 does.

But binder can not be a module, so why do you need this?

confused,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
