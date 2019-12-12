Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B869F11C658
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 08:25:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 053382420F;
	Thu, 12 Dec 2019 07:25:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYFRcZ2luT4S; Thu, 12 Dec 2019 07:25:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C37E523BC0;
	Thu, 12 Dec 2019 07:25:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E81C1BF293
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 07:25:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0497D880DF
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 07:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BiImvTcA0IVH for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 07:25:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2D1787F8B
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 07:25:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 23:25:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,305,1571727600"; d="scan'208";a="245598700"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2019 23:25:20 -0800
Received: from [10.226.38.237] (unknown [10.226.38.237])
 by linux.intel.com (Postfix) with ESMTP id 4F11058033E;
 Wed, 11 Dec 2019 23:25:18 -0800 (PST)
Subject: Re: [PATCH v2] staging: intel-gwdpa: gswip: Introduce Gigabit
 Ethernet Switch (GSWIP) device driver
To: dan.carpenter@oracle.com
References: <5f85180573a3fb20238d6a340cdd990f140ed6f0.1576054234.git.jack.ping.chng@intel.com>
 <20191211105757.GC2070@kadam>
 <BYAPR11MB3176EB0A2BF59AAF161D4174DE5A0@BYAPR11MB3176.namprd11.prod.outlook.com>
From: "Chng, Jack Ping" <jack.ping.chng@linux.intel.com>
Message-ID: <b46dc709-38c7-9c6e-cb75-e5efd3be6ae9@linux.intel.com>
Date: Thu, 12 Dec 2019 15:25:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR11MB3176EB0A2BF59AAF161D4174DE5A0@BYAPR11MB3176.namprd11.prod.outlook.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, cheol.yong.kim@intel.com,
 andriy.shevchenko@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, davem@davemloft.net, gregkh@linuxfoundation.org,
 mallikarjunax.reddy@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 11/12/2019 6:58 PM, Dan Carpenter wrote:

> This should just be sent to netdev.  I spotted a couple bugs.
>
> 1) enable/disable we flipped xgmac_set_xgmii_2500_speed()
> 2) retries wasn't reset in a couple places.
>
> I had a few tiny style nits as well but there is no reason to send it to
> staging.
>
> regards,
> dan carpenter

Thanks for the review and comments.
We will fix the bug and address the comments.

Best regards,
Chng Jack Ping

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
