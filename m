Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 777D9184565
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 12:01:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E71827114;
	Fri, 13 Mar 2020 11:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fnOTSPF4O9JQ; Fri, 13 Mar 2020 11:01:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 96F1225C8A;
	Fri, 13 Mar 2020 11:01:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C4FE1BF349
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 11:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 491928742C
 for <devel@linuxdriverproject.org>; Fri, 13 Mar 2020 11:01:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xaNpzFjwdHk for <devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 11:01:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 144F38741F
 for <devel@driverdev.osuosl.org>; Fri, 13 Mar 2020 11:01:12 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MP2zs-1iyMZU39UC-00PMtr; Fri, 13 Mar 2020 12:01:00 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id E0870650143;
 Fri, 13 Mar 2020 11:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPjvyzd8EQDE; Fri, 13 Mar 2020 12:00:59 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 6E0BA64DAFB;
 Fri, 13 Mar 2020 12:00:59 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 13 Mar 2020 12:00:59 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 07B1C804FB; Fri, 13 Mar 2020 12:00:59 +0100 (CET)
Date: Fri, 13 Mar 2020 12:00:59 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH 2/8] media: adv748x: add audio mute control and output
 selection ioctls
Message-ID: <20200313110058.GG3832@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141521.GC3606@pflmari>
 <ff34078d-895d-08c8-c64f-768e75388038@xs4all.nl>
 <20200313102600.GF3832@pflmari>
 <c260defe-bb3c-0dc2-476f-5cf8ff27b915@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c260defe-bb3c-0dc2-476f-5cf8ff27b915@xs4all.nl>
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A627061
X-Provags-ID: V03:K1:3Ofwenwb96VNbyiZ3gemfAxrGl8LtKlVY4L0aNeMY8UcUx1r3Tk
 MfqQ6hAD+1hC0xASi3PqDPjZ1I2jmMSY+Q5zgR2lQCSNJHgTsZfiyNigohk9kVGGZS435cE
 /QL7l/U8D5XetA2r2f1+fLE1ph+bK+l59+QpZ11MRACuqmlB5GS4KqFLAQybM1Lxrd6+X9S
 Us9VfkV9GnBxPy73tkdjA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:7wohRYBtbPU=:AZLb+M/6MgmERsFtBFql09
 beUFS4dmlE+okxsS18E67R/O8cB1Qbq53qfICquZFiqKdluUKPMhIDGcQQ5DElEkBBuOu1hpw
 I70OE3W4+2RzWIVoIjHnN2jYShVp4KkOD0y1LinL70/aDde26lrdN6F0KMqLAMgG+JWJmu1yG
 oyX9CKWVqkMTBMG823/boJWtTdGQf2SRq3v5cisMiyAvgrIfFKoldeJAqJfj7ZE1S7x2NyTXt
 OP4c6mZH293OkrhPhRGh+swNNfk5CJuZWcJJDg5K5gQ+ZizknnwUsaWpQhFokiAR2v2AYHi0T
 79KgQ/VZdV9xiYQRYK06tAM/Lyz1GeYn3+d93uKJB+6XUPEgzQp8WqkNq1gqkenDJqFKQBFFg
 tQ9PdGsJLSz7E1QqaA+Uvwf4IBd7MG5G+T86VO+IKZLFZiMoAKAo/jKGzfFC/nbN1aehWh8jG
 WMby7BShV0PeJtpZuDBJT7OFU49pgRC8xaYADfBVbmRMMWkvEQQ/i/h5cWlvkpUihi9fbdgiW
 LSIZjOD2pTCYZs1su8N9Ax/ZRfx3culU+vD5gwAqN7eNVyfNP7LxAp33I/iRadGspDTs5AhpM
 pVGNNrNGDQzXYXlLrjcV2oHIvFcvJHnVAvPYCwtVNwdZZ9Hvk244H0F99HWvw0ZaaJpX9izpj
 VWGH1EXJSeaGV9+EiJWHeBalTR/4jY08WvRZ3Er8J7yb37COOJkzegdtIqHFoVPqeyN729BBK
 y/sh+BhMTcbaTflUiQ+jJcHWKh8l3b29yU1RLqR8ku1KOFck4oVf6XdLvW/J6HR208uSMT3P+
 NT3jhCiQYXFi4qJ9oE+oDxR7K/m6LY4Wgq3nWSrz3aB1MPTb1rmsB2ZL5rwDDGCpbg+dTvV
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
 devicetree@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hans Verkuil, Fri, Mar 13, 2020 11:52:03 +0100:
> On 3/13/20 11:26 AM, Alex Riesen wrote:
> > Hans Verkuil, Fri, Mar 13, 2020 09:16:11 +0100:
> >> Generally an hdmi driver will configure the i2s audio automatically, which is
> >> typically connected to the SoC and controlled by the ALSA driver of the SoC,
> >> but there may well be missing features (audio never got a lot of attention in
> >> hdmi receivers). So what I would like to know is: what features are missing?
> > 
> > Well, the audio is missing. The current adv748x driver does not export the
> > audio features of the device at all. There is no code to enable the I2S audio
> > output and it is disabled (all clock and the data lines) by default.
> 
> Sorry, I was vague in my question. Obviously that needs to be added, but besides
> adding the low-level i2s support I was wondering if there are additional things
> that need to be exposed to userspace in order for audio to fully work.

None that I can't expose over the DAI interfaces: clocks, I2S format,
mute/demute ... All covered.

> >> Anything missing can likely be resolved by adding HDMI audio specific V4L2 controls,
> >> which would be the right approach for this.
> >>
> >> So I would expect to see a proposal for V4L2_CID_DV_RX_AUDIO_ controls to be
> >> added here:
> >>
> >> https://linuxtv.org/downloads/v4l-dvb-apis-new/uapi/v4l/ext-ctrls-dv.html
> > 
> > This seems to be an explicitly "digital video" control class. And it has no
> > control option for mute. Or did you mean a similarly structured new class for
> > "digital audio"?
> 
> There are no DV_ audio controls at all today. So any new audio controls would be
> added to the DV class. But if there is nothing that needs to be exposed, then
> nothing needs to be added :-)

Ah, alright. I shall keep an eye on it, maybe I shall find something to expose :)

Regards,
Alex
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
