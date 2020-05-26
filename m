Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBCC1E1F2B
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 11:54:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ADB9C85F3E;
	Tue, 26 May 2020 09:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOSzOyrxjI7P; Tue, 26 May 2020 09:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 877B185C4A;
	Tue, 26 May 2020 09:54:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E9191BF28A
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 09:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7AF73883A4
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 09:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ndjXbjKMhdkF for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 09:54:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A87DA88265
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 09:54:22 +0000 (UTC)
IronPort-SDR: bGQUAzCLDfcEacb5i+E6YZmGun14ztxfvMjSMDaxn4O1ccFX4pp8+uMM02b7LdUxoIsiXLMiEq
 wzAf1gPp60qg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 02:54:21 -0700
IronPort-SDR: Io6Zd6dGjVbQA8JHHEL4Acncfj7EfPXJAfS/r5qYMmYC4+06Dd2im0qAXX/JNPxoP5tw2C+DvG
 Kmng4BPRYwaA==
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="302050012"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 02:54:20 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 9A870208B5; Tue, 26 May 2020 12:54:18 +0300 (EEST)
Date: Tue, 26 May 2020 12:54:18 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] media: atomisp: get rid of a warning message
Message-ID: <20200526095418.GO7618@paasikivi.fi.intel.com>
References: <4e3d3326483c74c9f8b181a51a4f4d195631c937.1590483215.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e3d3326483c74c9f8b181a51a4f4d195631c937.1590483215.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 26, 2020 at 10:53:57AM +0200, Mauro Carvalho Chehab wrote:
> There's a warning message about an unused code. The code that
> were using it were commented out, due to a problem causing the
> firmware load to fail on the machines we're using for testing.
> 
> Change the place where we're commenting the code out, in order
> to avoid the warning.
> 
> Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

Note that some of this may be needed to power on some parts of the
hardware on some platforms.

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
