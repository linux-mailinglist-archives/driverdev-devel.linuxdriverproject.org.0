Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCBC1FAD1A
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 11:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CF0D89455;
	Tue, 16 Jun 2020 09:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KpO8TNl+Jwgd; Tue, 16 Jun 2020 09:51:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D9FE8939A;
	Tue, 16 Jun 2020 09:51:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C81151BF29F
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 09:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C45A2886CA
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 09:51:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qvV-rZfkNgRX for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 09:51:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9321886C4
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 09:51:39 +0000 (UTC)
IronPort-SDR: yaNWMSmHv4Mf44is1Re501wEL7KiKFEY5mQLiYCRUmuSFTb6D6i7VEdmY6bQS0F6Ie3Z4uZsZP
 HFHaYYxad1kA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 02:51:39 -0700
IronPort-SDR: g/2dIkBA3me8YZgOL9fOEj6c3/Dp033UmA+/mBWmblNC6+rNiEKBxvhulqKJ4o2DcGHItxZku6
 lza7BwNcPMAw==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="420708776"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 02:51:37 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id B64112072F; Tue, 16 Jun 2020 12:51:35 +0300 (EEST)
Date: Tue, 16 Jun 2020 12:51:35 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] media: atomisp: Fix a pointer math problem in
 dump_sp_dmem()
Message-ID: <20200616095135.GX16711@paasikivi.fi.intel.com>
References: <20200616092728.GB11940@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616092728.GB11940@mwanda>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 kernel-janitors@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 16, 2020 at 12:27:28PM +0300, Dan Carpenter wrote:
> The "io_virt_addr" variable is a u32 pointer and it should be
> incremented by one instead of four.  The current code will dump bogus
> data and read beyond the end of the buffer.
> 
> Fixes: 69a03e36c711 ("media: atomisp: get rid of an iomem abstraction layer")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
