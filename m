Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F57F35130F
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Apr 2021 12:13:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 713004054F;
	Thu,  1 Apr 2021 10:13:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id liOE7cdOmia4; Thu,  1 Apr 2021 10:13:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AFB6240528;
	Thu,  1 Apr 2021 10:13:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 206C01BF3C9
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:13:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C10B84A03
 for <devel@linuxdriverproject.org>; Thu,  1 Apr 2021 10:13:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=bytedance-com.20150623.gappssmtp.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Igc7tUWWrw_Z for <devel@linuxdriverproject.org>;
 Thu,  1 Apr 2021 10:13:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA6A3849ED
 for <devel@driverdev.osuosl.org>; Thu,  1 Apr 2021 10:13:03 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id l4so2021841ejc.10
 for <devel@driverdev.osuosl.org>; Thu, 01 Apr 2021 03:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bytedance-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xtFfJN2reAn9UO8mOQ0mmSXpHJo5c3j1q/3mUQUptM4=;
 b=hbq03KlLdPC3F4WEFhl1Vs7y81/OLBYEvMeu7lK36E5ULiTBH4TywOGKEHGVWYtFJE
 sup+t+QOmVM0U2SXPQQjJnbhbhrxiLMgn4rlzccZM2t18QE9HDykPnL2XcrqKdEEgLAD
 oDON3PyYuvj4Tpi6cB8+FHPlWU6MJovhNzkBys7lZAuSm7hgD0NMOq3B9ercZkdNi5wo
 0s5isMGxmN7FZ3MQpPzpVOGjed29s+8ulBwdV5g7lDuEXnDeWzopvMIskqGl1YjWqdNA
 8wceBnr0h6gSC10eo2jxe2ZJQc4Ow1mnaUDAN3gSY9SrvzQifecfejjkQIhfnlI2g9ze
 Xbcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xtFfJN2reAn9UO8mOQ0mmSXpHJo5c3j1q/3mUQUptM4=;
 b=VHeHK8+WdZ+JK8gzZVNh8lfSbSd50FbQ209BvJVG3CG83q/YfVzmOh6u0tZcyQa44N
 f7+3AQmaQbekcansAwP76BmN2+DB1hIUXS5S0Gnxdao0KP3MRivfLFjjEwszUe+9lPpt
 mNf+NX9bPTzrZ4LFmgxj1H8U6Cr71PmRhooopM7Bz45Yvdw0K2EncIJCqUgJZlygMn5f
 wJPPS7nsqJyl0LF1l8GXbSxnhyN4hr8x2zYhWHoz0Jc0kW+UDP/7Kb4qBj7Ruiq1j5jR
 wMKtBxiesn1DZj2UQsjmG1KicSeBuc5cdiwF7KwzVd4dwpVLmUzEUHFO632k+40uBJUO
 RKYA==
X-Gm-Message-State: AOAM530hBOqkjhjvX3uGxHFi2RfjPQQ6vgszkUqbPRz1Yc4lOZf25TQY
 rgds7a8Ng43lfw2nwqbHY94+dgEGlAIYKMNUyUo+
X-Google-Smtp-Source: ABdhPJz1ndUd+wOex9EqS6cQUu24aQ1f5kSBFaVQ8y0uzF9QayqHXtgmJN6KMf8aLpGttyQsZp7j268eAWGXL9Jov04=
X-Received: by 2002:a17:907:1749:: with SMTP id
 lf9mr8242084ejc.174.1617271981875; 
 Thu, 01 Apr 2021 03:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210401090932.121-1-xieyongji@bytedance.com>
 <20210401090932.121-3-xieyongji@bytedance.com>
 <YGWYZYbBzglUCxB2@kroah.com>
In-Reply-To: <YGWYZYbBzglUCxB2@kroah.com>
From: Yongji Xie <xieyongji@bytedance.com>
Date: Thu, 1 Apr 2021 18:12:51 +0800
Message-ID: <CACycT3ux9NVu_L=Vse7v-xbwE-K0-HT-e-Ei=yHOQmF66nGjeQ@mail.gmail.com>
Subject: Re: Re: [PATCH 2/2] binder: Use receive_fd() to receive file from
 another process
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

On Thu, Apr 1, 2021 at 5:54 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Apr 01, 2021 at 05:09:32PM +0800, Xie Yongji wrote:
> > Use receive_fd() to receive file from another process instead of
> > combination of get_unused_fd_flags() and fd_install(). This simplifies
> > the logic and also makes sure we don't miss any security stuff.
>
> But no logic is simplified here, and nothing is "missed", so I do not
> understand this change at all.
>

I noticed that we have security_binder_transfer_file() when we
transfer some fds. I'm not sure whether we need something like
security_file_receive() here?

Thanks,
Yongji
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
