Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3FB310891
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:58:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E222286AE1;
	Fri,  5 Feb 2021 09:58:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2rLyconhE_7V; Fri,  5 Feb 2021 09:58:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3385986ACB;
	Fri,  5 Feb 2021 09:58:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD731BF4E2
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:58:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 87A5286ACB
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:58:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O4mIUsRMs_hy for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:58:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5B5FC86A75
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:58:39 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F3AD64E2C;
 Fri,  5 Feb 2021 09:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612519118;
 bh=nV/rbqwWRF8qM4CIyf4ANBmKaUDGONxRBkHMpb/7CR4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=suxX5FVBS+WooJ8axVdYhFfyaX4TTMrJP9y6L6NxvLOb22YUJK1w1qsAyy6vSL1p8
 WC4DhmtWEfw/bFhWsVLHvEUUYJ6kMLxYk8dbBMSsn+7qONou9MHKzqST1PRylbUKQs
 Jg9D26ueFHg0n4uFtR7jbEz/yFPmQaDGgHJf8PHU=
Date: Fri, 5 Feb 2021 10:58:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v3 1/7] seqnum_ops: Introduce Sequence Number Ops
Message-ID: <YB0WzBnLd+OcpxEE@kroah.com>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
 <23f6347a7bb9f902babe7351f71b23644035673d.1612314468.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23f6347a7bb9f902babe7351f71b23644035673d.1612314468.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, tony.luck@intel.com, keescook@chromium.org,
 rafael@kernel.org, peterz@infradead.org, corbet@lwn.net,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, james.morse@arm.com,
 linux-kselftest@vger.kernel.org, bp@alien8.de, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 03, 2021 at 11:11:57AM -0700, Shuah Khan wrote:
> +static inline u32 seqnum32_inc(struct seqnum32 *seq)
> +{
> +	atomic_t val = ATOMIC_INIT(seq->seqnum);
> +
> +	seq->seqnum = (u32) atomic_inc_return(&val);
> +	if (seq->seqnum >= UINT_MAX)
> +		pr_info("Sequence Number overflow %u detected\n",
> +			seq->seqnum);
> +	return seq->seqnum;

As Peter points out, this is doing doing what you think it is doing :(

Why do you not just have seq->seqnum be a real atomic variable?  Trying
to switch to/from one like this does not work as there is no
"atomic-ness" happening here at all.

Oh, and checkpatch should have complained about the extra ' ' in your
cast :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
