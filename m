Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480E4C48F
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Jun 2019 02:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71927869BF;
	Thu, 20 Jun 2019 00:40:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TnoJJREXzNae; Thu, 20 Jun 2019 00:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F4FA816DE;
	Thu, 20 Jun 2019 00:40:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7E51BF9B2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 00:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7381B2107F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 00:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JGktAryPWJPr
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 00:40:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out3.external.iinet.net.au
 (icp-osb-irony-out3.external.iinet.net.au [203.59.1.153])
 by silver.osuosl.org (Postfix) with ESMTP id EA2F42039E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Jun 2019 00:40:38 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AbAAAG1Qpd/zXSMGcNWRkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeBbYEUgSyEFpNAAQEBAQEBBoEQJYNghXOOLIJgCQE?=
 =?us-ascii?q?BAQEBAQEBAS0KAQEBhD8Cgns4EwEDAQEBBAEBAQEEAYskhVcBAQEDIxVBEAs?=
 =?us-ascii?q?NCwICJgICVwYBDAgBAYMeAYF2I6xdcYExGoQYAYEUgyWBRoEMKIFiihN4gQe?=
 =?us-ascii?q?BOAyCXz6CYQOEaoJYBJQtlTgJghOGSI0FBhuCJ2mKFAOKDY0dgSyFeJFSgXk?=
 =?us-ascii?q?zGggoCEgOglEJg10BCIdWhVFgAY9GAQE?=
X-IPAS-Result: =?us-ascii?q?A2AbAAAG1Qpd/zXSMGcNWRkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeBbYEUgSyEFpNAAQEBAQEBBoEQJYNghXOOLIJgCQEBAQEBAQEBAS0KA?=
 =?us-ascii?q?QEBhD8Cgns4EwEDAQEBBAEBAQEEAYskhVcBAQEDIxVBEAsNCwICJgICVwYBD?=
 =?us-ascii?q?AgBAYMeAYF2I6xdcYExGoQYAYEUgyWBRoEMKIFiihN4gQeBOAyCXz6CYQOEa?=
 =?us-ascii?q?oJYBJQtlTgJghOGSI0FBhuCJ2mKFAOKDY0dgSyFeJFSgXkzGggoCEgOglEJg?=
 =?us-ascii?q?10BCIdWhVFgAY9GAQE?=
X-IronPort-AV: E=Sophos;i="5.63,394,1557158400"; d="scan'208";a="191722289"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out3.iinet.net.au with ESMTP; 20 Jun 2019 08:40:34 +0800
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Use gpio perst instead builtin
 behaviour
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 gregkh@linuxfoundation.org
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <0bedcd6b-4781-ffd2-b59c-76cd555912a7@kernel.org>
Date: Thu, 20 Jun 2019 10:40:33 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 19/6/19 5:44 pm, Sergio Paracuellos wrote:
> Some boards seems to ignore builtin perst configuration and use gpio
> instead. This approach seems to be more common. Hence, update the driver
> to properly use gpio perst via gpio descriptor's API.
> 
> For more information refer to [1].
> 
> Even with this set of patches applied, there still seems to have some issues
> with a non stable pci link through the boot process. This will be resolved
> in nest patch series when the problem is find.
> 
> Patches are only compile-tested. It would be good to test them before being
> applied.
> 
> [1]: http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> 
> Sergio Paracuellos (4):
>    staging: mt7621-pci: fix two messages in driver code
>    staging: mt7621-pci: use gpio perst instead of builtin behaviour
>    staging: mt7621-dts: add gpio perst to pcie bindings node
>    staging: mt7621-pci: dt-bindings: add perst-gpio to sample bindings
> 
>   drivers/staging/mt7621-dts/mt7621.dtsi        |   2 +
>   .../mt7621-pci/mediatek,mt7621-pci.txt        |   2 +
>   drivers/staging/mt7621-pci/pci-mt7621.c       | 108 ++++++++++--------
>   3 files changed, 63 insertions(+), 49 deletions(-)

Thanks for putting this together.

I tried a quick test, applying this onto a linux-5.2.0-rc5 kernel and
saw this in the boot trace:

   ...
   rt2880-pinmux pinctrl: pcie is already enabled
   mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
   ...

The system went on to boot successfully, with PCI working.

Testing across multiple boots, it sometimes hangs - but we know about that
and it is what we are still looking into.

Regards
Greg


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
