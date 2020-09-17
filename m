Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4F926D6B2
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 10:34:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D1FB2E17C;
	Thu, 17 Sep 2020 08:34:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g2atbIe3+RT3; Thu, 17 Sep 2020 08:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8A0162E16F;
	Thu, 17 Sep 2020 08:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 739271BF310
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 08:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 702A08759A
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 08:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sghk7IvSUEYy for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 08:33:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 633C5874F9
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 08:33:55 +0000 (UTC)
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id IpMJkL7H0PTBMIpMNkl9Tx; Thu, 17 Sep 2020 10:33:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1600331632; bh=16XUzEaDqPGbj9ZPKdSKXNPfKFUiYOCU2kzIJSjyIOg=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=a3SrX882ByFRkqBq9jc/ZgOfOFP2pk5Fs1xhpaAqq5uiW5i9+m7P7C4+jmEpDCxZD
 AlObv8wTW96BPXolOGeLnqb3Qmog8fhCq4GNCFJV0zL4GDGzGpL4hvUWRA8IkoQBIE
 buICtH0MMt7UcE+IkdojU6MXorE9lFG55pqglO8zyB0Wvc8+7fRBAlKEYFgFlCvV5/
 PguZpGF/oL+iLofVMFaC0IDSit+M/uAVZiK9rBz8GmkJ8/TBmqlkvZmv94pN9D0HLr
 1Br7qjZXye+AOyJXl1IaYaDSTQs1gajNg40QrYUv3b6b442tCingIyU3NURVHQngLU
 78/5dEepeenrw==
Subject: Re: [PATCH 0/5] ARM: dts: sun8i: r40: Enable video decoder
To: Maxime Ripard <maxime@cerno.tech>, Jernej Skrabec <jernej.skrabec@siol.net>
References: <20200825173523.1289379-1-jernej.skrabec@siol.net>
 <20200827151914.copcle3xjn3ek6p4@gilmour.lan>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <e9d108ee-29c8-7a34-16c0-f9fb2b788f25@xs4all.nl>
Date: Thu, 17 Sep 2020 10:33:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200827151914.copcle3xjn3ek6p4@gilmour.lan>
Content-Language: en-US
X-CMAE-Envelope: MS4wfJTGm402BRM932Ez8WjMKHNh3v1XhbIPN7JDQclduO2YMTLNWxavqM4T9eK6Peswf8a1mvbQTWKYX7BrVxLX46DQX+KyEbSbJ/G5nktysxAKj58Iwz5B
 Z+YzYIkzkb6bTZzXh880sQ6Cq2qiO6YRt2TAgtSial1DZc6HUfqA30uiCloy0tEXJwj0M7PVKHEgepuU/SPkNc/oHoOYhX2LwBgvU3TT4BLPx0xnSivtkAyA
 K+6fGeJWAfyXWFTFkTI9S9taRNWAwODZ6PgtHatO6pNk4jQWwN3rQ2qU7TGdlL9Px8NUa+Rm7d4gnl1cdgqxTdGV33o5aaMfx3E+5Q6aH2flh80GYgDkTaZG
 oMJ8j6AYjZFmjbD3UXgItwQrorJGMNNZ76mcCcqHTga75iUQjzM8nGSh4mXzQ/DAWHfJb4LTewEP/8AX4j4d6lqM6eVlLHms4dt6gPxzx08DiqGbBSnajBap
 seocacVixhfVCITKs4oJPxPzihOtJIdadVzPKoIA7RcNX2vwiVRwCi/EnpyvGQpXcMREaYpwE5pRd3oHzLxlPJEv+J2aiynISsyeF004QtrLtmuW5UqB9byP
 GrfO993YRuoIky4LlARkTBAO6Z5HJQBIU5+r3x+6fgjNy765vbu6kgjhHHIyfzJNcPTVVcmw7NyPLUZnlfjOaiA6pIdzf4QEDC/dxF6N/zct2r8eL1Ad/z/i
 k3Nc8SDYPcw=
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Maxime,

On 27/08/2020 17:19, Maxime Ripard wrote:
> On Tue, Aug 25, 2020 at 07:35:18PM +0200, Jernej Skrabec wrote:
>> Allwinner R40 SoC contains video engine very similar to that in A33.
>>
>> First two patches add system controller nodes and the rest of them
>> add support for Cedrus VPU.
>>
>> Please take a look.
> 
> Applied all 5 patches, thanks

Just to confirm: you've taken patches 3 and 4 as well? If so, then I can mark them as
done in patchwork.

Regards,

	Hans
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
