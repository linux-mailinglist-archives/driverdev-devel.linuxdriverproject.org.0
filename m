Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 916E629E9DD
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 12:01:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8D83686B66;
	Thu, 29 Oct 2020 11:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpqxZfaHYz35; Thu, 29 Oct 2020 11:01:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BD94866EF;
	Thu, 29 Oct 2020 11:01:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE99B1BF989
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 11:01:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5B8B8681D
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 11:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUCzNFRXpU5i for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 11:01:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2CC8C866EF
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 11:01:29 +0000 (UTC)
IronPort-SDR: Qle4mCWqoLE31POUsUXdWSz73xwTyY7vBau76IaujJLt2foUmhvmJ1b4pjZbK8tTByrv9LLHjs
 0WjskCMMfSBg==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="232594168"
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; d="scan'208";a="232594168"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 04:01:28 -0700
IronPort-SDR: eMaa5xi5SHl0QoC9tv13+Piq3djYIamYBMiQaFbl1c/iOE5i39IJaOdhqdXBa/iKUZAh9QJeOC
 2O+Mnu2m0A+w==
X-IronPort-AV: E=Sophos;i="5.77,429,1596524400"; d="scan'208";a="526694084"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 04:01:26 -0700
Received: from andy by smile with local (Exim 4.94)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1kY5hN-001C1w-7i; Thu, 29 Oct 2020 13:02:29 +0200
Date: Thu, 29 Oct 2020 13:02:29 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH v2] staging: fieldbus: Use %pM format specifier for MAC
 addresses
Message-ID: <20201029110229.GG4077@smile.fi.intel.com>
References: <20201027183427.25736-1-andriy.shevchenko@linux.intel.com>
 <CAGngYiUbgkCy_ar1P4+V_=Ndx2yyOQ__MWXwDkksATsi6KUn6Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGngYiUbgkCy_ar1P4+V_=Ndx2yyOQ__MWXwDkksATsi6KUn6Q@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 28, 2020 at 07:39:58PM -0400, Sven Van Asbroeck wrote:
> On Tue, Oct 27, 2020 at 2:34 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> >
> > +       return snprintf(buf, max_size, "%pM\n", response.addr);
> 
> Judging from a few Outreachy patches that have hit my inbox, snprintf() is
> considered unsafe in a sysfs_get callback. It should be replaced by
> scnprintf() or even better, sysfs_emit(), which was recently introduced
> to address sprintf-variant issues in sysfs callbacks.

It's already applied, I think you can send a follow up for above,
which is good point, but not the scope of the patch (although
they might have been unified together).

-- 
With Best Regards,
Andy Shevchenko


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
