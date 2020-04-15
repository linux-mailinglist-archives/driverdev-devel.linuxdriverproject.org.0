Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0F51A97C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 11:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7D5C8723D;
	Wed, 15 Apr 2020 09:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9ld85vkyQQG; Wed, 15 Apr 2020 09:05:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BE91D8708C;
	Wed, 15 Apr 2020 09:05:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AD6561BF488
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 09:04:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A4B72203C9
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 09:04:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jp8Ek4yPnKlj for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 09:04:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 15B7620397
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 09:04:56 +0000 (UTC)
IronPort-SDR: lJI2Iq5A5+92jQpNjboReNYHhemqxDQ5nvtf/LQNtAo73uZlRVoTjAfMViOWZUa4kPRaFTQmwf
 D1iWX7dOwYZg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 02:04:55 -0700
IronPort-SDR: Tf3MObVY5m1UiJGxzfHxm4E/I2h4NlkK0ndOvSi9BkW9fScuTFEk1QlYsqxWo2ThRp2Uw716//
 vwym/qttB4Kw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="298942057"
Received: from shao2-debian.sh.intel.com (HELO [10.239.13.3]) ([10.239.13.3])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Apr 2020 02:04:54 -0700
Subject: Re: [kbuild-all] Re: [staging:staging-next 127/127]
 drivers/staging/wfx/bh.c:88:32: sparse: warning: restricted __le16 degrades
 to integer
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild test robot <lkp@intel.com>
References: <202004141712.L6CqySje%lkp@intel.com>
 <20200414101315.GB37302@kroah.com>
From: Rong Chen <rong.a.chen@intel.com>
Message-ID: <ee25696c-f2ec-00ee-3435-2a488bc25b4c@intel.com>
Date: Wed, 15 Apr 2020 17:04:27 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200414101315.GB37302@kroah.com>
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 kbuild-all@lists.01.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 4/14/20 6:13 PM, Greg Kroah-Hartman wrote:
> On Tue, Apr 14, 2020 at 05:55:15PM +0800, kbuild test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
>> head:   ce920326663b3df22c94ade99a8b234baa6ccaa5
>> commit: ce920326663b3df22c94ade99a8b234baa6ccaa5 [127/127] staging: vt6656: formulate rspinf values into tables
>> reproduce:
>>          # apt-get install sparse
>>          # sparse version:
>>          git checkout ce920326663b3df22c94ade99a8b234baa6ccaa5
>>          make ARCH=x86_64 allmodconfig
>>          make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kbuild test robot <lkp@intel.com>
> I don't think that the warning you point out here, is caused by the
> patch you say.  Please fix up on the 0-day side...
>
>

Hi Greg,

We're very sorry for the false positive, we have figured out the 
problem, will fix it soon.

Best Regards,
Rong Chen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
