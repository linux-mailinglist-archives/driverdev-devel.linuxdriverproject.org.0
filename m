Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7CC4160F6
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Sep 2021 16:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3CB478435F;
	Thu, 23 Sep 2021 14:24:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-vg0fxcrgz4; Thu, 23 Sep 2021 14:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9B613840A3;
	Thu, 23 Sep 2021 14:24:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 584311BF35E
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 471686078D
 for <devel@linuxdriverproject.org>; Thu, 23 Sep 2021 14:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qA_WQkNIFYOl for <devel@linuxdriverproject.org>;
 Thu, 23 Sep 2021 14:24:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DF1176077E
 for <devel@driverdev.osuosl.org>; Thu, 23 Sep 2021 14:24:41 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 17A946109E;
 Thu, 23 Sep 2021 14:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1632407081;
 bh=i+5Z5W+ysrmxGWA8QlaVdyJvIyc+RACrUSbmAAuM9JI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AsHupSQO3swWI6AW3NmlJMfbKDCM9laOb0cxc+SozOYm0Z7TnLkXszimpK/PnwCEE
 0BiZscdIbsZYxlW50OE4mmZdFq2hT5zyuj7p+r/CNHKGv1xzjyCsPVkH4a1pkWD+ai
 I6whh89dqTvNl5ihf0zWQmSCcILYmhz8SzjoZDCg=
Date: Thu, 23 Sep 2021 16:24:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Cheng Chao <cs.os.kernel@gmail.com>
Subject: Re: [PATCH 4.9] staging: android: ion: fix page is NULL
Message-ID: <YUyOJ/TPelF7r5Va@kroah.com>
References: <CA+1SViD_my-MPyqXcQ2T=zxF8014u6N-n2Fqcbi9BJPfo3KaTA@mail.gmail.com>
 <20210923141814.1109472-1-cs.os.kernel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210923141814.1109472-1-cs.os.kernel@gmail.com>
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
Cc: devel@driverdev.osuosl.org, arve@android.com, stable@vger.kernel.org,
 riandrews@android.com, labbott@redhat.com, sumit.semwal@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 23, 2021 at 10:18:14PM +0800, Cheng Chao wrote:
> Fixes: commit e7f63771b60e ("ION: Sys_heap: Add cached pool to spead up cached buffer alloc")
> the commit e7f63771b60e introduced the bug which didn't test page which maybe NULL.
> and previous logic was right.
> 
> the e7f63771b60e has been merged in v4.8-rc3, only longterm 4.9.x has this bug,
> and other longterm/stable version have not.

<snip>

thanks for this, now queued up.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
