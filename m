Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0FE18B95A
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 15:28:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 09F9287476;
	Thu, 19 Mar 2020 14:28:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ViOlOFmnKtRX; Thu, 19 Mar 2020 14:28:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28DCE86B67;
	Thu, 19 Mar 2020 14:28:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D50C81BF3EE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:28:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D0D502039B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:28:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2CEUlvgU4Mx
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:28:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out6.external.iinet.net.au
 (icp-osb-irony-out6.external.iinet.net.au [203.59.1.106])
 by silver.osuosl.org (Postfix) with ESMTP id 101662034A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 14:28:33 +0000 (UTC)
X-SMTP-MATCH: 0
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AJAACWgHNe/zXSMGcNWRoBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBAREBAQECAgEBAQGBagIBAQEBCwGDFIExhBaPWgaBN4NuhgaFFIl?=
 =?us-ascii?q?ZeYFnCQEBAQEBAQEBAS0KBAEBhEMCgj83Bg4CEAEBAQUBAQEBAQUDAYV3TIV?=
 =?us-ascii?q?vAQEBAQEBASMEEUEFCwsNCwICERUCAlcGDQYCAQGDIgGCVgUvrBB1fzMahBs?=
 =?us-ascii?q?BFEBBgzqBPoEOKgGBZIpjeYEHgREngW9+PoI+JgIBgR0uWIJSgl4EjVQaiga?=
 =?us-ascii?q?BRJcLgkaHV48dBh2CSoEBi2YDEIwHkFSHNI5ihg1ngRQzGggoCEgOAoJPCUe?=
 =?us-ascii?q?SNYUUhVNiAgmOPF8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2AJAACWgHNe/zXSMGcNWRoBAQEBAQEBAQEDAQEBAREBA?=
 =?us-ascii?q?QECAgEBAQGBagIBAQEBCwGDFIExhBaPWgaBN4NuhgaFFIlZeYFnCQEBAQEBA?=
 =?us-ascii?q?QEBAS0KBAEBhEMCgj83Bg4CEAEBAQUBAQEBAQUDAYV3TIVvAQEBAQEBASMEE?=
 =?us-ascii?q?UEFCwsNCwICERUCAlcGDQYCAQGDIgGCVgUvrBB1fzMahBsBFEBBgzqBPoEOK?=
 =?us-ascii?q?gGBZIpjeYEHgREngW9+PoI+JgIBgR0uWIJSgl4EjVQaigaBRJcLgkaHV48dB?=
 =?us-ascii?q?h2CSoEBi2YDEIwHkFSHNI5ihg1ngRQzGggoCEgOAoJPCUeSNYUUhVNiAgmOP?=
 =?us-ascii?q?F8BAQ?=
X-IronPort-AV: E=Sophos;i="5.70,571,1574092800"; d="scan'208";a="231445771"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 19 Mar 2020 22:28:30 +0800
Subject: Re: [PATCH v4 0/6] staging: mt7621-pci: re-do reset boot process
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <0e15884b-de8d-a7a0-7560-3221a2c8a978@kernel.org>
 <CAMhs-H-GEAA79HdzvPJnJ-hBOKDUh15GiQ0qWKw2tKCpbVvCHw@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <af0ce00d-87ea-5c06-ad3f-7011c5226353@kernel.org>
Date: Fri, 20 Mar 2020 00:28:28 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-GEAA79HdzvPJnJ-hBOKDUh15GiQ0qWKw2tKCpbVvCHw@mail.gmail.com>
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
Cc: ryder.lee@mediatek.com, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 NeilBrown <neil@brown.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 19/3/20 11:43 pm, Sergio Paracuellos wrote:
> On Thu, Mar 19, 2020 at 1:42 PM Greg Ungerer <gerg@kernel.org> wrote:
>> On 14/3/20 6:09 am, Sergio Paracuellos wrote:
>>> Some time ago Greg Ungerer reported some random hangs using
>>> the staging mt7621-pci driver:
>>>
>>> See:
>>> * http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
>>>
>>> Try to fix that is the main motivation of this patch series.
>>>
>>> Also in openwrt there is a driver for mt7621-pci which seems was rewritten
>>> from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek.
>>> There the approach for reset assert-deassert process is to set as 'gpio'
>>> the function for all the 'pcie' group for the pinctrl driver and use those
>>> gpio's as a reset for the end points. The driver I am talking about is still
>>> using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
>>> to do is make this staging driver properly clean and functional and put it
>>> in its correct place in the mainline.
>>>
>>> See:
>>> * https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36
>>>
>>> Because of all of this this patch series tries to avoid random hangs of boot
>>> trying to use the 'reset-gpios' approach.
>>>
>>> Changes are being tested by openwrt people and seems to work.
>>>
>>> Hope this helps.
>>>
>>> Changes in v4:
>>> * Make use of 'devm_gpiod_get_index_optional' instead of 'devm_gpiod_get_index'.
>>> * Use 'dev_err' instead of 'dev_notice' and return ERR_PTR if
>>> 'devm_gpiod_get_index_optional' fails.
>>> * Rename pers dealy macro to PERST_DELAY_MS.
>>> * Add new patch 6 which removes function 'mt7621_reset_port' not needed anymore.
>>
>> Testing this v4 series always fails during boot with:
>>
>> ...
>> NET: Registered protocol family 17
>> NET: Registered protocol family 15
>> 8021q: 802.1Q VLAN Support v1.8
>> Loading compiled-in X.509 certificates
>> AppArmor: AppArmor sha1 policy hashing enabled
>>
>> rt2880-pinmux pinctrl: pcie is already enabled
>> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
>> mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
>> mt7621-pci 1e140000.pcie: Parsing DT failed
>> mt7621-pci: probe of 1e140000.pcie failed with error -16
> 
> Looks like the gpio is valid but has been assigned to anything else.
> It looks like a device-tree issue for me.
> Does your hardware follows the indications of the mediatek application note?

Yes, as per table 2-2. GPIO pins 7 and 8 are used for other purposes
on my hardware - and my devicetree has those assigned for those
other purposes. They are not available for, or used for, PCI reset.

Regards
Greg



> https://github.com/openwrt/openwrt/files/4317436/an-mt7621-pcie-application-note-v0.1.pdf
> 
> To be able to test this you can just change the device tree and set
> reset gpios to only perst-reset pin
> 
> reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
> 
> or avoid the "return PTR_ERR(port->gpio_rst);" after the call to
> 'devm_gpiod_get_index_optional'.
> 
> Or just make an exception if the pin is busy, which seems to be the
> problem here:
> 
>>
>> UBI error: cannot open mtd 3, error -19
>> hctosys: unable to open rtc device (rtc0)
>> cfg80211: Loading compiled-in X.509 certificates for regulatory database
>> cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
>> ...
>>
>> It never hangs, always boots up all the way. But always the same failure
>> with PCIe.
> 
> This series has been applied to the staging tree and are properly
> running for me in gnubee pc1.
> 
> You should test using all confirmed changes in staging-next branch and
> this patch which fix a wrong register usage issue:
> 
> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html
> 
> 
>>
>> Regards
>> Greg
>>
>>
>>
>>> Changes in v3:
>>> * Avoid to fail if gpio descriptor fails on get.
>>> * re-do PATCH 1 commit message.
>>> * Take into account gpio low polarity on request and assert and deassert.
>>> * Review error path of driver to properly release gpio's resources.
>>>
>>> Changes in v2:
>>> * restore configuration for pers mode to GPIO.
>>> * Avoid to read FTS_NUM register in reset state.
>>> * Release gpio's patch added
>>>
>>> Best regards,
>>>       Sergio Paracuellos
>>>
>>>
>>> Sergio Paracuellos (6):
>>>     staging: mt7621-pci: use gpios for properly reset
>>>     staging: mt7621-pci: change value for 'PERST_DELAY_MS'
>>>     staging: mt7621-dts: make use of 'reset-gpios' property for pci
>>>     staging: mt7621-pci: bindings: update doc accordly to last changes
>>>     staging: mt7621-pci: release gpios after pci initialization
>>>     staging: mt7621-pci: delete no more needed 'mt7621_reset_port'
>>>
>>>    drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
>>>    .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
>>>    drivers/staging/mt7621-pci/pci-mt7621.c       | 122 ++++++++++--------
>>>    3 files changed, 82 insertions(+), 58 deletions(-)
>>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
