Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F541827F9
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 05:57:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 386D6891DB;
	Thu, 12 Mar 2020 04:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c2-phQbIEOUd; Thu, 12 Mar 2020 04:57:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7E4EE88555;
	Thu, 12 Mar 2020 04:57:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 459C21BF326
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 04:56:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 366E9886A4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 04:56:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnPB8nKvJWdF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 04:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 893568862E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 04:56:57 +0000 (UTC)
Received: from [10.44.0.22] (unknown [103.48.210.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B270206EB;
 Thu, 12 Mar 2020 04:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583989017;
 bh=po7+enE4pCL7ZQl5M4A/cvwVlcUf1xWY7yFCUQif3TE=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=fQxX87Hh3GPoCLraXfNS31uvNkJSIOh4adWTWEJMWMMeqObrHIyRwfE/HL33s7r37
 +kP+EEWuUOFkogoX1lM1Bd5Pnah5SSP2NQ4A5HcqvMytJrfocMwsHghWdreDNOIfYq
 kAeh/8n8MqOlgVDNMuHO7TGbTIoLbUNBL9HkbBJI=
Subject: Re: [PATCH v2 0/5] staging: mt7621-pci: re-do reset boot process
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 gregkh@linuxfoundation.org
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <fec91f9d-1ad0-d98a-9f4a-346e70f3c22d@kernel.org>
Date: Thu, 12 Mar 2020 14:56:51 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, ryder.lee@mediatek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 12/3/20 4:58 am, Sergio Paracuellos wrote:
> Some time ago Greg Ungerer reported some random hangs using
> the staging mt7621-pci driver:
> 
> See:
> * http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> 
> Try to fix that is the main motivation of this patch series.

Excellent!  I am glad to see an effort to get these problems resolved.
I still have to switch back to much earlier version of this PCI
driving code to get reliable working behavior.


> Also in openwrt there is a driver for mt7621-pci which seems was rewritten
> from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek.
> There the approach for reset assert-deassert process is to set as 'gpio'
> the function for all the 'pcie' group for the pinctrl driver and use those
> gpio's as a reset for the end points. The driver I am talking about is still
> using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
> to do is make this staging driver properly clean and functional and put it
> in its correct place in the mainline.
> 
> See:
> * https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36
> 
> Because of all of this this patch series tries to avoid random hangs of boot
> trying to use the 'reset-gpios' approach.
> 
> Changes are being tested by openwrt people and seems to work.
> 
> Hope this helps.

What kernel did you generate these patches against?
They didn't apply completely cleanly for me against 5.5 or 5.6.0-rc5.
Minor reject and some fuzzing, easy enough to fix for testing.

Running 5.6.0-rc5 I get the following failure on my hardware during boot:

...
rt2880-pinmux pinctrl: pcie is already enabled
mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
mt7621-pci 1e140000.pcie: Unable to request GPIO reset in slot 1
mt7621-pci 1e140000.pcie: Parsing DT failed
mt7621-pci: probe of 1e140000.pcie failed with error -16


FWIW: running the original 5.6.0-rc5 code gives a few different
PCI startup failures - but PCI devices never work properly. I can
send the error trace output if useful, but it is similar to what
I have posted in the past.

Regards
Greg


> Changes in v2:
>      * restore configuration for pers mode to GPIO.
>      * Avoid to read FTS_NUM register in reset state.
> 
> Best regards,
>      Sergio Paracuellos
> 
> 
> Sergio Paracuellos (5):
>    staging: mt7621-pci: use gpios for properly reset
>    staging: mt7621-pci: change value for 'PERST_DELAY_US'
>    staging: mt7621-dts: make use of 'reset-gpios' property for pci
>    staging: mt7621-pci: bindings: update doc accordly to last changes
>    staging: mt7621-pci: release gpios after pci initialization
> 
>   drivers/staging/mt7621-dts/mt7621.dtsi        | 11 ++-
>   .../mt7621-pci/mediatek,mt7621-pci.txt        |  7 +-
>   drivers/staging/mt7621-pci/pci-mt7621.c       | 94 ++++++++++++-------
>   3 files changed, 72 insertions(+), 40 deletions(-)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
