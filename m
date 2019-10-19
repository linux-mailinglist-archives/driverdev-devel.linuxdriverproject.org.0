Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 885CDDD8CC
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 15:34:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4694B85FAA;
	Sat, 19 Oct 2019 13:34:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fPTTmSvgAUNY; Sat, 19 Oct 2019 13:34:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1432D85E43;
	Sat, 19 Oct 2019 13:34:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE9331BF342
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:34:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA8EB20523
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 13:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 05bsQaOR-PQi for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 13:34:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id B28E02036D
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 13:34:20 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iLos2-0000M5-QG; Sat, 19 Oct 2019 13:34:14 +0000
In-Reply-To: <20191018205631.248274-1-jannh@google.com>
Date: Sat, 19 Oct 2019 15:34:14 +0200
To: "Jann Horn" <jannh@google.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, =?utf-8?q?Arve_Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, "Todd Kjos" <tkjos@android.com>, "Martijn Coenen"
 <maco@android.com>, "Joel Fernandes" <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, <jannh@google.com>
From: "Christian Brauner" <christian.brauner@ubuntu.com>
Subject: Re: [PATCH 1/3] binder: Fix race between mmap() and
 binder_alloc_print_pages()
Message-Id: <BXTJFV9XU16K.1ARG78JWMXYE9@wittgenstein>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri Oct 18, 2019 at 10:56 PM Jann Horn wrote:
> binder_alloc_print_pages() iterates over
> alloc->pages[0..alloc->buffer_size-1] under alloc->mutex.
> binder_alloc_mmap_handler() writes alloc->pages and alloc->buffer_size
> without holding that lock, and even writes them before the last bailout
> point.
> 
> Unfortunately we can't take the alloc->mutex in the ->mmap() handler
> because mmap_sem can be taken while alloc->mutex is held.
> So instead, we have to locklessly check whether the binder_alloc has been
> fully initialized with binder_alloc_get_vma(), like in
> binder_alloc_new_buf_locked().
> 
> Fixes: 8ef4665aa129 ("android: binder: Add page usage in binder stats")
> Cc: stable@vger.kernel.org
> Signed-off-by: Jann Horn <jannh@google.com>

Ok, I see a smp_wmb() in binder_alloc_set_vma() which is called in
binder_alloc_mmap_handler() paired with a smp_rmb() in
binder_alloc_get_vma(). That makes sense to me.

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
