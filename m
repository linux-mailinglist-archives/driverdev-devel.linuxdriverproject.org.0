Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE7518454F
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 11:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D11B989514;
	Fri, 13 Mar 2020 10:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TkpAJRQwHanX; Fri, 13 Mar 2020 10:52:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C491F89451;
	Fri, 13 Mar 2020 10:52:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 643941BF349
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60EF688499
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 10:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lgHswWN4tE09 for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 10:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb2-smtp-cloud8.xs4all.net (lb2-smtp-cloud8.xs4all.net
 [194.109.24.25])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8075C883E1
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 10:52:10 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id Chv9j1v5yhVf8ChvDjOTmd; Fri, 13 Mar 2020 11:52:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1584096728; bh=XgNQEpf17BQrRrtbwqWNWDVbPQDeyw/hevpZ0P7tT2Q=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=HEtJLVNwTfTp+Xt4zdLoxkqbbk42Vot59L4pqGVceHa5gQn0FKimkgQYS4+p03kBo
 AFTgw6BCCJ3C4Fs+RagzsYkef03tWeKWqCMLxKyO4SxwnoHLc+ZbGIc73eit7/4OlJ
 3RJf/2MaY2eaUReeNxe23sSTSFvL/1TOnvHUJ0A+0OeYiD6VChqwMFBxi/zcOUChwF
 FEL7SXBAghggW0RzmE9y2D/UQeEwiV/aTleP0MGZsxKRlwSLj6zl8IBBQ0AU6xEjSG
 XGJvrqY85vrAW171lAI7gyjLGUkhjMfG1NwHiLQHWUDSLnIUDz4XyxHMLGiDyb+mrp
 8i4gpkIe8Yq/Q==
Subject: Re: [PATCH 2/8] media: adv748x: add audio mute control and output
 selection ioctls
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141521.GC3606@pflmari>
 <ff34078d-895d-08c8-c64f-768e75388038@xs4all.nl>
 <20200313102600.GF3832@pflmari>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <c260defe-bb3c-0dc2-476f-5cf8ff27b915@xs4all.nl>
Date: Fri, 13 Mar 2020 11:52:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200313102600.GF3832@pflmari>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEKRLqenygj6TEyXEiRcxy9HK3lxscJw3t3rlNCf90vl9x7Qy/dyNnY5TO60y8eB+miEY/CLUsiqnyR1ljHOd/oyWxwV3aot+7NoT973WtnujiMPYPyN
 aDnPTaJRDv+ewpgOSqFkUpt5JacbF38ctyDMSLx9dKkGz09HK5LX8G34Xqs1rAeOsyQMsAYWUy8S9bSyRA7tvnJ2ygeL7bEQgFwkJGBNQc7J1898AnTn/xuU
 yQG4fZS7ExOJNh60XuLqJHtFscxO/ETq5H2xqYJl7w1K9RGm18FCpR8BVu3OHXwfVU/C0ZSj5qoYeVh3QpEvLUm6kSXHYJrzR+Zla1drE2BeB4UD/L+d/GjS
 +BjEbtiIF/Dw8hrP35sYD++1NbzFFKqCjyrhtbnFiZ5lvJF2YGLl7do8rq6RJW8jaaxYKBe5XVFrB073oQNwpCjmrIQXGqN/SHzwbt9EFLss3Q6ndhDfGOc1
 dY3x1H5ULrq9ydbCbR4jwoZmT2gRKIfAiaYfdv0QHs3HZYjTC3+QtTWjY039CL91wysydPbgQ3eKZJ/dU2gu/IICfeeI3J1/g3EeDS8Xe4afMoB+ttnhFPtm
 5Og=
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

On 3/13/20 11:26 AM, Alex Riesen wrote:
> Hi Hans,
> 
> Hans Verkuil, Fri, Mar 13, 2020 09:16:11 +0100:
>> On 1/13/20 3:15 PM, Alex Riesen wrote:
>>> This change implements audio-related V4L2 ioctls for the HDMI subdevice.
>>
>> This is really where things go wrong. These V4L2 audio ioctls are meant for
>> old PCI TV tuner devices where the audio was implemented as audio jack outputs
>> that are typically looped back to audio inputs on a (PCI) soundcard. And when
>> these ioctls were designed ALSA didn't even exist.
> 
> I see. That was before my time :)
> 
>> Generally an hdmi driver will configure the i2s audio automatically, which is
>> typically connected to the SoC and controlled by the ALSA driver of the SoC,
>> but there may well be missing features (audio never got a lot of attention in
>> hdmi receivers). So what I would like to know is: what features are missing?
> 
> Well, the audio is missing. The current adv748x driver does not export the
> audio features of the device at all. There is no code to enable the I2S audio
> output and it is disabled (all clock and the data lines) by default.

Sorry, I was vague in my question. Obviously that needs to be added, but besides
adding the low-level i2s support I was wondering if there are additional things
that need to be exposed to userspace in order for audio to fully work.

> 
> But, by now it seems to be clear that implementation of ALSA SoC DAI
> interfaces is the way to support the audio.
> 
> And I am already slowly working on it.
> 
>> Anything missing can likely be resolved by adding HDMI audio specific V4L2 controls,
>> which would be the right approach for this.
>>
>> So I would expect to see a proposal for V4L2_CID_DV_RX_AUDIO_ controls to be
>> added here:
>>
>> https://linuxtv.org/downloads/v4l-dvb-apis-new/uapi/v4l/ext-ctrls-dv.html
> 
> This seems to be an explicitly "digital video" control class. And it has no
> control option for mute. Or did you mean a similarly structured new class for
> "digital audio"?

There are no DV_ audio controls at all today. So any new audio controls would be
added to the DV class. But if there is nothing that needs to be exposed, then
nothing needs to be added :-)

Regards,

	Hans

> 
> This feels like an overkill for this particular driver...
> 
> Regards,
> Alex
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
