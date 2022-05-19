Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD1F52D93D
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 May 2022 17:50:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 938AC8442D;
	Thu, 19 May 2022 15:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55iLi-00S44s; Thu, 19 May 2022 15:50:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F4BA8442C;
	Thu, 19 May 2022 15:50:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E247E1BF290
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 15:50:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CFD764018A
 for <devel@linuxdriverproject.org>; Thu, 19 May 2022 15:50:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jI9wkHoiXYnO for <devel@linuxdriverproject.org>;
 Thu, 19 May 2022 15:50:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 02BB44012A
 for <devel@driverdev.osuosl.org>; Thu, 19 May 2022 15:50:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D0F6661C1A;
 Thu, 19 May 2022 15:50:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA248C34100;
 Thu, 19 May 2022 15:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1652975449;
 bh=k0ngAhg/Z3ZQxhg7rV0/oPwjM35gchHoHZEW1gRBeBA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cy3munNdMyBLZ1tkla/JwMThbfl4pDGriqW7Dzzq89o31hihdxJgRH08avEQ8BZST
 LWrIWddTKSpAAWB/xiufwEXbJ7yeyc0bc8L+w8xUJCn9DvsDB8rqouODgXckPrVWDP
 w22PmmzG3CAKYnc5Y7+KtAG7Rfl/JHcPXYQFsbLA=
Date: Thu, 19 May 2022 17:50:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1] Binder: add TF_UPDATE_TXN
Message-ID: <YoZnVrU8Dih+urv6@kroah.com>
References: <20220519000623.1715899-1-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220519000623.1715899-1-dualli@chromium.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 maco@google.com, hridya@google.com, surenb@google.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 18, 2022 at 05:06:23PM -0700, Li Li wrote:
> From: Li Li <dualli@google.com>

Note, your subject does not say what TF_UPDATE_TXN is, so it's a bit
hard to determine what is happening here.  Can you clean that up a bit
and sumarize what this new addition does?

> 
> When the target process is busy, incoming oneway transactions are
> queued in the async_todo list. If the clients continue sending extra
> oneway transactions while the target process is frozen, this queue can
> become too large to accommodate new transactions. That's why binder
> driver introduced ONEWAY_SPAM_DETECTION to detect this situation. It's
> helpful to debug the async binder buffer exhausting issue, but the
> issue itself isn't solved directly.
> 
> In real cases applications are designed to send oneway transactions
> repeatedly, delivering updated inforamtion to the target process.
> Typical examples are Wi-Fi signal strength and some real time sensor
> data. Even if the apps might only care about the lastet information,
> all outdated oneway transactions are still accumulated there until the
> frozen process is thawed later. For this kind of situations, there's
> no existing method to skip those outdated transactions and deliver the
> latest one only.
> 
> This patch introduces a new transaction flag TF_UPDATE_TXN. To use it,
> use apps can set this new flag along with TF_ONE_WAY. When such an
> oneway transaction is to be queued into the async_todo list of a frozen
> process, binder driver will check if any previous pending transactions
> can be superseded by comparing their code, flags and target node. If
> such an outdated pending transaction is found, the latest transaction
> will supersede that outdated one. This effectively prevents the async
> binder buffer running out and saves unnecessary binder read workloads.
> 
> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c            | 90 ++++++++++++++++++++++++++++-
>  drivers/android/binder_trace.h      |  4 ++
>  include/uapi/linux/android/binder.h |  1 +

How was this tested? 

>  3 files changed, 92 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f3b639e89dd8..153486a32d69 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2594,6 +2594,60 @@ static int binder_fixup_parent(struct list_head *pf_head,
>  	return binder_add_fixup(pf_head, buffer_offset, bp->buffer, 0);
>  }
>  
> +/**
> + * binder_can_update_transaction() - Can a txn be superseded by an updated one?
> + * @t1: the pending async txn in the frozen process
> + * @t2: the new async txn to supersede the outdated pending one
> + *
> + * Return:  true if t2 can supersede t1
> + *          false if t2 can not supersede t1
> + */
> +static bool binder_can_update_transaction(struct binder_transaction *t1,
> +					  struct binder_transaction *t2)
> +{
> +	if ((t1->flags & t2->flags & (TF_ONE_WAY | TF_UPDATE_TXN))
> +			!= (TF_ONE_WAY | TF_UPDATE_TXN)
> +			|| t1->to_proc == NULL || t2->to_proc == NULL)
> +		return false;
> +	if (t1->to_proc->tsk == t2->to_proc->tsk && t1->code == t2->code
> +			&& t1->flags == t2->flags
> +			&& t1->buffer->pid == t2->buffer->pid
> +			&& t1->buffer->target_node->ptr
> +			== t2->buffer->target_node->ptr
> +			&& t1->buffer->target_node->cookie
> +			== t2->buffer->target_node->cookie)

Did checkpatch pass this?  Please always use --strict and fix up all the
issues that it reports as this is not a normal kernel coding style,
sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
