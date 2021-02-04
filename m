Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E45230EF79
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Feb 2021 10:21:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EA9187140;
	Thu,  4 Feb 2021 09:21:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wHnwI153Uv0m; Thu,  4 Feb 2021 09:21:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E3C487101;
	Thu,  4 Feb 2021 09:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28B3A1BF2CD
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 09:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2552D86AEF
 for <devel@linuxdriverproject.org>; Thu,  4 Feb 2021 09:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XxX7evOgEHyB for <devel@linuxdriverproject.org>;
 Thu,  4 Feb 2021 09:20:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5A32286B27
 for <devel@driverdev.osuosl.org>; Thu,  4 Feb 2021 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MIQB8t7kt6mqNl1Bn84T0udleZca2EnAi6Ix4VEe7UU=; b=Ju+atNzUB4pbSQUpXYsoUH6mdS
 4yZRAnUcMYHcFVUlsCe+OaTvKgstwDY9MRqbxpqIaIWDedoHcx0IjrfsFzXU066i+a7had7WGFX/Q
 DJVyHTOuDK+36bBvD1DkxbieQ5DBkhwCc4oMaWShWt3nXFq4AtNIFdyQKlZ399PZ+NHVnpGhaRPZy
 PkrGX1x8EVLXCDb75ANO4ysv2iExZXla4J3SayMpoQv2ygSa9k+mlYlPyiemQ/KXs1xM4OziancWJ
 KFn7FTc5jW3xbQ2Qlr49ZcMaeJFU1YnA8FxpA/9LWT0X5jDZrIOXhOjLhturLaUtS/pbMohdYLd8b
 /1G4+GaQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1l7aoi-000eV4-QS; Thu, 04 Feb 2021 09:20:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id AAA06301CC4;
 Thu,  4 Feb 2021 10:20:45 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 920B7213D2E27; Thu,  4 Feb 2021 10:20:45 +0100 (CET)
Date: Thu, 4 Feb 2021 10:20:45 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v3 1/7] seqnum_ops: Introduce Sequence Number Ops
Message-ID: <YBu8bRth+4wyvql/@hirez.programming.kicks-ass.net>
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
 rafael@kernel.org, gregkh@linuxfoundation.org, corbet@lwn.net,
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
> +}

What kind of broken garbage is that?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
