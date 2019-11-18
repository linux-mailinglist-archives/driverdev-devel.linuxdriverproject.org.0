Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E11451003E1
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 12:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E899585C86;
	Mon, 18 Nov 2019 11:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EULqkEig9BFl; Mon, 18 Nov 2019 11:26:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6E7E885C19;
	Mon, 18 Nov 2019 11:26:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7317F1BF32D
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 11:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F70A87C9A
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 11:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id APgpLfXCETke for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 11:26:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6355E87C88
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 11:26:26 +0000 (UTC)
Received: from localhost (unknown [89.205.134.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93AFF2068D;
 Mon, 18 Nov 2019 11:26:25 +0000 (UTC)
Date: Mon, 18 Nov 2019 12:26:23 +0100
From: Greg KH <greg@kroah.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: Re: [PATCH 04/15] staging/android/ion: delete dma_buf->kmap/unmap
 implemenation
Message-ID: <20191118112623.GD156486@kroah.com>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-5-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 18, 2019 at 11:35:25AM +0100, Daniel Vetter wrote:
> There's no callers in-tree anymore.
> 
> For merging probably best to stuff this into drm-misc, since that's
> where the dma-buf heaps will land too. And the resulting conflict
> hopefully ensures that dma-buf heaps wont have a new ->kmap/unmap
> implemenation.
> 
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Laura Abbott <labbott@redhat.com>
> Cc: Sumit Semwal <sumit.semwal@linaro.org>
> Cc: devel@driverdev.osuosl.org
> Cc: linaro-mm-sig@lists.linaro.org
> ---
>  drivers/staging/android/ion/ion.c | 14 --------------
>  1 file changed, 14 deletions(-)

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
