Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A408B18CC0F
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 11:59:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8DC086E41;
	Fri, 20 Mar 2020 10:59:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFBdgVDohCDc; Fri, 20 Mar 2020 10:59:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7351586644;
	Fri, 20 Mar 2020 10:59:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDED11BF20B
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 10:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E082B878B7
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 10:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcbMeKAxZpoq for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 10:59:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F56187D44
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 10:59:04 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MPXta-1itszl3gFW-00Meet; Fri, 20 Mar 2020 11:58:47 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id E62146501DB;
 Fri, 20 Mar 2020 10:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iWOs4ZaNJtNh; Fri, 20 Mar 2020 11:58:46 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 9777564F45C;
 Fri, 20 Mar 2020 11:58:46 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 11:58:46 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 09B4B8050D; Fri, 20 Mar 2020 11:58:46 +0100 (CET)
Date: Fri, 20 Mar 2020 11:58:46 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH v2 05/10] media: adv748x: add support for HDMI audio
Message-ID: <20200320105846.GG4344@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <252bb433f47b0ccb61bb077abdbd892091abc550.1584639664.git.alexander.riesen@cetitec.com>
 <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D776A
X-Provags-ID: V03:K1:gtuij3dAJiYujWnkoDtooYsdCMWO9pBYd9dPTTa/FSGo8gecAfC
 URld0b8m+Rp/auU0krCrDaaXNorutl+DDrafS3dPrrUAUOLw7JXbbvI1mVibbmCOQXKYIvk
 ezIQmWEASa/+6YHZ8Nfa+MiLM9ojp8w1V24gfWxek7ZCKQc2SYBW8lqtwAlfUqUNBAHSTiF
 EN9Z693r2b9T7rDM9t6vg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:yiw+bxjplYU=:Ewjxxm0gcp4ntRvEsGYeZV
 7zsQK2sxjP4AvCducAmfHAokJ7y7uzrkl94oaECFh2BrRJAu3ejMBZF/xGwQ6mEU6ch2eF3ai
 +e5+DXZKEnwPks+ue3r3fdoivP8aHalIYyPyU985b9l6MxYUwD+HCH6pmXJCjxUs+lUM/eNnR
 FL2gELpL5xDn+LSoxgshN4HtlUsVsbdA0O/j/I6+SLmzLUmUVT6mRYa4pAuk7xcGnGyPecIfA
 GLa4+oKFgR8O7bUD82KNyDd6tpBW8XR1x7SveaCTuseqNhPh3AOcrjbg/wF/SOsTcRWzZW+OS
 U0o1JKMpS3kl/tiOK1422h1IhlIJrm9HrXpaGgNYbdZlduKP+ca3K0TG7CfSzY9ktakOwvz+j
 56qmx28b5g2RRObGPwhBroXwwoPgc3gTPkKe3ry9Df8Q8OgdFhUFoXtUOpXvMh/r1zDFcHHjt
 q3kYsrP0V1jK8wgyDLeXUwcpXIMhtKQqPLHDax5JQKry9aROE1ZHnYYE/Ry/l7TeXPsDAiJk9
 P1Z2Mj03clbdY7v+q8Sr6OrUv8A+DctE3EWGIl+O3NBTTPgW4qMXJdP0mPEySD8/6Ril78eRB
 M9F7a9Jsvx+KRD0PYuHlsFHbOCO/L03+TIq9h/QqGSy3iJJk2Rq9A3mrF424z5RPQMexoaDkH
 ZLjACeKiLhLL9c+q3He+e7JtW9U0VpcRFOhf83VZLB7a2sLRDBVGkAw4/GgxsEk9LtLLrlbeN
 p7bVmEDYKxkPIf0ma4MYQTesQoacvZBurF3+V7+He138APayDX/wotHV3s/4bHVjLeyxL2fCY
 2k6hd/GA7rcIiLAvEWHiGy6CD+6IB45WQRwnTx/P8sAoSTnzaiPEtJ9qEsR4B2aKBJLTW2X
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 driverdevel <devel@driverdev.osuosl.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED
 DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, Linux Kernel Mailing
 List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Geert,

Geert Uytterhoeven, Fri, Mar 20, 2020 09:43:29 +0100:
> CC linux-clk for the clock provider.
> 
> On Thu, Mar 19, 2020 at 6:42 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > This adds an implemention of SoC DAI driver which provides access to the
> > I2S port of the device.

I just noticed I don't do clk_prepare_enable anywhere.
Shouldn't the clock master enable its clocks somewhere?

> > diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> > new file mode 100644
> > index 000000000000..4775a0c7ed7f
> > --- /dev/null
> > +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
...
> > +static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
> > +{
> > +       struct adv748x_state *state = state_of(dai);
> > +
> > +       if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
> > +               return -EINVAL;
> > +       return set_audio_pads_state(state, 1);
> > +}

For example, here, after activation of the lines succeeded?

> > +static void adv748x_dai_shutdown(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
> > +{
> > +       struct adv748x_state *state = state_of(dai);
> > +
> > +       set_audio_pads_state(state, 0);
> > +}

And clk_disable_unprepare here, before shutting down the pads?

Regards,
Alex

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
