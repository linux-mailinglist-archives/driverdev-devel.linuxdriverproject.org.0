Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EC5268729
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 10:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D35386915;
	Mon, 14 Sep 2020 08:25:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zg6QKhwAbP-6; Mon, 14 Sep 2020 08:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1CBB86916;
	Mon, 14 Sep 2020 08:24:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C84321BF3CD
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 08:24:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C34F785A82
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 08:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k1oJvv1dxBSN for <devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 08:24:56 +0000 (UTC)
X-Greylist: delayed 00:06:02 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E64085A6E
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 08:24:55 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N1g3U-1kg7Dy0gTw-011xYK; Mon, 14 Sep 2020 10:17:10 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id A4ACB1E01E7;
 Mon, 14 Sep 2020 08:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fT1QDICKneYm; Mon, 14 Sep 2020 10:17:08 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.10.5.94])
 by mail.cetitecgmbh.com (Postfix) with ESMTPSA id 29C7B1E01E6;
 Mon, 14 Sep 2020 10:17:08 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 1802980518; Mon, 14 Sep 2020 10:17:21 +0200 (CEST)
Date: Mon, 14 Sep 2020 10:17:21 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: Re: [PATCH v5 9/9] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200914081721.GA4705@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
 <90f2c14fcbe5d06eefdaeadbe8a6efc8c91523f3.1585852001.git.alexander.riesen@cetitec.com>
 <fd19ca3c-e815-499e-0c46-0a4e2684b6b9@ideasonboard.com>
 <c7d93d6c-4893-8bd0-5859-87f30389b5d5@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7d93d6c-4893-8bd0-5859-87f30389b5d5@ideasonboard.com>
X-Provags-ID: V03:K1:UHcFLjAKEiiKW4tNPExK/jcV8LIPMVxxdUxhNXRdIikco3TrDmb
 o/cyr2b4x5Mwrrviosr4vfXYTCUCUGPFYLR3Z825Bfv8F5YI8D/7XS7HydSH7VHHR7r/+cQ
 eS9YMhvcQBrAQbEjgGHfU0ZHDoVlUawgEkQLExImqd+ohQ1IRzSIuhk281L4kKQhQpvEhxg
 SwlknkW7VuighC67pb6nA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:fpe3Fn5iX2I=:s2HyBdTON/2eYE6d6Uv69y
 TdQZxL1aaiWyc4wJMfxnzrCPDmy4cZw/AqoWNBn7OowW6tRnVqY7RUpakdb2/E7ku9eCO1lRF
 l3AlFzxI8cbn3vG+aFvrB6M4KUhJRJx0JhFXoO1oFqmGz0gy5tBQ39l/7Np11FKrwRtPko5MC
 k5CipF3KSZPxn4tb5i4YT/vqhPPyoa+1bQZ6KFWvCqpycOM9RjkjxTXqfqYQXerO8z+UVqdHq
 K4eq201hVWCjoPg9OE0L8HpWXFOCSvPC01UWgMa9L5oq5JI89bulaHKV6r/dibLInkDZLEZiV
 Pq+7W/LIlmrUDivVxwXLN/TZFCHGRB7ABtKA8EKjPiiEsZi1RAAxY4kcZ9ucfZBo35hCwWAxF
 2bqPKpAr6jIws/3tuyB3FQwDqvVCycRnkPidmxW/NAKoKvaNeu4Tsiio8dvjjnkLl9eGuTexG
 do3MdIkPYL7ghydJWPdzF92aV4Ppe2sP3IXLk+G3yn6n1t+oKwsuO3zdT9t5RpRs+65sre4b7
 aqxXOrrW2T8MmPfX022dqc4LZ2UmoM2Z9IU/kBN0A0JSQZ9e93ZtJKh4Jj2EzioyVIpqn+MEH
 1GvmYvLE7m6G0WVLHZkK/EZbPks53K/oAqwtt/nvSXUQVbY6BNDJa6LjrfH+VtG8oHfYKF5nh
 vTmg91uec+B1K4n3+ApUnDyn8dSAXiBhKx8DBufyZwoJOEjS17RUrfeTCwsh8xk76OjGuIdcK
 Pnx9+vDi6nrhrIanWzn4zPP1RdrgUhjTN/kSbmEE99ZqvzrdeP5IGbvruAEIt+Jz/dzwrEPD0
 9b5JOBlk6eBND+eFgbEo/XNk1jmB55P/X9cQqbpaPMYke7qf3jHXqkB/GLIMtH3l7/ar3j7A/
 /bZgidR+PUGWoglgJRDA==
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kieran,

Kieran Bingham, Tue, Aug 25, 2020 16:57:04 +0200:
> On 18/06/2020 17:32, Kieran Bingham wrote:
> > On 02/04/2020 19:35, Alex Riesen wrote:
> >> As all known variants of the Salvator board have the HDMI decoder
> >> chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> >> endpoint and the connection definitions are placed in the common board
> >> file.
> >>
> >> For the same reason, the CLK_C clock line and I2C configuration (similar
> >> to the ak4613, on the same interface) are added into the common file.
> >> ...
> >> ---
> >>  .../boot/dts/renesas/r8a77950-salvator-x.dts  |  3 +-
> >>  arch/arm64/boot/dts/renesas/r8a77961.dtsi     |  1 +
> >>  .../boot/dts/renesas/salvator-common.dtsi     | 47 +++++++++++++++++--
> 
> Once again I'm back trying to test this series, and one issue I've had
> is that the board I have (r8a77951-salvator-xs.dts) isn't included in
> this DT update.
> 
> For v6, Should we include the relevant changes to all the following?

Ok. I shall add them as a separate patch though, as I have no way to verify
those boards (and some verification seem to be in order...)

> arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
> arch/arm64/boot/dts/renesas/r8a77951-salvator-x.dts
> arch/arm64/boot/dts/renesas/r8a77960-salvator-x.dts
> arch/arm64/boot/dts/renesas/r8a77965-salvator-x.dts
> arch/arm64/boot/dts/renesas/salvator-x.dtsi
> 
> And perhaps handle the salvator-xs in a second (yet very similar) patch?
> 
> arch/arm64/boot/dts/renesas/r8a77951-salvator-xs.dts
> arch/arm64/boot/dts/renesas/r8a77960-salvator-xs.dts
> arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
> arch/arm64/boot/dts/renesas/r8a77965-salvator-xs.dts
> arch/arm64/boot/dts/renesas/salvator-xs.dtsi
> 
> I think I've added the relevant entries to my dtb, but I haven't
> successfully captured audio yet.
> 
> I can see the device being listed through arecord:
> 
> kbingham@salvator-xs:~$ arecord -l
> **** List of CAPTURE Hardware Devices ****
> card 0: rcarsound [rcar-sound], device 0: rsnd-dai.0-ak4613-hifi ak4613-hifi-0 []
>   Subdevices: 0/1
>   Subdevice #0: subdevice #0
> card 0: rcarsound [rcar-sound], device 3: rsnd-dai.3-adv748x-i2s adv748x.4-0070-3 []
>   Subdevices: 1/1
>   Subdevice #0: subdevice #0
> 
> But as yet, everything I try to record fails or is empty silence.
> 
> Debugging ...

Does it fail somewhere in the ASoC infrastructure? If so, how'd you find out
where exactly and what fails?

Asking, because when I was writing this code I ended up adding quite a bit of
tracing into the SoC core to figure that out, and I just hope there is a
better way to get at the diagnostics.

> >> diff --git a/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
> >> index 2438825c9b22..e16c146808b6 100644
> >> --- a/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
> >> +++ b/arch/arm64/boot/dts/renesas/r8a77950-salvator-x.dts
> >> @@ -146,7 +146,8 @@ &sata {
> >>  &sound_card {
> >>  	dais = <&rsnd_port0	/* ak4613 */
> >>  		&rsnd_port1	/* HDMI0  */
> >> -		&rsnd_port2>;	/* HDMI1  */
> >> +		&rsnd_port2	/* HDMI1  */
> >> +		&rsnd_port3>;	/* adv7482 hdmi-in  */
> > 
> > Ah - that was confusing at first... but HDMI0 and HDMI1 are *outputs*,
> > where of course the adv7482 is an input ;-)

I shall add an "output" to HDMI0 and HDMI1.

> > Otherwise, I can't spot anything else yet so:
> > 
> > Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

Thanks!

> > But I fear there may have been some churn around here, so it would be
> > good to see a rebase too.

Of course, I shall rebase on top of linux-media/master.
Should I wait with submission until you get data out of your boards?

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
