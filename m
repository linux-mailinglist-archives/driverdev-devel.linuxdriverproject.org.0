Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 087C320047B
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jun 2020 10:57:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B534C88E56;
	Fri, 19 Jun 2020 08:57:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XETtCCQgko8o; Fri, 19 Jun 2020 08:57:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 319AF88E10;
	Fri, 19 Jun 2020 08:57:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C1B1D1BF37B
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BD4158992F
 for <devel@linuxdriverproject.org>; Fri, 19 Jun 2020 08:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4Z7W2ICfxtR for <devel@linuxdriverproject.org>;
 Fri, 19 Jun 2020 08:57:19 +0000 (UTC)
X-Greylist: delayed 00:05:16 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C4F789921
 for <devel@driverdev.osuosl.org>; Fri, 19 Jun 2020 08:57:18 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhFpq-1jI4vB3PPu-00ePJ9; Fri, 19 Jun 2020 10:51:39 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id CEECC651899;
 Fri, 19 Jun 2020 08:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Afr88sTZPnb7; Fri, 19 Jun 2020 10:51:38 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (unknown [10.10.5.94])
 by mail.cetitecgmbh.com (Postfix) with ESMTPSA id 9403864C8CE;
 Fri, 19 Jun 2020 10:51:38 +0200 (CEST)
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 6F168804FB; Fri, 19 Jun 2020 10:51:38 +0200 (CEST)
Date: Fri, 19 Jun 2020 10:51:38 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Subject: Re: [PATCH v5 6/9] media: adv748x: prepare/enable mclk when the
 audio is used
Message-ID: <20200619085138.GA7780@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
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
 <d9b7a7290e3d95b484a7a760484f827c3ed7651e.1585852001.git.alexander.riesen@cetitec.com>
 <646b0f32-2f83-281a-ccc0-eb88f82eb7a3@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <646b0f32-2f83-281a-ccc0-eb88f82eb7a3@ideasonboard.com>
X-Provags-ID: V03:K1:Z40wuChLtVuyGhpa0eSWHYpnckmvA0AneQ/xLB1dN7j3mlvkxGf
 4UIeAZFH8vvMZW1KygniVP7aD1bBW0jwp5C70Q7OLQXiOfmQ6UpXmX2gaB66TEyJ187Rl/D
 JuoSANAV6qZcQFbUIDyyxFis/m4+hL7qZLuu2g19EShFHRh6tXMDh1vM20l9ZWrBONQtOdJ
 qc8AttDstYFLDDvDXvaLg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:m22cHCpS6Zs=:JvNUg/Q5WOOx0IyZrcxnRz
 KvGUgWd4hZ7gxTHtK8M/5wQT/4gNBsIqNJiWNvvZGMVv+hLOSv38YY+6qHVPsY91JO0ewpV9C
 RtgxhwfBB3JzIiIbTzpvS75X29hbcF9V8jObQpqR+gGnt4leyOm2qgAxaYU8XzWSaqK/QQNtP
 vkywhsTxru7/mP+5f5sWzo90yMMb6HN/zakgs9yTy35FS8kygDWXCMTwQ+doJqleX+9flM5X8
 TU9nQzoteg+30SDfrmqm44px90fFeD4oAZLv5ffRG6Fu8D+VblltwELaCHyDG96HyOWyBlyzX
 TwuNFDntjVKFxuBXK6cZcNxHQvNNecgmL09GjyUQIgJyPhvZvuePL9bGG1UQUAU/wMW0HhmmD
 7YSdSA7B1SihCqb5SGCXfVvZZYJ7w0Mbf2GnrhlknhCGervQZkcwA6VMyeXLtEfZr9zHiyI1R
 xRFXafhqa3Vx+LHwPXBfbiur2uPp3DbFSXNDqVEDn7rVfBDWpUQU+tKYWOGrk1hyXBU4FeWyO
 ytOkQR2aHxwsI7/TFjeBIyT0UXiwMeq159e0i7r0XiZYqNdB3vUqoHit7S/izlca0iUPgs4kM
 +FioJk2QOmI4STnlDj+XELKaqTQsrpPuKpHVWjcPoSIPQhV8GHoGIRP9e971nl91GGB8DWq8p
 upC/go/40lIwUsI0a4Eggex4YzBZ+IkcNfum+nUBDMlC/MnSoZM/U79XnbycRCDHZVddnGeaS
 KGqzmcXQ5FP9LlTwOyI12Rpjvjwxqt46SqqlSn7GonzN0MXU6VcRAN9swxJeQZaNKHHsx4m42
 k8Yt4uDijQSnteK6q9Bfxi7tvy0iqgzeX+jTKStz5HgGH8DOsQKZTV35YKA34ygkZx5kk3K
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

Kieran Bingham, Thu, Jun 18, 2020 18:23:14 +0200:
> On 02/04/2020 19:34, Alex Riesen wrote:
> > --- a/drivers/media/i2c/adv748x/adv748x-dai.c
> > +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> > @@ -117,11 +117,22 @@ static int adv748x_dai_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
> >  
> >  static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
> >  {
> > +	int ret;
> >  	struct adv748x_state *state = state_of(dai);
> >  
> >  	if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
> >  		return -EINVAL;
> this looks quite bunched up so :
> 
> Newline...

Will do.

> > -	return set_audio_pads_state(state, 1);
> > +	ret = set_audio_pads_state(state, 1);
> > +	if (ret)
> > +		goto fail;
> 
> With no action required to cleanup here, I would just
> 		return ret;
> and remove the fail: label.

Of course.

> > +	ret = clk_prepare_enable(mclk_of(state));
> > +	if (ret)
> > +		goto fail_pwdn;
> 
> newline...
> 
> > +	return 0;
> 
> newline...
> 
> Other than that:
> 
> Reviewed-by: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>

Thanks!

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
