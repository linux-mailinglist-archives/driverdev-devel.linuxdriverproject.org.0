Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C46F3EFD
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 05:43:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA4A7867D0;
	Fri,  8 Nov 2019 04:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s7cbsDwlYufY; Fri,  8 Nov 2019 04:43:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA6B586239;
	Fri,  8 Nov 2019 04:43:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C2E21BF420
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 04:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7905B85625
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 04:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bI_Nk7L_JTvf for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 04:43:35 +0000 (UTC)
X-Greylist: delayed 00:09:15 by SQLgrey-1.7.6
Received: from icp-osb-irony-out3.external.iinet.net.au
 (icp-osb-irony-out3.external.iinet.net.au [203.59.1.153])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1673685259
 for <devel@driverdev.osuosl.org>; Fri,  8 Nov 2019 04:43:34 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AWAADi78Rd/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEBAQEBAREBAQEBAQEBAQEBAYF+gwyBMYQpj2oBAQeBNn+Ca4V6kUM?=
 =?us-ascii?q?JAQEBAQEBAQEBLwgBAYRAAoQyOBMCDgEBAQQBAQEBAQUDAYVYTIVdAQEBAQI?=
 =?us-ascii?q?BIxVBEAsNCAMCAiYCAlcGDQYCAQGDHgGCUgUvsVp1gTIahB8BgRSDNYFCBoE?=
 =?us-ascii?q?OKIFlikd4gQeBESeCNjU+gQSBOSUChHGCXgSWSpc9gi6HF44kBhuOPwOLMpZ?=
 =?us-ascii?q?6k0qBejMaCCgIgydQkHODW4plYgGQdQEB?=
X-IPAS-Result: =?us-ascii?q?A2AWAADi78Rd/zXSMGcNWBkBAQEBAQEBAQEBAQEBAQEBA?=
 =?us-ascii?q?REBAQEBAQEBAQEBAYF+gwyBMYQpj2oBAQeBNn+Ca4V6kUMJAQEBAQEBAQEBL?=
 =?us-ascii?q?wgBAYRAAoQyOBMCDgEBAQQBAQEBAQUDAYVYTIVdAQEBAQIBIxVBEAsNCAMCA?=
 =?us-ascii?q?iYCAlcGDQYCAQGDHgGCUgUvsVp1gTIahB8BgRSDNYFCBoEOKIFlikd4gQeBE?=
 =?us-ascii?q?SeCNjU+gQSBOSUChHGCXgSWSpc9gi6HF44kBhuOPwOLMpZ6k0qBejMaCCgIg?=
 =?us-ascii?q?ydQkHODW4plYgGQdQEB?=
X-IronPort-AV: E=Sophos;i="5.68,280,1569254400"; d="scan'208";a="224499746"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out3.iinet.net.au with ESMTP; 08 Nov 2019 12:34:16 +0800
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
To: Greg KH <gregkh@linuxfoundation.org>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107084007.GA1203521@kroah.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <eb68fc5f-0a50-3faf-be61-23af5550ef39@kernel.org>
Date: Fri, 8 Nov 2019 14:34:15 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191107084007.GA1203521@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, neil@brown.name,
 linux-mediatek@lists.infradead.org, blogic@openwrt.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


On 7/11/19 6:40 pm, Greg KH wrote:
> On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:
>> From: Greg Ungerer <gerg@kernel.org>
>>
>> Add a driver to support the NAND flash controller of the MediaTek MT7621
>> System-on-Chip device. (This one is the MIPS based parts from Mediatek).
>>
>> This code is a re-working of the earlier patches for this hardware that
>> have been floating around the internet for years:
>>
>> https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch
>>
>> This is a much cleaned up version, put in staging to start with.
>> It does still have some problems, mainly that it still uses a lot of the
>> mtd raw nand legacy support.
> 
> Is that an issue?  Why not just put it in the "real" part of the kernel
> then, if those apis are still in use?

Agreed. If the MTD folks have no problem with it.


>> The driver not only compiles, but it works well on the small range of
>> hardware platforms that it has been used on so far. I have been using
>> for quite a while now, cleaning up as I get time.
>>
>> So... I am looking for comments on the best approach forward with this.
>> At least in staging it can get some more eyeballs going over it.
> 
> staging will just nit-pick it to death for coding style issues, it's not
> going to be get any major api changes/cleanups there usually.  I'd
> recommend just merging this to the "real" part of the kernel now if it's
> working for you.

I'll spin a v2 based on Dan's feedback, and move it into drivers/mtd.

Thanks
Greg

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
