Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C1B3114C6
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 23:16:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3EE586C11;
	Fri,  5 Feb 2021 22:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PlguEWAhVHJ; Fri,  5 Feb 2021 22:16:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5E2086BEF;
	Fri,  5 Feb 2021 22:16:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E4A521BF576
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E136486BEF
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTlKij8s2k3q for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 22:16:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8739186BED
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 22:16:24 +0000 (UTC)
IronPort-SDR: bhtyXQTiwZPvnt8HblJmWwhT2zwdpvVHLPySnCJSiEQsr1xXiRYf/tHvysUroH1sTxTp6suQK0
 jS4RwbB6baDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9886"; a="181643334"
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="181643334"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 14:16:23 -0800
IronPort-SDR: NRaIsHFlw3uFgHarMm4gK9o7SP+5teoIs0kpMxEdiegNa2O3M7s2Wf+xkk6NnQ8XS9giwlZgWq
 Vu92meHKWIDA==
X-IronPort-AV: E=Sophos;i="5.81,156,1610438400"; d="scan'208";a="394033953"
Received: from agluck-desk2.sc.intel.com (HELO
 agluck-desk2.amr.corp.intel.com) ([10.3.52.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2021 14:16:23 -0800
Date: Fri, 5 Feb 2021 14:16:21 -0800
From: "Luck, Tony" <tony.luck@intel.com>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v3 1/7] seqnum_ops: Introduce Sequence Number Ops
Message-ID: <20210205221621.GA74059@agluck-desk2.amr.corp.intel.com>
References: <cover.1612314468.git.skhan@linuxfoundation.org>
 <23f6347a7bb9f902babe7351f71b23644035673d.1612314468.git.skhan@linuxfoundation.org>
 <YB0WzBnLd+OcpxEE@kroah.com>
 <2fe15f90-2e33-d018-0d5d-cabe3846ed98@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2fe15f90-2e33-d018-0d5d-cabe3846ed98@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, keescook@chromium.org, rafael@kernel.org,
 peterz@infradead.org, Greg KH <gregkh@linuxfoundation.org>, corbet@lwn.net,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, james.morse@arm.com,
 linux-kselftest@vger.kernel.org, bp@alien8.de, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 05, 2021 at 01:03:18PM -0700, Shuah Khan wrote:
> On 2/5/21 2:58 AM, Greg KH wrote:
> > On Wed, Feb 03, 2021 at 11:11:57AM -0700, Shuah Khan wrote:
> > > +static inline u32 seqnum32_inc(struct seqnum32 *seq)
> > > +{
> > > +	atomic_t val = ATOMIC_INIT(seq->seqnum);
> > > +
> > > +	seq->seqnum = (u32) atomic_inc_return(&val);
> > > +	if (seq->seqnum >= UINT_MAX)
> > > +		pr_info("Sequence Number overflow %u detected\n",
> > > +			seq->seqnum);
> > > +	return seq->seqnum;
> > 
> > As Peter points out, this is doing doing what you think it is doing :(
> > 
> > Why do you not just have seq->seqnum be a real atomic variable?  Trying
> > to switch to/from one like this does not work as there is no
> > "atomic-ness" happening here at all.
> > 
> 
> Yes. This is sloppy on my part. As Peter and Rafael also pointed. I have
> to start paying more attention to my inner voice.

What's the end goal with this sequence number type?

Apart from the functional issues with this code already pointed
out, it doesn't seem overly useful to just print the *value* of
the sequence number when it hits the max value.  It might be
more helpful if each instance had a seq->name field that is
used here to tell the user *which* user of sequence numbers
had seen the wrap arounnd.

But that just begs the question of what should users of sequence
numbers do when wrap around occurs? Any user that can run through
sequence numbers at greater than 10 Hz is going to cause a problem
for systems that stay running for years.

Maybe you should force users to code for wraparound by initializing
to something like 0xffffff00 so that they all get a wraparound event
quickly, rather than slowly, (same as was done with jiffies)?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
