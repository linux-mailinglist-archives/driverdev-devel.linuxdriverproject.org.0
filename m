Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 973662E9CD
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 02:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9758087476;
	Thu, 30 May 2019 00:44:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DjBAfZwOay3R; Thu, 30 May 2019 00:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D044A87487;
	Thu, 30 May 2019 00:44:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C92201BF997
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C292687482
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9wDS02uYs2JP
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:44:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out5.external.iinet.net.au
 (icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
 by whitealder.osuosl.org (Postfix) with ESMTP id E0ADD87476
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 May 2019 00:44:48 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BJAAAmJ+9c/zXSMGcNWBoBAQEBAQI?=
 =?us-ascii?q?BAQEBBwIBAQEBgWWIOpNRAQEBAQEBBoUUhXGJcIcWCQEBAQEBAQEBATcBAQG?=
 =?us-ascii?q?EPwKDGDgTAQMBAQEEAQEBAQMBhmACAQMjFUEQCw0NAiYCAlcGDQgBAYMegXe?=
 =?us-ascii?q?pJXGBLxqFLYMlgUaBDCiBYYoKeIEHgRAogms+h06CWASLdYdslH8Jgg+TGQY?=
 =?us-ascii?q?bgh+GaYNuA4laLaRXgXkzGggoCIMokGOPDQEB?=
X-IPAS-Result: =?us-ascii?q?A2BJAAAmJ+9c/zXSMGcNWBoBAQEBAQIBAQEBBwIBAQEBg?=
 =?us-ascii?q?WWIOpNRAQEBAQEBBoUUhXGJcIcWCQEBAQEBAQEBATcBAQGEPwKDGDgTAQMBA?=
 =?us-ascii?q?QEEAQEBAQMBhmACAQMjFUEQCw0NAiYCAlcGDQgBAYMegXepJXGBLxqFLYMlg?=
 =?us-ascii?q?UaBDCiBYYoKeIEHgRAogms+h06CWASLdYdslH8Jgg+TGQYbgh+GaYNuA4laL?=
 =?us-ascii?q?aRXgXkzGggoCIMokGOPDQEB?=
X-IronPort-AV: E=Sophos;i="5.60,529,1549900800"; d="scan'208";a="227062170"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 30 May 2019 08:44:43 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
 <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
 <CAMhs-H8der72iXY0NFhXLUyTHvsBZ3t5VUagfgiO4CwuXhAXKw@mail.gmail.com>
 <9224bde1-ea67-db9f-570f-178bbc8e6b40@kernel.org>
 <CAMhs-H8vutK=KLHVGwpvY2bmx3khpjW5U=2jC=-pEV_HLZP5-Q@mail.gmail.com>
 <4aa016a4-9fac-5273-0f7f-d372f0de34ba@kernel.org>
 <CAMhs-H9M8D2nWibZqKeBEZ8y+E38iTRk7sB28vHb0-P5tU8+EA@mail.gmail.com>
 <9e24fe2f-42df-7b1f-2cd5-82d3f82f688b@kernel.org>
 <CAMhs-H-GtrJZKx2Y3GhoXn9O=C4xx1QAeQ1CYt51LwrFY7y1sQ@mail.gmail.com>
 <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
 <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
Date: Thu, 30 May 2019 10:44:42 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
[snip]
> I have added gpio consumer stuff and reorder a bit the code to be more
> similar to 4.20.
> 
> I attach the patch. I have not try it to compile it, because my normal
> environment is in another
> computer and I am in the middle of moving from my current house and
> don't have access to it, sorry.
> So, please try this and let's see what happens.

No problem, thanks for the patch.

Unfortunately always locks up on kernel boot:

   ...
   mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
   mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
   mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
   mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
   mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
   mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
   mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
   mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
   mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)

That was original linux-5.1 patched with your attached patch.

I'll try and dig down into that further today and get some
feedback on where it is failing.

Regards
Greg

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
