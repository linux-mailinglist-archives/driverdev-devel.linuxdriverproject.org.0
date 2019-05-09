Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4505F1831B
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 03:06:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56A2630E82;
	Thu,  9 May 2019 01:06:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u5Nryq14Wx0a; Thu,  9 May 2019 01:06:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A0D4E23018;
	Thu,  9 May 2019 01:06:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66B6F1C162B
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 01:06:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 639D7865A9
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 01:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9sf2BYWAyDGF for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 01:06:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E4B48658A
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 01:06:02 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D653621479;
 Thu,  9 May 2019 01:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557363962;
 bh=600qRXLEDKMKeph/AjRgQT+N42KTSsWElKhQOKqFhe8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oPg5LdTAmRD2OhNEmBwJTTJmPX6CbMLJ90xwUz39kvxl1oA/GSKPUSv+b3lR9GPWl
 nSQW9zRFSc5byUJNsQAkQeMTqlkmxmbqN+V/jsgqhEInRiICHL4XGpDmP6dwSzR8Kf
 Iax1Wo8NaXsjSQBviB+p9Ck0C8WRJAmzapEjWbk8=
Date: Wed, 8 May 2019 21:06:00 -0400
From: Sasha Levin <sashal@kernel.org>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH] Drivers: hv: vmbus: Fix virt_to_hvpfn() for X86_PAE
Message-ID: <20190509010600.GQ1747@sasha-vm>
References: <1557215147-89776-1-git-send-email-decui@microsoft.com>
 <DM5PR2101MB09188A7DB0777CD50333F94ED7310@DM5PR2101MB0918.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR2101MB09188A7DB0777CD50333F94ED7310@DM5PR2101MB0918.namprd21.prod.outlook.com>
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "juliana.rodrigueiro@intra2net.com" <juliana.rodrigueiro@intra2net.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "apw@canonical.com" <apw@canonical.com>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, "jasowang@redhat.com" <jasowang@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 12:51:51PM +0000, Michael Kelley wrote:
>From: Dexuan Cui <decui@microsoft.com> Sent: Tuesday, May 7, 2019 12:47 AM
>>
>> In the case of X86_PAE, unsigned long is u32, but the physical address type
>> should be u64. Due to the bug here, the netvsc driver can not load
>> successfully, and sometimes the VM can panic due to memory corruption (the
>> hypervisor writes data to the wrong location).
>>
>> Fixes: 6ba34171bcbd ("Drivers: hv: vmbus: Remove use of slow_virt_to_phys()")
>> Cc: stable@vger.kernel.org
>> Cc: Michael Kelley <mikelley@microsoft.com>
>> Reported-and-tested-by: Juliana Rodrigueiro <juliana.rodrigueiro@intra2net.com>
>> Signed-off-by: Dexuan Cui <decui@microsoft.com>
>
>Reviewed-by:  Michael Kelley <mikelley@microsoft.com>

Queued for hyperv-fixes, thanks!

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
