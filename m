Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C0A18427A
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 09:21:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 763EA8721C;
	Fri, 13 Mar 2020 08:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nyHfSQXGXh_P; Fri, 13 Mar 2020 08:21:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C76D87209;
	Fri, 13 Mar 2020 08:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5221BF30C
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 08:21:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B121871FF
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 08:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5wtAq7IkKN9 for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 08:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net
 [194.109.24.29])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2218871FC
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 08:21:10 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.234.233])
 by smtp-cloud8.xs4all.net with ESMTPA
 id CfZ3j1HP0hVf8CfZ6jO98M; Fri, 13 Mar 2020 09:21:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1584087669; bh=XOx2gtrl0/QdQw4FtDRbotgoOYOMw8gbaDUKtBrXmIU=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=f9n1dUEocS4ZbKtJv1ujdPQ+Sb6+Z2baEEGpQe73vOdLOHnQ+fKmXsMHIzatbxnmB
 xxTdqa1lUSHiJJjqlPfzZRbuVmAiOPa4azzajjYqywen+hYMgRi54ELArDDahA69Ip
 WauM5r0lewkJgbCuYfeG3LlmhKrEAqC79D5U1qPCAmdCusSk9StFd8NTEjIdGQYwYk
 8iO/QUfWGN5Chb+4+44oxWG0wbfLBZmX9cyY7SIGKK1YuqtETz3onH/+kx01Vqv67T
 8iX++s7J6iwO4BuZhkge0tINE7y4PkYeOVPaoWlhaNgdNG8SW3ixQ2FWMYoaz7zU0g
 y0B87Pixn+Jjg==
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
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <e93e6e1e-11dc-d505-7287-46b115a4a609@xs4all.nl>
Date: Fri, 13 Mar 2020 09:21:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200113141459.GA3606@pflmari>
Content-Language: en-US
X-CMAE-Envelope: MS4wfO/W7Ox867vsX2/fQCV+/X9vTuQGo/HQDazp7UvW8nqZsCyj7IkNo50nZuDB6xx2OB/oqZxaNPwA2ybQtLJHH4UFyKbbfRIjzY2yy2WZUa/2NA93YL7a
 TwkUzK5wcpPQlxxDkuWlo7xW9lU5KjOcElOLWDktwzE3kfCXyt22exvZfmWCfKpLFQkIno+fjRS1S95ikcDhW/wGnpQO/kws0BiaQ912gCuoer1N9+A3/vmf
 J7TTAxuUEkb/yFMnBNXhEh7z9TOMY3Qo9ifmd32AiEnE6z+TgZlt2ts2I4xgRbEuVVWEyCPtUTW2hJjkHv9QaiZtkKrGqaUvyfM0sPiSJR6jVqra1cwq+Ghm
 3MTkO0zdiBsRBPNjeb8lURM1QubTtoCRIgOX9NRaoKGcpNQVtgZbhdQ+63hyTssfm7VWy1PluCwjwCI1mknicCKA0qD1to86bTC0CdfIZoWT+XghdJYwJOzA
 KiX4tmq2ccDiBA3wqJP+IMrbXN7FR5FsVx7OFt2TKyZLXQS5UlOEhkFq9kz4m9ZJvNYpwEgr5rUbhPZBgIEaPCzelCBO9VmcogrHCvc5meY7CUDHQHg7+bcP
 jFk=
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

Hi Alex,

Again, sorry for the late reply.

Patch 2/8 has its own comment since that approach won't work.

As a general note for this series: it might be better to have two
patch series: one for patches 1 and 3-6 (not sure whether 5 can be included
or not), and one where the public API changes (i.e. new V4L2 audio controls)
are added. The first can probably be merged fairly quickly, the second will
likely require more iterations since public API patches always take much longer
before they are mature.

Regards,

	Hans

On 1/13/20 3:14 PM, Alex Riesen wrote:
> This adds minimal support for controlling the audio output I2S port available
> on ADV7481 and ADV7482 HDMI decoder devices by ADI. The port carries audio
> signal from the decoded HDMI stream.
> 
> An ADV7482 on the Renesas Salvator-X ES1.1 was used during development of this
> code.
> 
> Alex Riesen (8):
>   media: adv748x: add a device-specific wrapper for register block read
>   media: adv748x: add audio mute control and output selection ioctls
>   media: adv748x: add log_status ioctl
>   media: adv748x: reserve space for the audio (I2S) port in the driver
>     structures
>   media: adv748x: add an ASoC DAI definition to the driver
>   media: adv748x: reduce amount of code for bitwise modification of
>     device registers
>   dt-bindings: adv748x: add information about serial audio interface
>     (I2S/TDM)
>   arm64: dts: renesas: salvator: add a connection from adv748x codec
>     (HDMI input) to the R-Car SoC
> 
>  .../devicetree/bindings/media/i2c/adv748x.txt |  13 +-
>  .../dts/renesas/r8a7795-es1-salvator-x.dts    |  24 +-
>  .../boot/dts/renesas/salvator-common.dtsi     |  35 +-
>  drivers/media/i2c/adv748x/adv748x-core.c      |  54 +++
>  drivers/media/i2c/adv748x/adv748x-hdmi.c      | 355 ++++++++++++++++++
>  drivers/media/i2c/adv748x/adv748x.h           |  53 ++-
>  6 files changed, 523 insertions(+), 11 deletions(-)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
