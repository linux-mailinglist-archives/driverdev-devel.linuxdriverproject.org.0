Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D928019EC2A
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 16:52:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BE70D85D72;
	Sun,  5 Apr 2020 14:52:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YOfPPOsD5wuH; Sun,  5 Apr 2020 14:52:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F8DF85D40;
	Sun,  5 Apr 2020 14:52:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 85AA41BF423
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 14:52:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7EAC120243
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 14:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xW-PzOmMuW+V for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 14:52:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E1AB20338
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 14:52:04 +0000 (UTC)
IronPort-SDR: tixtHIgf0r5PhQsPDWSHEHfX6hTXdUBdiO+eUIZSvRgEuxrE1l6z9F1yipAY6orA+JIQnqgmkO
 DyhXQEyfosyw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2020 07:52:03 -0700
IronPort-SDR: Oo+EEGmD4U3ETlQXiUkBesplGtpXeZTwGHhGeGYGCybv1WVJNT0t8nLdmbUR8pz1KUOtABUkFH
 tRS0EUc5w2hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,348,1580803200"; d="scan'208";a="243902702"
Received: from rongch2-mobl.ccr.corp.intel.com (HELO [10.249.169.25])
 ([10.249.169.25])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2020 07:52:01 -0700
Subject: Re: [kbuild-all] Re: [staging:staging-testing 41/41]
 drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the variable
 'preamble' can be reduced. [variableScope]
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild test robot <lkp@intel.com>
References: <202004052024.Gapw2WV7%lkp@intel.com>
 <20200405130753.GA1565087@kroah.com>
From: "Chen, Rong A" <rong.a.chen@intel.com>
Message-ID: <bbff7459-1198-2c38-fc09-7580e219821a@intel.com>
Date: Sun, 5 Apr 2020 22:51:59 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405130753.GA1565087@kroah.com>
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
Cc: devel@driverdev.osuosl.org, Stefano Brivio <sbrivio@redhat.com>,
 Briana Oursler <briana.oursler@gmail.com>, kbuild-all@lists.01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 4/5/2020 9:07 PM, Greg Kroah-Hartman wrote:
> On Sun, Apr 05, 2020 at 08:43:40PM +0800, kbuild test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
>> head:   e7b6875944e61bec586ede80b95727cd55381e1e
>> commit: e7b6875944e61bec586ede80b95727cd55381e1e [41/41] Staging: vt6655: Replace camel case variable names.
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>>
>> cppcheck warnings: (new ones prefixed by >>)
>>
>>>> drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the variable 'preamble' can be reduced. [variableScope]
>>      unsigned int preamble;
>>                   ^
>>>> drivers/staging/vt6655/baseband.c:1912:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
>>>>   unsigned char by_value;
>>                    ^
>>     drivers/staging/vt6655/baseband.c:1955:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
>>>>   unsigned char by_value;
>>                    ^
> Are we seriously going to take foolish things like this from cppcheck
> seriously?
>
> Please no, "reducing scope" is an interesting thing to consider, but
> really, solves almost nothing.  It will do nothing but cause a lot of
> pointless churn.
>
> greg k-h

Hi Greg,

Thanks for the advice, we'll blacklist the warning and don't report it.

Best Regards,
Rong Chen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
