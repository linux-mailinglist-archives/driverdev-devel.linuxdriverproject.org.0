Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8200B2975C2
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Oct 2020 19:28:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B071F21538;
	Fri, 23 Oct 2020 17:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jFZHPAZZ05ut; Fri, 23 Oct 2020 17:28:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 93B0F214EC;
	Fri, 23 Oct 2020 17:28:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B0A71BF350
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D8A12094B
 for <devel@linuxdriverproject.org>; Fri, 23 Oct 2020 17:27:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q7uOF40yAHza for <devel@linuxdriverproject.org>;
 Fri, 23 Oct 2020 17:27:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B27E203D8
 for <devel@driverdev.osuosl.org>; Fri, 23 Oct 2020 17:27:57 +0000 (UTC)
IronPort-SDR: lo2fN5OCekHF2KffZycFuBLdMUnIokpEymfrbdMhNpcLr1q2XMXiNE20NVj2MDEquB+h96wb1R
 eNgXmusn7pYQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="147566025"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="147566025"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 10:27:56 -0700
IronPort-SDR: 1kVXpkMxato4KyiDoDyQk9vABZLEsZZcfmHWZYXBHrhlYCCRxUaf73r7zINuiBUEBrld2bX5rm
 fpKPTFxMikuQ==
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="321804002"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 10:27:52 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 92AF92030F; Fri, 23 Oct 2020 20:27:50 +0300 (EEST)
Date: Fri, 23 Oct 2020 20:27:50 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v3 15/56] media: fix kernel-doc markups
Message-ID: <20201023172750.GN2703@paasikivi.fi.intel.com>
References: <cover.1603469755.git.mchehab+huawei@kernel.org>
 <8eb0e3f5a47cfa412c1004f850ef092011d1a45f.1603469755.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8eb0e3f5a47cfa412c1004f850ef092011d1a45f.1603469755.git.mchehab+huawei@kernel.org>
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
Cc: Abylay Ospan <aospan@netup.ru>, devel@driverdev.osuosl.org,
 Sergey Kozlov <serjk@netup.ru>, linux-media@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Antti Palosaari <crope@iki.fi>, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks, Mauro!

On Fri, Oct 23, 2020 at 06:33:02PM +0200, Mauro Carvalho Chehab wrote:
> Some identifiers have different names between their prototypes
> and the kernel-doc markup. Seome seems to be due to cut-and-paste
> related issues.
> 
> Others need to be fixed, as kernel-doc markups should use this format:
>         identifier - description
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>

On IPU3 and V4L2 bits:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
