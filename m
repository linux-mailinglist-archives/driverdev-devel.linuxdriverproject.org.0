Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 625631842C8
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 09:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E0B087402;
	Fri, 13 Mar 2020 08:37:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhXBVNXveviN; Fri, 13 Mar 2020 08:37:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B487387403;
	Fri, 13 Mar 2020 08:37:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 167BF1BF30C
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 08:37:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 12B75231A5
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 08:37:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StteWXn0I3ey for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 08:37:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by silver.osuosl.org (Postfix) with ESMTPS id 7AF9423109
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 08:37:24 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Cfokj1LVWhVf8CfoojOB6e; Fri, 13 Mar 2020 09:37:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1584088642; bh=NPDVj0hDHGTudN6m2hDl5vDuc6roQ9SfR7NRCqmST08=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=VJFK31PlgtKdUTAxIara79MLK1CVGweGI7JNsxuMwfny6tUCzfmjwR/Ok+rBhCKm4
 vp/K0TVQtSUjMWbHGxUDrQAFg7qn36l23L1SrvnibLCOJVEAiy0hPhG8AMB+eahLBa
 zBe/m0OAedra3RvsdPdODrLiTOW3jDKEcC/EpK0Q8d9B93ZuZGt2RhsIF/OzDtjWVj
 FIMNOITjFlfVHzTCZY99QEPe0KVgRhKor1Lg31JEZ7/mj4l1aWUv6jkWdC7zcu52cX
 6H+m3TxXVjNJB49bjlSU+JZS/43x61R9UZfQ3u086crPMOhFkaelvXKp62VVnWtQA6
 +irAiNbazUH4Q==
Subject: Re: [PATCH 0/8] media: i2c: adv748x: add support for HDMI audio
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20200113141459.GA3606@pflmari>
 <e93e6e1e-11dc-d505-7287-46b115a4a609@xs4all.nl>
 <20200313083107.GB3832@pflmari>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <4ab3dd9f-26fb-ce38-170c-bba4b3777455@xs4all.nl>
Date: Fri, 13 Mar 2020 09:37:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313083107.GB3832@pflmari>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEcFIdVlB9n0Nfwlt2moC+Rr0T6Ztdr9G19F2RB1eRFOSl2wOxKv/b8i6Fz/VKQa8SUmHLYTHSddHNm5REyThEuU4PFzEJRphQtUmiTZzUYoCoyecA3w
 +BVXVJyWIZrIZKDL8z9L1TKRYFZknkUQyQ49SMwmjXgVCW4xmoRqsX9rdGNHDMGRTUtODvQOlV2as0WcL9kKkaPO9suFLNN2HM061XgDf45b28+2X69DP51V
 WNRc6ARJs1Bv9pdWRHNTHVEg3pqd+pdo8nAQctf0AIlR7RzV7c2RSeuDVFwTUFoid+F/7XZaPTxrDH1j+C2P8nuQ87NdnuDSfJ6vNyjmGjbl2TW6jHfeWGRh
 JYcODhFG4JNDPDKexZmMwpUJzeuwmLQ8b1rDhNGXOFYGfSphmsMzNazI5OMqMuAU45q9BeIBFuYDZCGq8gmIfAVr1MYc/neBUfTmc6DPYAUOHHUuytXTLOXU
 RfrwpaDirMluhPP5UUgb7Vqn6kstrSTyRvV9R6EIRuJOu+sSXC/0tQgGdni3Fdoe/CpFGmI9TVCVpRDc3K91dCYoqvYoFGxxyYOuGoGpfFQr2qWrkIoCMsNs
 OMs=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 3/13/20 9:31 AM, Alex Riesen wrote:
> Hi Hans,
> 
> Hans Verkuil, Fri, Mar 13, 2020 09:21:05 +0100:
>> As a general note for this series: it might be better to have two
>> patch series: one for patches 1 and 3-6 (not sure whether 5 can be included
>> or not), and one where the public API changes (i.e. new V4L2 audio controls)
>> are added. The first can probably be merged fairly quickly, the second will
>> likely require more iterations since public API patches always take much longer
>> before they are mature.
> 
> I see. After the discussion started, I started to have suspicions of my own
> regarding the V4L2 ioctls. Except for log-status, which is a practical
> diagnostics feature (even supported by v4l2-ctl), I'm thinking about dropping
> them altogether in favor of audio soc DAI implementation.
> The DAI implementation does all we ever needed from the device. Besides,
> selecting a I2S protocol variant from user space (I2S vs I2S/TDM) never felt
> right.

That sounds like what everyone else does as well.

> 
> Shall I submit the log-status separately?

Yes please. In my experience, log status is a very nice and very useful feature.

If you have other sensible cleanups, then feel free to add those as well.

Regards,

	Hans

> 
> Regards,
> Alex
> 
>> On 1/13/20 3:14 PM, Alex Riesen wrote:
>>> This adds minimal support for controlling the audio output I2S port available
>>> on ADV7481 and ADV7482 HDMI decoder devices by ADI. The port carries audio
>>> signal from the decoded HDMI stream.
>>>
>>> An ADV7482 on the Renesas Salvator-X ES1.1 was used during development of this
>>> code.
>>>
>>> Alex Riesen (8):
>>>  1. media: adv748x: add a device-specific wrapper for register block read
>>>  2. media: adv748x: add audio mute control and output selection ioctls
>>>  3. media: adv748x: add log_status ioctl
>>>  4. media: adv748x: reserve space for the audio (I2S) port in the driver
>>>     structures
>>>  5. media: adv748x: add an ASoC DAI definition to the driver
>>>  6. media: adv748x: reduce amount of code for bitwise modification of
>>>     device registers
>>>  7. dt-bindings: adv748x: add information about serial audio interface
>>>     (I2S/TDM)
>>>  8. arm64: dts: renesas: salvator: add a connection from adv748x codec
>>>     (HDMI input) to the R-Car SoC
>>>
>>>  .../devicetree/bindings/media/i2c/adv748x.txt |  13 +-
>>>  .../dts/renesas/r8a7795-es1-salvator-x.dts    |  24 +-
>>>  .../boot/dts/renesas/salvator-common.dtsi     |  35 +-
>>>  drivers/media/i2c/adv748x/adv748x-core.c      |  54 +++
>>>  drivers/media/i2c/adv748x/adv748x-hdmi.c      | 355 ++++++++++++++++++
>>>  drivers/media/i2c/adv748x/adv748x.h           |  53 ++-
>>>  6 files changed, 523 insertions(+), 11 deletions(-)
>>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
