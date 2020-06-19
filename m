Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E52462004F3
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 11:24:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D8B2027A45;
	Fri, 19 Jun 2020 09:24:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y6itwg3x9AVY; Fri, 19 Jun 2020 09:24:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D6A3228E7;
	Fri, 19 Jun 2020 09:24:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A58751BF866
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 09:24:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A1D61874B4
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 09:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tp1W-HQHiGda for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 09:24:16 +0000 (UTC)
X-Greylist: delayed 00:07:50 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 66E4B8742E
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 09:24:16 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MXYEr-1jNs2M3G9f-00Z3DM; Fri, 19 Jun 2020 11:10:53 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 8E2596518E2;
 Fri, 19 Jun 2020 09:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5kOhP1Rq5qJ; Fri, 19 Jun 2020 11:10:52 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.10.5.94])
 by mail.cetitecgmbh.com (Postfix) with ESMTPSA id 3CF6D650C2F;
 Fri, 19 Jun 2020 11:10:52 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 15BCA804FB; Fri, 19 Jun 2020 11:10:52 +0200 (CEST)
Date: Fri, 19 Jun 2020 11:10:52 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: Re: [PATCH v5 7/9] media: adv748x: only activate DAI if it is
 described in device tree
Message-ID: <20200619091052.GB7780@pflmari>
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
 <c3c8ece14c0fbc987dc201c9b61dd22d98f83056.1585852001.git.alexander.riesen@cetitec.com>
 <c752ea76-c8da-c77a-104f-9163230cc08a@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c752ea76-c8da-c77a-104f-9163230cc08a@ideasonboard.com>
X-Provags-ID: V03:K1:rbl/SW6nDhOvVZnU3VniVHKkESyDd8Y5zwjO7GuJtU+r0jMpPem
 ZxlIay/v5RD2OgtYAGDJbcTrtjfwviHE1cp2Dw3QJ3aHSAgvXOWARIeiSai/t3JcW5M43/g
 LoteXF9oTuMYUT0DPcEahQFieByYGPXlRz6MUdfC/kAvs8kB8wByGJE8zaAugjnqdsQbIW5
 V8WPgVfjFVhd0HYoO9bHw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:RUuDcIACdNM=:lnR6g9r+SBsJNaMgtt79Iq
 v6rayGyRPIcTf1vHKHyIu3w6FXYMy80NHUG+zPJp8JiwJliAM6X10kAV2dIoUZfU6ktUOQ1jZ
 9obZdWcZfKOMBJAykFuG0De1rPWOqUyLvDKs6cpClONFzGbzNB+hiAHvI8L1LDr5Tb8Qj8ObU
 MZSAda3fViAC5cHyQjJ9GVAr0NtTKcghtzeY/I+EvRfJzeH7y0KkXSzkfc6rmx2zgBB2EE47r
 YDn6p0How9qybgsXOJOGnneyH58nXiNVpt9OnywDsh0g8xsXsp+JOIrPu3SXP2R3aZPY1AWuk
 c5g0MQG+6LXJ7ofFnFJdfhDll/WMZXhcFqz7wBzUrr0RoTu/jXte8u/QpborkzDw2P33utxqg
 SttldpnUUN021ZajAKT2rEoHbuEegTKun7uelX2eZmIVsY+QtB622tFP0Kt/Yy/gQxfm0JM2g
 f4RHd4/732HPX13ShCy+nkeUrIdPi24cabrLYUmRfKYVRa7oajkPSBUT/HXHtWwFLFhWgdoO9
 zyWKuq/qmzfutYOVAr5HVoOBVVrWf4IOJso4MPB5GpqlXu8Z/uT1mASQDKBTFVP6nNnoPHAoP
 btowOiBStiLFj44w+iykAJtjd3oFdCJqe4JwLBKG1VoWAK+rDF8gHg7jV0piKxxj0A017zHpQ
 tchUEdx1jfVVAINhmKSjeT1QLbxBX3OFCnjVsRDpWhP7LSyFU6yjWFbxks5MNzsjRIprX0xid
 +ZjbsD6fn+XKcfaHI9fXOE3z4cAsXWhsKrz0AsodzyEx/2CfOP8uRRWIA+J8cRquSWjb5LbS7
 4Hku1lKJ0xUR5TFgUsZRLNAcbY3e1pYPXa8IiNyPG+7q008Hk0Q45pMHf/hxai1JmVqMjwt
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

Kieran Bingham, Thu, Jun 18, 2020 18:17:04 +0200:
> On 02/04/2020 19:34, Alex Riesen wrote:
> > To avoid setting it up even if the hardware is not actually connected
> > to anything physically.
> > 
> > Besides, the bindings explicitly notes that port definitions are
> > "optional if they are not connected to anything at the hardware level".
> > 
> > Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
> > ---
> >  drivers/media/i2c/adv748x/adv748x-dai.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> > index 185f78023e91..f9cc47fa9ad1 100644
> > --- a/drivers/media/i2c/adv748x/adv748x-dai.c
> > +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> > @@ -216,6 +216,11 @@ int adv748x_dai_init(struct adv748x_dai *dai)
> >  	int ret;
> >  	struct adv748x_state *state = adv748x_dai_to_state(dai);
> >  
> > +	if (!state->endpoints[ADV748X_PORT_I2S]) {
> > +		adv_info(state, "no I2S port, DAI disabled\n");
> > +		ret = 0;
> > +		goto fail;
> 
> How about just 'return 0'?

Indeed. In the retrospect, the whole event of loading the DAI driver does not
feel that important anymore to warrant logging on info prio.

> Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> 
> This could also be folded into 5/9 too I guess?, though it is easier to
> review the sequential additions, rather than the one-big-feature
> addition ;-)

I would prefer to have it separately, if you don't mind: maybe not a big one,
but loading a driver without hardware for it *is* an event.

Thanks,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
