Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AB026DCED
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 15:36:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79B0C87040;
	Thu, 17 Sep 2020 13:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zULPd2YXDoMr; Thu, 17 Sep 2020 13:36:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3572B8702D;
	Thu, 17 Sep 2020 13:36:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1A591BF2BB
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 13:36:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A69DE86BB1
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 13:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xb6P1oEDOcKZ for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 13:36:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95CD78702D
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 13:36:25 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k15so2099747wrn.10
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 06:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=NrYccvW8EewxdxP/tYL+GSHWBm9LlWoKt2Rngij9Qu0=;
 b=scrrmCu8z68GIU1EmmAt/fXRf5oYi77EUr8Mli6ErbE68/v06v8N/XIgKRT97jh8CI
 LxpMrbFWFcdZbQzeODCZHwLri56gaCFU8j/SkQlTvK4kdpIRQrZQjZMwNGlwkOVgP82z
 uQZB2qWa0AAdTy0/BOqjwsTbKN1sC8YzILnJx5VSQs6HtkYOUXAyACfxyb2h62q9sgCi
 dWkurhPfQodpBCA2Lb99mpFQLh2NMlynR/62ktw2no+MXSyW8G/LwZ7F91HEzP7dzufS
 7qGFjY3Ui6r8MIuL/sfEXDRqN95zoGRXbrd7Ubq6JJYrGgyzZRjd7eTZcxz2dOpQIezT
 bNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=NrYccvW8EewxdxP/tYL+GSHWBm9LlWoKt2Rngij9Qu0=;
 b=IdF0d54KrJJuaBekf2XQHGN5BN4GTiO+wDCy7v/vSW6o4fW8qjSH6y+kTJfSAdA7zH
 z7E1Y0IwYyeCKmdnx7NDIWUWi1E6gtlHGnBmsFQ+jjKoASxcdzey6NlZdgC5kxpRFhsO
 H/4KRqjzdc/1aVDsPw46Lfd9ZZ6wl28re17SOQ+8hFfkWye1Q5HMFmhnkZGku92GBIcj
 NMHFB/Zmffd85PC/mab/IwOiJlgAZgMNwnScxHgQlJgRSotf5n7YkXn6dMHjm/NmG7G4
 s8WYCk2rieRNfNC1gPIxBUxZu0nGBS1vDynhNghQ+s+RixvSjjicecRB1yV6lqeOvlvW
 gEcA==
X-Gm-Message-State: AOAM5303yD9GynW4bKLnpPUAk9uXmjRm+CiUbw3IyjjOPMcHvWOnIJWB
 15Z1NZVlVoyI3niuFLKYlQ4=
X-Google-Smtp-Source: ABdhPJy19mXiA3ihkeppKeKRQzh8Cl3+/8IpAIdFYSHDCUl8bVUJjtCpl/lN4/F3SUxP0dCgohVRYg==
X-Received: by 2002:a5d:458a:: with SMTP id p10mr31333302wrq.282.1600349783908; 
 Thu, 17 Sep 2020 06:36:23 -0700 (PDT)
Received: from [192.168.1.211] ([2.29.208.34])
 by smtp.gmail.com with ESMTPSA id k15sm3679762wrv.90.2020.09.17.06.36.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Sep 2020 06:36:23 -0700 (PDT)
Subject: Re: [RFC PATCH] Add bridge driver to connect sensors to CIO2 device
 via software nodes on ACPI platforms
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200916213618.8003-1-djrscally@gmail.com>
 <20200917103343.GW26842@paasikivi.fi.intel.com>
 <8133a57d-ab4c-dccd-4325-9b10e7805648@gmail.com>
 <20200917124514.GK3956970@smile.fi.intel.com>
From: Dan Scally <djrscally@gmail.com>
Message-ID: <fea9d85a-7be9-0270-bd59-8e479a836ae6@gmail.com>
Date: Thu, 17 Sep 2020 14:36:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917124514.GK3956970@smile.fi.intel.com>
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
Cc: devel@driverdev.osuosl.org, robh@kernel.org, jorhand@linux.microsoft.com,
 linux-media@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kieran.bingham@ideasonboard.com,
 kitakar@gmail.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 bingbu.cao@intel.com, mchehab@kernel.org, davem@davemloft.net,
 tian.shu.qiu@intel.com, yong.zhi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy, thanks for input (as always)

On 17/09/2020 13:45, Andy Shevchenko wrote:
> On Thu, Sep 17, 2020 at 11:52:28AM +0100, Dan Scally wrote:
>> On 17/09/2020 11:33, Sakari Ailus wrote:
> I will do better review for next version, assuming you will Cc reviewers and
> TWIMC people. Below is like small part of comments I may give to the code.
TWIMC?
>>> The ones I know require PMIC control done in software (not even
>>> sensors are accessible without that).
>> So far we've just been getting the sensor drivers themselves to toggle
>> the gpio pins that turn the PMIC on (those pins are listed against the
>> PMIC's _CRS, and we've been finding those by evaluating the sensor's
>> _DEP) - once that's done the cameras show up on i2c and,with the bridge
>> driver installed, you can use libcamera to take photos.
> Do I understand correctly that you are able to get pictures from the camera
> hardware?

Yes, using the libcamera project's qcam program. They're poor quality at
the moment, because there's no auto-white-balance / exposure controls in
the ipu3 pipeline yet, but we can take images. Example:


https://user-images.githubusercontent.com/4592235/91197920-d1d41500-e6f3-11ea-8207-1c27cf24dd45.png


A bunch of folks have managed it so far on a couple different platforms
(Surface Book 1, Surface Pro something, an Acer A12 and a Lenovo Miix-510)

>>>> I wanted to raise this as an RFC as although I don't think it's ready for
>>>> integration it has some things that I'd like feedback on, in particular the
>>>> method I chose to make the module be auto-inserted. A more ideal method would
>>>> have been to have the driver be an ACPI driver for the INT343E device, but each
>>> What do you think this device does represent? Devices whose status is
>>> always zero may exist in the table even if they would not be actually
>>> present.
>>>
>>> CIO2 is a PCI device and it has no ACPI (or PNP) ID, or at least should not
>>> have one.
>> This is the ACPI entry I mean:
>>
>> Device (CIO2)
>> {
>>     Method (_STA, 0, NotSerialized)  // _STA: Status
>>     {
>>         If ((CIOE == One))
>>         {
>>             Return (0x0F)
>>         }
>>         Else
>>         {
>>             Return (Zero)
>>         }
>>     }
>>
>>     Name (_HID, "INT343E")  // _HID: Hardware ID
>>     Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
>>     {
>>         Name (CBUF, ResourceTemplate ()
>>         {
>>             Interrupt (ResourceConsumer, Level, ActiveLow, Shared, ,, _Y15)
>>             {
>>                 0x00000010,
>>             }
>>             Memory32Fixed (ReadWrite,
>>                 0xFE400000,         // Address Base
>>                 0x00010000,         // Address Length
>>                 )
>>         })
>>         CreateDWordField (CBUF, \_SB.PCI0.CIO2._CRS._Y15._INT, CIOV)  // _INT: Interrupts
>>         CIOV = CIOI /* \CIOI */
>>         Return (CBUF) /* \_SB_.PCI0.CIO2._CRS.CBUF */
>>     }
>> }
> Ah, I think you misinterpreted the meaning of above. The above is a switch how
> camera device appears either as PCI or an ACPI. So, it effectively means you
> should *not* have any relation for this HID until you find a platform where the
> device is for real enumerated via ACPI.
>
Ah, ok. So that was never going to work. Thanks. That does raise another
question; we have had some testers report failure, which turns out to be
because on their platforms the definition of their cameras in ACPI is
never translated into an i2c_client so the cio2-bridge doesn't bind.
Those have a similar conditional in the _STA method, see CAM1 in this
DSDT for example:
https://raw.githubusercontent.com/linux-surface/acpidumps/master/surface_go/dsdt.dsl.
Is there anything we can do to enable those cameras to be discovered too?

>>>> +static int cio2_probe_can_progress(struct pci_dev *pci_dev)
>>>> +{
>>>> +	void *sensor;
> Why void?
> Besides the fact that castings from or to void * are implicit in C, the proper
> use of list API should have pretty well defined type of lvalue.
>
Yeah, I misunderstood how this worked - after greg pointed out I was
doing it wrong I read the code a bit better and got it working assigning
to a struct device *sensor; - TIL.
>>>> +	if (!IS_ENABLED(CONFIG_ACPI)) {
>>>> +		r = cio2_parse_firmware(cio2);
>>>> +		if (r)
>>>> +			goto fail_clean_notifier;
>>>> +	}
> How comes?
Me misunderstanding again; it will be removed.
>
>>>> \ No newline at end of file
> ???
>
> Be sure you are using good editor.
>
Yeah haven't managed to track down what's causing this yet. Visual
Studio Code maybe.
>>>> +#define PROPERTY_ENTRY_NULL			\
>>>> +((const struct property_entry) { })
>>> Alignment. Same appears to apply to other macros (please indent).
>> Yep
>>>> +#define SOFTWARE_NODE_NULL			\
>>>> +((const struct software_node) { })
> Why?!
>
It felt ugly to have the other definitions be macros and not this one,
but I can change it.
>>>> +		return -ENODEV;
>>>> +
>>>> +	obj = (union acpi_object *)buffer.pointer;
> Why explicit casting?
>
>

>>>> +		if (!dev->driver_data) {
>>>> +			pr_info("ACPI match for %s, but it has no driver\n",
>>>> +				supported_devices[i]);
>>>> +			continue;
>>>> +		} else {
>>>> +			pr_info("Found supported device %s\n",
>>>> +				supported_devices[i]);
>>>> +		}
> Positive conditions are easier to read, but on the other hand 'else' is
> redundant in such conditionals (where if branch bails out from the flow).

Yeah good point - and much more readable that way. Thanks; I'll stick to
that in future.


All your other suggestions are great - thank you, I will fix them for
the v2.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
