Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0D127502E
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 07:10:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D406872F7;
	Wed, 23 Sep 2020 05:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sA3rffah718t; Wed, 23 Sep 2020 05:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF845872DC;
	Wed, 23 Sep 2020 05:10:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E9B1B1BF863
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 05:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E636A872DC
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 05:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSSpuBfRaDqk for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 05:10:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B305872D3
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 05:10:08 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3950F21941;
 Wed, 23 Sep 2020 05:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600837807;
 bh=tTgmoQ8WAIDqb0vLRAcBgAkHFi6g5HuRQSPr5H4Pduk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q3LzTJGXCkLJ/2TZFYkn889BGPESGk7bKQEJOlMhADRceQF76fHriVkxMWo81devO
 xgv8oJUhtXkwCPCxuNJrmqv+NlM8PTc7bnOMr1lMUXivvhms5hF02CLnAkn4b0od5j
 cXa0hUSnA06U5jYBwIIAmi5PwGgN7uVdGvrcFR/E=
Date: Wed, 23 Sep 2020 07:10:27 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [RFC PATCH 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic
Message-ID: <20200923051027.GA2578443@kroah.com>
References: <cover.1600816121.git.skhan@linuxfoundation.org>
 <4fe28fc5f315657e4af276b8a3c71d80a5eaa379.1600816121.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4fe28fc5f315657e4af276b8a3c71d80a5eaa379.1600816121.git.skhan@linuxfoundation.org>
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
 surenb@google.com, linux-kernel@vger.kernel.org, hridya@google.com,
 arve@android.com, joel@joelfernandes.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 22, 2020 at 07:43:36PM -0600, Shuah Khan wrote:
> counter_atomic is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> stats tracks per-process binder statistics. Unsure if there is a chance
> of this overflowing, other than stats getting reset to 0. Convert it to
> use counter_atomic.
> 
> binder_transaction_log:cur is used to keep track of the current log entry
> location. Overflow is handled in the code. Since it is used as a
> counter, convert it to use counter_atomic.
> 
> This conversion doesn't change the oveflow wrap around behavior.
> 
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>
> ---
>  drivers/android/binder.c          | 41 ++++++++++++++++---------------
>  drivers/android/binder_internal.h |  3 ++-
>  2 files changed, 23 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f936530a19b0..11a0407c46df 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -66,6 +66,7 @@
>  #include <linux/syscalls.h>
>  #include <linux/task_work.h>
>  #include <linux/sizes.h>
> +#include <linux/counters.h>
>  
>  #include <uapi/linux/android/binder.h>
>  #include <uapi/linux/android/binderfs.h>
> @@ -172,22 +173,22 @@ enum binder_stat_types {
>  };
>  
>  struct binder_stats {
> -	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
> -	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
> -	atomic_t obj_created[BINDER_STAT_COUNT];
> -	atomic_t obj_deleted[BINDER_STAT_COUNT];
> +	struct counter_atomic br[_IOC_NR(BR_FAILED_REPLY) + 1];
> +	struct counter_atomic bc[_IOC_NR(BC_REPLY_SG) + 1];
> +	struct counter_atomic obj_created[BINDER_STAT_COUNT];
> +	struct counter_atomic obj_deleted[BINDER_STAT_COUNT];

These are just debugging statistics, no reason they have to be atomic
variables at all and they should be able to just be "struct counter"
variables instead.

thanks for looking into all of these!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
