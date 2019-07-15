Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8A769B7D
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 21:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A518685EAE;
	Mon, 15 Jul 2019 19:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SLCUQxBFxsuv; Mon, 15 Jul 2019 19:37:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25BD385E28;
	Mon, 15 Jul 2019 19:37:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4EB721BF393
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:36:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 499D487A4D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 19:36:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1cg4PX0uFglz for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 19:36:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9AFBA86D11
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 19:36:58 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id k8so8822176plt.3
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 12:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZMZFpCm9N/xOShc4hGeJhjqpU1dBVFQxn4gJ5Yr8VYU=;
 b=ouMD/x07ooCJnj+NYt5TApE5G94vM5KbLQmbdXlQVy+akuMZEEpCrtND7YKQG5YUeA
 SwDKVhCmMNrLmoEdYnhOUJT7p2Js7T5gKnlL5psag4uSjc/eacvG09R20QX9ob1r4KGQ
 JPUttDZsH8R58YIqWxPGf4pAOehWEDqdzpRPAvVxKz6f5hK1dym19x1TE2jRz8hHVpx0
 UqQueUQ86Wq4EhgMr8yelYxObVmxnTeT2kl+gzYOROR0JeUAJOE9lJYDracn4NTfoh3G
 4sWnaSWux8Tb332IFGX3aPQu0kyiBn2izgQl68gsJm9ydw4yE3c+5dgMn2bBWXbyvUpu
 ia4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZMZFpCm9N/xOShc4hGeJhjqpU1dBVFQxn4gJ5Yr8VYU=;
 b=CNLGqPWMFMDDYjypEs3VY1tJNzDUffr06wFHqviPf72HFJ27MzEM+1WmRwsjF7lcDA
 gWJca6D7XVWH1+n75khFlsILgGjtqx4Bop4cDC+T9laMIf2RtNtYPLbnBH75bZs5N0ae
 MG7vdiTq0tGkzQSAr8f50mDNJn69F/9EXZb2Q3hH47ZFD79wfGgL/WHQGeca20mTNick
 EBGLubp7ngwf0qGHlSLxPs3LanYcmV0Nrv21NokDHkCj6qGnXS/49Lxq2vmX8I5BEr6I
 hw8ahHYha1yW2vwOZQ5qYMHWUp8Tqmrxvt5x8Yygjx7Dsrv//qZSXmcUd+A0K0xcM1tB
 Cy1Q==
X-Gm-Message-State: APjAAAWVH1ELFkfkVjGA8pvI5l5cPkKru6XGfJ6gIld/LH9lghPrCCmG
 y5BBXbaJbVARYKZpwb8Tu7w=
X-Google-Smtp-Source: APXvYqxiXiuWWcy55kFQPdkmhXEuhD4sgNJY5WWi5qbrL1Ybmgv+FOQ8bkjHLfFA1omJ8iRmDA1Qtg==
X-Received: by 2002:a17:902:4aa3:: with SMTP id
 x32mr28971983pld.119.1563219418289; 
 Mon, 15 Jul 2019 12:36:58 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id n19sm18786840pfa.11.2019.07.15.12.36.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 12:36:57 -0700 (PDT)
Date: Tue, 16 Jul 2019 01:06:38 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: John Hubbard <jhubbard@nvidia.com>
Subject: Re: [PATCH] mm/gup: Use put_user_page*() instead of put_page*()
Message-ID: <20190715193638.GC21161@bharath12345-Inspiron-5559>
References: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
 <deea584f-2da2-8e1f-5a07-e97bf32c63bb@nvidia.com>
 <20190715065654.GA3716@bharath12345-Inspiron-5559>
 <1aeb21d9-6dc6-c7d2-58b6-279b1dfc523b@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1aeb21d9-6dc6-c7d2-58b6-279b1dfc523b@nvidia.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>, kvm@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, Alexei Starovoitov <ast@kernel.org>,
 Keith Busch <keith.busch@intel.com>, Max Filippov <jcmvbkbc@gmail.com>,
 devel@driverdev.osuosl.org, Dimitri Sivanich <sivanich@sgi.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 xdp-newbies@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-block@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>, Jens Axboe <axboe@kernel.dk>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, Enrico Weigelt <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 15, 2019 at 11:10:20AM -0700, John Hubbard wrote:
> On 7/14/19 11:56 PM, Bharath Vedartham wrote:
> > On Sun, Jul 14, 2019 at 04:33:42PM -0700, John Hubbard wrote:
> >> On 7/14/19 12:08 PM, Bharath Vedartham wrote:
> [...]
> >> 1. Pull down https://github.com/johnhubbard/linux/commits/gup_dma_core
> >> and find missing conversions: look for any additional missing 
> >> get_user_pages/put_page conversions. You've already found a couple missing 
> >> ones. I haven't re-run a search in a long time, so there's probably even more.
> >> 	a) And find more, after I rebase to 5.3-rc1: people probably are adding
> >> 	get_user_pages() calls as we speak. :)
> > Shouldn't this be documented then? I don't see any docs for using
> > put_user_page*() in v5.2.1 in the memory management API section?
> 
> Yes, it needs documentation. My first try (which is still in the above git
> repo) was reviewed and found badly wanting, so I'm going to rewrite it. Meanwhile,
> I agree that an interim note would be helpful, let me put something together.
> 
> [...]
> >>     https://github.com/johnhubbard/linux/commits/gup_dma_core
> >>
> >>     a) gets rebased often, and
> >>
> >>     b) has a bunch of commits (iov_iter and related) that conflict
> >>        with the latest linux.git,
> >>
> >>     c) has some bugs in the bio area, that I'm fixing, so I don't trust
> >>        that's it's safely runnable, for a few more days.
> > I assume your repo contains only work related to fixing gup issues and
> > not the main repo for gup development? i.e where gup changes are merged?
> 
> Correct, this is just a private tree, not a maintainer tree. But I'll try to
> keep the gup_dma_core branch something that is usable by others, during the
> transition over to put_user_page(), because the page-tracking patches are the
> main way to test any put_user_page() conversions.
> 
> As Ira said, we're using linux-mm as the real (maintainer) tree.
Thanks for the info! 
> 
> thanks,
> -- 
> John Hubbard
> NVIDIA
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
