Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0A1E1C2A
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 09:26:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D3ACC22763;
	Tue, 26 May 2020 07:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ThTH0tjsHD+r; Tue, 26 May 2020 07:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B1E5203A6;
	Tue, 26 May 2020 07:26:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE63A1BF263
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:26:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E7CDE20134
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:26:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AL1-kukgg+1S for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 07:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 11D69203A6
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 07:26:09 +0000 (UTC)
IronPort-SDR: M95uJIXW+5cb4vAYGz915EE9FwEsUvV6PWCvd+6ZncWSf0vcqnlYJ3R/4QCbe3Vp3pqm+YW4MZ
 krr8oMZADJpw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 00:26:08 -0700
IronPort-SDR: VNLNgkiX33KZeIe629hnOU4PRAmg3aEUv7weVqJM5N1WKBt7nkcgxQ3TF1AhMStyy3L3BV4bmh
 kzwBMtoqiWvA==
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="310181970"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 00:26:07 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 6DAA7208B5; Tue, 26 May 2020 10:26:05 +0300 (EEST)
Date: Tue, 26 May 2020 10:26:05 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 09/11] media: atomisp: partially get rid of one
 abstraction layer
Message-ID: <20200526072605.GJ7618@paasikivi.fi.intel.com>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
 <9c0522e86c0d858d7268621e9ad398df9c1f9e06.1590389536.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c0522e86c0d858d7268621e9ad398df9c1f9e06.1590389536.git.mchehab+huawei@kernel.org>
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

Hi Mauro,

On Mon, May 25, 2020 at 08:56:08AM +0200, Mauro Carvalho Chehab wrote:
> The very same macros are defined as CSS_foo and IA_CSS_foo.
> 
> Remove this abstraction, as it just make things confusing,
> for no good reason.

I think this boils down to which prefix should the uAPI structs of this
driver use. I'd prefer atomisp_something, ia_css has been used internally,
and that probably has been there in later firmware versions (vs. just css).

At this point removing the duplication makes sense though, so I'm not
proposing changes here.

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
