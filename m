Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F006854EDB
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 14:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F055E8651F;
	Tue, 25 Jun 2019 12:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E10C5bF1wBv5; Tue, 25 Jun 2019 12:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79C65860BF;
	Tue, 25 Jun 2019 12:29:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AC521BF41E
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 12:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 77A9887999
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 12:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6MWQDVnbHhYe for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 12:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7C498797A
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 12:29:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 05:29:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,415,1557212400"; d="scan'208";a="360380319"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 05:29:20 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 2FF99208BE; Tue, 25 Jun 2019 15:29:20 +0300 (EEST)
Date: Tue, 25 Jun 2019 15:29:20 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH] media: schedule removal for legacy staging drivers
Message-ID: <20190625122919.mapp664xooij5f75@paasikivi.fi.intel.com>
References: <0fed8053f3f3a45762f2547c8ebc4e0d2728abd0.1561463295.git.mchehab+samsung@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fed8053f3f3a45762f2547c8ebc4e0d2728abd0.1561463295.git.mchehab+samsung@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
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
 Mauro Carvalho Chehab <mchehab@infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 08:48:26AM -0300, Mauro Carvalho Chehab wrote:
> Keeping legacy problematic code forever is not a good idea.
> 
> So, let's schedule a date for those legacy stuff to rest in piece.
> 
> If someone wants to steps up and take them from the staging ostracism
> and do give them a rejuvenation shower in order to address the
> isues pointed on their TODO lists, be our guest!
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus
sakari.ailus@linux.intel.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
