Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6938120C
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Aug 2019 08:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0675787B2E;
	Mon,  5 Aug 2019 06:02:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpCgCVM9TBqu; Mon,  5 Aug 2019 06:02:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55D6187A9C;
	Mon,  5 Aug 2019 06:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E87121BF48C
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 06:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E419A20431
 for <devel@linuxdriverproject.org>; Mon,  5 Aug 2019 06:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 554Qy+vJSrn4 for <devel@linuxdriverproject.org>;
 Mon,  5 Aug 2019 06:02:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E378A20392
 for <devel@driverdev.osuosl.org>; Mon,  5 Aug 2019 06:02:25 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B36B206C1;
 Mon,  5 Aug 2019 06:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564984945;
 bh=yQX7YAlJ45FZwBgTl9rdH0N9X0UpxWT3t+wfvZobwSM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zSXgYL75mNTG7YL12V8C5eDoiC89Hf9Kaiia7s6JjkSUHCF3x6/Ak018i3ohQQ3O1
 C+6GAAKghAvtLBKxUDxhRUd0DUmvkM7dGI43mf/Q1DPFk7szO3cfjFWxrD2gdHXb7D
 6dlcetc0SFH7Yf9LWrJm/9N7xnUQ/WeVSCP7gH38=
Date: Mon, 5 Aug 2019 08:02:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Ajay Kaher <akaher@vmware.com>
Subject: Re: [PATCH v6 0/3] [v4.9.y] coredump: fix race condition between
 mmget_not_zero()/get_task_mm() and core dumping
Message-ID: <20190805060223.GA4947@kroah.com>
References: <1564891168-30016-1-git-send-email-akaher@vmware.com>
 <1564891168-30016-4-git-send-email-akaher@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564891168-30016-4-git-send-email-akaher@vmware.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mhocko@suse.com, srinidhir@vmware.com, peterx@redhat.com, oleg@redhat.com,
 linux-mm@kvack.org, amakhalov@vmware.com, sean.hefty@intel.com,
 srivatsa@csail.mit.edu, srivatsab@vmware.com, aarcange@redhat.com,
 linux-rdma@vger.kernel.org, rppt@linux.ibm.com, dledford@redhat.com,
 jgg@mellanox.com, hal.rosenstock@gmail.com, devel@driverdev.osuosl.org,
 jannh@google.com, vsirnapalli@vmware.com, leonro@mellanox.com,
 riandrews@android.com, viro@zeniv.linux.org.uk, yishaih@mellanox.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, arve@android.com,
 jglisse@redhat.com, bvikas@vmware.com, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, matanb@mellanox.com, torvalds@linux-foundation.org,
 mike.kravetz@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 04, 2019 at 09:29:28AM +0530, Ajay Kaher wrote:
> coredump: fix race condition between mmget_not_zero()/get_task_mm()
> and core dumping
> 
> [PATCH v5 1/3]:
> Backporting of commit 04f5866e41fb70690e28397487d8bd8eea7d712a upstream.
> 
> [PATCH v5 2/3]:
> Extension of commit 04f5866e41fb to fix the race condition between
> get_task_mm() and core dumping for IB->mlx4 and IB->mlx5 drivers.
> 
> [PATCH v5 3/3]
> Backporting of commit 59ea6d06cfa9247b586a695c21f94afa7183af74 upstream.
> 
> [diff from v5]:
> - Recreated [PATCH v6 1/3], to solve patch apply error.

Now queued up, let's see what breaks :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
