Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EF6911BB
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 17:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A57E21505;
	Sat, 17 Aug 2019 15:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NjaBiLqtRahc; Sat, 17 Aug 2019 15:40:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E17992152F;
	Sat, 17 Aug 2019 15:40:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 741611BF4DD
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 15:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FCB28583F
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 15:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0S8zlCFbWAl for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 15:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E1838562D
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 15:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566056394;
 bh=AT8tQ8sV2zOi6Dtc/VRg7C7E0nn4hiwSx3ciNzqfz0w=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=avVszXptm4G/mPAGm2B4LOJZFFvuTZCLjF1eUjNJn8lyOFZUxIRW4B/FhcEGtig4L
 AUbjclSp3MC/ovb3Kkbxbk/dJIcm1s/qqLYJS3hSd+l/CJfZhbf3amk09nN7MU/FUu
 ArjZpjqD0e1DJY4T5dmLrnolBCcWis32mnASaraM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.38] ([95.90.191.58]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M59C2-1i06jm1htE-001EXn; Sat, 17
 Aug 2019 17:39:54 +0200
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Chuanhong Guo <gch981213@gmail.com>, Rob Herring <robh@kernel.org>
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com> <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
From: Oleksij Rempel <fishor@gmx.net>
Message-ID: <2d48f4a4-7d30-547b-21ee-6aadabe7d7c3@gmx.net>
Date: Sat, 17 Aug 2019 17:39:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:KUmLKsF+HTyzMx/uyoNKutLyersnTtU0bdigAi87JdxCt+apx0p
 RVLj0qGlC+f5yfR4KdHtu1IM+omrhfvaVwW2MV4hi+r7opWxmVCN64gZ26VXAzcYviGctL3
 FSxjqt1KeAPEmF5+5FZgvYU+qKw6UHq/f5D4zpPwtZMtAomt6s8ew+XBo0O+PSYdk4Xytvy
 DcH09fsacZnm8/qW1JR9g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PVGbF0GK/B0=:/XleIUlOc/F0S93RM3xKFP
 Yk0/MDhFODIEuiZZcww7NTjHWHwDWdxM8cYONolAPNu0VCPPYdSiJfFCKczG9KSCeCkfTa68e
 BUYzoDm8eGiOO6Qj8llb6jENGpumkN+cpSaAGDyo1UoJRsGvvefcAKrMA9mhZH6z3W5O5oWwR
 En8YCmVkeLvuksHfK5WkRMHmuzZeEY/vuBmXy1nvm4FjyV2f3sixsJR3Ir7eyNsQsaKuHc8tO
 CfzxWR+89ES0BJjwtJXtR2+Ck08q0oHxqgqtdz3fiv8OcwEUqQi9a1UP81ksV35L8LvSxL7s9
 l4Q5lcPrN6cOAdiaHIETHkFnIF1toHQY9LLzx33lqQ5yv6squyKtZ2sQ2yF7oDeAXFrDlbZly
 9DBMuti1zkraj7yjtq2s0J9DqPzRD098MEIrO9lt9CUyv77dl5G5gzgylUTI5T9rEG4+55Gpg
 8QUwlTQuWtE7KHnpdPaOyY0UyfPtDYQD/TMUGcO90WrcO0oXUQX6PMx+xP0EfXi9D+g3VDkbX
 2W+S9U1cj6XhZWCmi5I1xIuQyjald7cvR9+r5+KoLP37BMC8cmwnR89svgYxLhG0kRbhtzWBU
 lVDxZZxLIefBix90CckokM5/X1yTdzobXQn01lJ1Vl+uqmqKAZTK65eK0oTkvGqlfr08bKubZ
 etVKkkBAEPbcJQ6TU1oeQcDD02EP2rOAIETe+dj7Gqf83ysXa8y6h3BA/YOylB3UQLbW8o/gZ
 YCL3COVx1QqOMoaykUsqbIXzSHJnXuTqBZsMuenKCxWbwaHfUskhyuX8vojcfgm4O12zVICC+
 TN6mRdqK9NmqH4ht1qAn3uc1zuKzCHZyK1dhZqdH2Qa+Gq5a9KCpHXtRGdiPXzlPZrFUcLz6n
 o/z2Jq8/hYOB4KZqljfBnvyNQISqVBjRRqStpYAquRyLfnDfrAOG2+U4+npUsJVtDWH6wduXT
 ZKV5mdDQfRl0K9s/u6VibTlEbVwpB59iIaZGG8MlSKhxd5QwPzGgo/BTpbgNFOmUKQ2SjTTZF
 bljFwecu85lqklhtdtyhFFy7zqwfACdZQcgOrx/L6lB2LwWzSHvl/kq3PG2JEyq1SbAHoehon
 OZ7D7OILi5flyJjgqkI+V+jsAqry203cx6fm+Akj3x3ucT6iUDYrtkuYnqORd6kbVOWyUZioz
 iDVMqIWG4cqo+Id6x4MCvLfVfz10fpRj6PYJHUFkzW6vnvQg==
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, open list <linux-kernel@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Weijie Gao <hackpascal@gmail.com>,
 John Crispin <john@phrozen.org>, NeilBrown <neil@brown.name>,
 Mark Rutland <mark.rutland@arm.com>,
 "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Am 17.08.19 um 16:42 schrieb Chuanhong Guo:
> Hi!
>
> On Tue, Aug 13, 2019 at 11:51 PM Rob Herring <robh@kernel.org> wrote:
>> [...]
>>> +Example:
>>> +     pll {
>>> +             compatible = "mediatek,mt7621-pll";
>>
>> You didn't answer Stephen's question on v1.
>
> I thought he was asking why there's a syscon in compatible string. I
> noticed that the syscon in my previous patch is a copy-paste error
> from elsewhere and dropped it.
>
>>
>> Based on this binding, there is no way to control/program the PLL. Is
>> this part of some IP block?
>
> The entire section is called "system control" in datasheet and is
> occupied in arch/mips/ralink/mt7621.c [0]
> Two clocks provided here is determined by reading some read-only
> registers in this part.
> There's another register in this section providing clock gates for
> every peripherals, but MTK doesn't provide a clock plan in their
> datasheet. I can't determine corresponding clock frequencies for every
> peripherals, thus unable to write a working clock driver.

In provided link [0] the  ralink_clk_init function is reading SYSC_REG_CPLL_CLKCFG0 R/W register.
This register is used to determine clock source,  clock freq and CPU or bus clocks.
SYSC_REG_CPLL_CLKCFG1 register is a clock gate controller. It is used to enable or disable clocks.
Jist wild assumption. All peripheral devices are suing bus clock.

IMO - this information is enough to create full blown drivers/clk/mediatek/clk-mt7621.c

>>> +
>>> +             #clock-cells = <1>;
>>> +             clock-output-names = "cpu", "bus";
>>> +     };
>>> --
>>> 2.21.0
>>>
>
> Regards,
> Chuanhong Guo
>
> [0] https://elixir.bootlin.com/linux/latest/source/arch/mips/ralink/mt7621.c#L156
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
