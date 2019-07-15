Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A434C683C4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 08:59:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 390BF879DB;
	Mon, 15 Jul 2019 06:59:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxcDpSAazUJo; Mon, 15 Jul 2019 06:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C2FC8795A;
	Mon, 15 Jul 2019 06:59:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C024B1BF20D
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 06:59:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCD9820766
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 06:59:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZNkMHcM252Hk for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 06:59:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 4706A20113
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 06:59:37 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id t132so7230649pgb.9
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 23:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IwKOrj6wOs1CFDvdOT5gCaug974d+VVC2EWPEZyUC1Y=;
 b=t/+vMyBobZw0yRt1qj7jE3Hv3+ghewmbrlf1rvJGn+lPMgvyfvDx6cugAWNVxd8j97
 hVwx5mP2evT4/5buRUfwS8eLDCxI+aBX3bgCz20FFQApUJ56xzyc13BmxDzwNYE8jtdP
 5kVdnTfQCP2I6xoQWTBcnZRuiq5fxBeBK5pJ+ztIPKWpUD5GeFX4RFrdyOjovs9+vR3V
 xRzXOvvIagWzbmeCdNDvSLmFsoun9S1NnAZximqWbTF5UJU/N+cTCzk3SV4cVA5ph1fI
 G8NDPKhHyemJg5LOOz3NLKuEXNeAogyGjjXQq8sWXD2JtdeO3CnG6GLJ2pe09Z64g0rL
 eB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IwKOrj6wOs1CFDvdOT5gCaug974d+VVC2EWPEZyUC1Y=;
 b=UqoffDl8pHI7p8UFThgsbKYkvFFYzMADESlor1T35EtDd+Hadg/7rUrgMueXeFbW+B
 31xkiR2yZg61akdybvzSPeXTonY7pxV41XUMvCvTGKnNOxz6sXC8aVou+pGsKXOEf0id
 TMGGRFZDqsqNnL56MJlzxuWFdHAGgtj+niFS4m7xLO7giyglvYKPbW0T0jdZ+f+XS7Hw
 iz+JIX8dV8zmKEonJMES98EDGX5o5u1z73u0bGyBm2O6Tem1DK9l2oQqWICX82SsoQFt
 n44diJTPVWsn7ab9jIimSnWxsAeLiBIbppljL704JlNpe3hoA4gevyAUI4Htl/j40/Bb
 /PMA==
X-Gm-Message-State: APjAAAV0nJGL5I2vNkFeacfO8m8CxJ2LNwxcpWoeeP04E7nxXUG9Bmqf
 nF9e9+B6b0iuIXZ2hEmL5Z8=
X-Google-Smtp-Source: APXvYqxlTY9pqlj/BPGdaqjVxWccUIuIsUVjY5d4MIOOEnUblRLiyLEc5qKix+00afDAkA/xNHMT2g==
X-Received: by 2002:a63:224a:: with SMTP id t10mr25187948pgm.289.1563173976925; 
 Sun, 14 Jul 2019 23:59:36 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.33])
 by smtp.gmail.com with ESMTPSA id o130sm27438459pfg.171.2019.07.14.23.59.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 23:59:36 -0700 (PDT)
Date: Mon, 15 Jul 2019 12:29:17 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: Re: [PATCH] mm/gup: Use put_user_page*() instead of put_page*()
Message-ID: <20190715065917.GB3716@bharath12345-Inspiron-5559>
References: <1563131456-11488-1-git-send-email-linux.bhar@gmail.com>
 <018ee3d1-e2f0-ca12-9f63-945056c09985@kernel.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <018ee3d1-e2f0-ca12-9f63-945056c09985@kernel.dk>
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
 John Fastabend <john.fastabend@gmail.com>,
 =?iso-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@intel.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 xdp-newbies@vger.kernel.org, Jesper Dangaard Brouer <hawk@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, jhubbard@nvidia.com,
 linux-block@vger.kernel.org, Alexios Zavras <alexios.zavras@intel.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, bpf@vger.kernel.org,
 Magnus Karlsson <magnus.karlsson@intel.com>, linux-mm@kvack.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, Enrico Weigelt <info@metux.net>,
 "David S. Miller" <davem@davemloft.net>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 14, 2019 at 08:33:57PM -0600, Jens Axboe wrote:
> On 7/14/19 1:08 PM, Bharath Vedartham wrote:
> > diff --git a/fs/io_uring.c b/fs/io_uring.c
> > index 4ef62a4..b4a4549 100644
> > --- a/fs/io_uring.c
> > +++ b/fs/io_uring.c
> > @@ -2694,10 +2694,9 @@ static int io_sqe_buffer_register(struct io_ring_ctx *ctx, void __user *arg,
> >   			 * if we did partial map, or found file backed vmas,
> >   			 * release any pages we did get
> >   			 */
> > -			if (pret > 0) {
> > -				for (j = 0; j < pret; j++)
> > -					put_page(pages[j]);
> > -			}
> > +			if (pret > 0)
> > +				put_user_pages(pages, pret);
> > +
> >   			if (ctx->account_mem)
> >   				io_unaccount_mem(ctx->user, nr_pages);
> >   			kvfree(imu->bvec);
> 
> You handled just the failure case of the buffer registration, but not
> the actual free in io_sqe_buffer_unregister().
> 
> -- 
> Jens Axboe
Yup got it! Thanks! I won't be sending a patch again as fs/io_uring.c
may have larger local changes for put_user_pages.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
