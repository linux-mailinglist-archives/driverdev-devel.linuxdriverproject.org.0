Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6984911C5
	for <lists+driverdev-devel@lfdr.de>; Sat, 17 Aug 2019 17:45:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 673522154E;
	Sat, 17 Aug 2019 15:45:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Den8rQkM6KRw; Sat, 17 Aug 2019 15:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60B732152F;
	Sat, 17 Aug 2019 15:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 873311BF4DD
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 15:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8412B21505
 for <devel@linuxdriverproject.org>; Sat, 17 Aug 2019 15:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ttjdpYQCqcED for <devel@linuxdriverproject.org>;
 Sat, 17 Aug 2019 15:45:37 +0000 (UTC)
X-Greylist: delayed 00:05:14 by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 2C8941FEAB
 for <devel@driverdev.osuosl.org>; Sat, 17 Aug 2019 15:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566056734;
 bh=xLEnuBmrR/uFscSY3VPh/qzC4C+JNq9Vyo2I8dKS2YI=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=ksHPIoC+0DOsEChYMzoMElxBMo3g+fbkWthYQvpfVoU4PEwP86ey/Ywa+bldRZwNf
 rsvKutUPjPoGcutxqoFB4IQdVvPNm03O8Wg4QbnvETxjZG8+LOhOxKsbJKfeKze6/g
 zoDAh3f/NEMnC+U/NWiH+EMCt994vh5ol5iCVJ6g=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.178.38] ([95.90.191.58]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MarNa-1hfoy1225S-00KPLm; Sat, 17
 Aug 2019 17:40:03 +0200
Subject: Re: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding
 documentation
To: Chuanhong Guo <gch981213@gmail.com>, Rob Herring <robh@kernel.org>
References: <20190724022310.28010-1-gch981213@gmail.com>
 <20190724022310.28010-5-gch981213@gmail.com> <20190813155143.GA19830@bogus>
 <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <f0743ace-0ca2-82a2-a162-aaa98c8925a8@rempel-privat.de>
Date: Sat, 17 Aug 2019 17:40:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJsYDVKnf4M8jyVOyotRxs=SsHqjex_q60AwkX=QAPK33ivw-Q@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:Y7+/rIX/X/rHWVa8YAjwg6EVopQ5xqOASiWpAFiqfw3VZUxwevS
 XD/pjP+cds1KG21PWSwAduQgKrD5V5Js/ozzRzBAgpWEUlO2BDFsngZI9AzXfxu3gjMeXu6
 2MEa7u3TVzdqM6r8k8MVZKgk2M40uDJeUF3K1jRkrZMw8K7bozhkLHf0AS8PVq1qZpliVJX
 UayhG5CGqUZKsTzKGJu+Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:T/V7/v9RgfM=:4nhWfYQy9BctBZOQ8DsiJ4
 sOhem/jfO0bP96vAE2dNi16ntsLYVKqJGoNQnd6tekq3i22aj54vcQHOI9zl3/1t2t9OlaGFz
 /R6D6vZusmUUoPmND01maQ/lo+xD/e8jU6J/fN5spAcOIcIDPV0cK6qmhHrOJHCYqdbTrT1Eg
 WPM6abNLqi6sOtFuqpSz1O3VTAbPM3NHPU95W5b58uOb2Rf+8EvezlfBHHz1FIY0mlFMV3KCa
 IuzyKBkD0WRK04WVnPR1G6O/q6Lc7r9yeGSl1TMZGR6p6skAxnsjlSC7S8Khv+CUAIFhRabTi
 E5W/zxB4SDzyGNMB7uf2tWddeMNa2XVxmjGj2nc9Cy/jFPcfcRzcGbI831GHTFI/OZ1zrkqfR
 yQT8YcHjs9ioPM7NAi+kuQbHLgyUHNysIz79kuxh/LsVX2OV80Dp5ySL8raiKeWLPwZ6SrzBO
 i1NnWZ1ejPS/rxlXEQhWY0LljqIK42EydiITHFP3VbairEqTtT7uD38/jPmM5SCQoMn5agWZ3
 OCgWfpbcdx4TRpTHW3mL/TbvJsFD3Fc+yye8Rc7z8MFeZkXjZH2zjwF37wucwajlfTdKaoL56
 dNjtJ1YJa5q/V4yPGzCsJtnwyeYTdnYASPFX+eZrm11zQm8IFpHO0gWGc6ErrQImmUoQCpXuI
 vqM+yRCQRTFVAufbjtj27MksFYhNhZqQbkzz4f/QEcPXfOCAvplEu8/n7qejWPn+mNKvoZ5Y6
 txYKi9753IIVRXQgYxeY7uXa8AntH7ewu3BV2o81EZw4Ifly1Qmfj5xQdERCICH6ibmkhW7UY
 ivwScixJWPr21hw2fJy6gdze8Lg3WXHjzqfjYsTznS/czM6O0HhmyrxxYFjEuaTmwCAYZ7ZS7
 oeMwqIjCHcZ48zjhvwVybT+Ye/qck9ok+BGsV87VQ/MpFQiMR4vrCGcEaaKUm39vRvzS3lps+
 S4F/30oA1xCe/7TPuAfIhckk7TcLYyHbK+Y88z1hM8fwW40o3Gm2UUhHRIzC2262NNxXOtfGO
 vOWSH/GI+HEsiAyHFE1fwugkIw5OY1S2wRW3ClTd2sTDh6A8TOl7L90Apg8y8SzF3gMXfsZPF
 keLwjuqniaeFAN7zxTBwpX3/XGBxa7CXZybtqB1VvOitQGUt242L0NTqxSlqHbaB1L4rGuqUG
 AdHpQ=
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


--
Regards,
Oleksij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
