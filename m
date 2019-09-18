Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E87AB5960
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 03:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 370C385E98;
	Wed, 18 Sep 2019 01:41:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9UwHqfHPYpY; Wed, 18 Sep 2019 01:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1050785E65;
	Wed, 18 Sep 2019 01:41:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F3811BF2C8
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 01:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 267B585E69
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 01:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ScQLCwBDBsTB for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 01:41:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75D5385E65
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 01:41:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 18:41:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,518,1559545200"; d="scan'208";a="189108316"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.6]) ([10.239.13.6])
 by orsmga003.jf.intel.com with ESMTP; 17 Sep 2019 18:41:39 -0700
Subject: Re: [kbuild-all] [PATCH] staging: wilc1000: look for rtc_clk clock in
 spi mode
To: Adham.Abozaeid@microchip.com, lkp@intel.com
References: <20190916193701.20755-1-adham.abozaeid@microchip.com>
 <201909170853.9YktTPSZ%lkp@intel.com>
 <4b015529-aeaa-b01f-01ce-1a81cbe2aea9@microchip.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <2a45205b-b9f1-b985-4a75-546b454c2e54@intel.com>
Date: Wed, 18 Sep 2019 09:41:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4b015529-aeaa-b01f-01ce-1a81cbe2aea9@microchip.com>
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
Cc: devel@driverdev.osuosl.org, Ajay.Kathat@microchip.com,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org, kbuild-all@01.org,
 Eugen.Hristev@microchip.com, johannes@sipsolutions.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Adham,

On 9/17/19 9:03 AM, Adham.Abozaeid@microchip.com wrote:
>
> On 9/16/19 5:49 PM, kbuild test robot wrote:
>> [auto build test ERROR on linus/master]
>> [cannot apply to v5.3 next-20190916]
>> [if your patch is applied to the wrong git tree, please drop us a note to help improve the system]
> This patch applies for staging-testing, not linus/master.
>
>

Thanks for clarification, we'll take a look. BTW 0day-CI introduced 
'--base' option to record base tree info in format-patch.
could you kindly add it to help robot to base on the right tree? please 
see https://stackoverflow.com/a/37406982

Best Regards,
Rong Chen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
