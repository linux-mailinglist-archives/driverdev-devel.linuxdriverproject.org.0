Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E58F71F5B4E
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 20:36:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9841B88365;
	Wed, 10 Jun 2020 18:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DSpKgBo7T43o; Wed, 10 Jun 2020 18:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 63BDD88222;
	Wed, 10 Jun 2020 18:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7A93E1BF313
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:36:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 650082275A
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:36:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yNhhnFF3oGzV for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 18:36:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1728021513
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 18:36:41 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id r18so1341493pgk.11
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 11:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yw3q9eI6lwTKHkfbX8g8ks9O/Eo9T2Je00bLzcJ2GYc=;
 b=NOE0YlfB0mY/JBt1JlVH902N0/uUPHd7L9Kahu8HrCsJ9M2i7PnznTAA3N78Oif8tk
 axxD9WhHeKXlpUIEILYwj69M74f0/48wJl4fqEB/f+bsGLV7D4Og5MohtjSlmnzURMxN
 ONq4eO27y2e5oJqz+WjB8h5yBSe5Mcp4tyA5TUgT525dxI3IqvgFer5AwVZX2U/hlLur
 Axs6ej3TVkd2M8JHVIG57jgn+4gaElz0Eq/R4qSMuib8Z9Kv8mhHDAuQgIJ5vTj1+Ax8
 pWgWLin/eyXmmCMdh6rQsrjP9QCVviX42skFA18m000+M0UU3YSKJlm/syX0sQBHHH7/
 oRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yw3q9eI6lwTKHkfbX8g8ks9O/Eo9T2Je00bLzcJ2GYc=;
 b=UdVTw/yeSnqG+04sLqmkTDLm8nzQKxR/DBH4r0orhXBgDMu/X13uqgCDJCUe3h0H6X
 Gy4XDvqlDqRvZJYZeaG1ljcg5k4zv5+TC4HKGHEPwbcacU7REWIHZwl8Zg/tEwj6R73m
 YRFt+as446XhgGZzHwdM//gR4iU8N+lSNLMTtkE9Lfi3CjhGAnnSUJUfsC25vcFbAa55
 ojLLK0cCgQ45sWmp1Bqgo1nihKJFyjlk6ryO3LWg+30MAKxJvxGAF7n7ADO2EF3ipPrC
 QwBasTdaVjy6eMg6PxFYXIDjmgP+QRK1fOYVUoLVr6ezOLAnQFhba6zsWsj28XcVkaw8
 HoGg==
X-Gm-Message-State: AOAM5332PrBsBUeE+9meTAWT3Y8KT0rvdIButehy8Of5w5W9Kmg4Izys
 h3twGQJGgqU3Qu7uLxBsn2Ik0vmWLTjfwQus
X-Google-Smtp-Source: ABdhPJx9yBS3TpsCYB0M2k/HUJCqFbrfJDrQFqu6V3G1g3niXzTVJlGN/tj/FlKmZYYb2YwY0BjsVg==
X-Received: by 2002:a63:c04b:: with SMTP id z11mr3760360pgi.215.1591814200411; 
 Wed, 10 Jun 2020 11:36:40 -0700 (PDT)
Received: from gmail.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id p31sm483529pgb.46.2020.06.10.11.36.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 11:36:39 -0700 (PDT)
Date: Thu, 11 Jun 2020 00:06:32 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 4/6] staging: greybus: audio: Resolve compilation
 error in topology parser
Message-ID: <20200610183630.GA26807@gmail.com>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <7cbb81585474e895faa842e2af05ec3fb2079386.1591802243.git.vaibhav.sr@gmail.com>
 <20200610174535.GB4151@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610174535.GB4151@kadam>
User-Agent: Mutt/1.10.1+3 (f9293d646485) (2018-09-22)
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
Cc: devel@driverdev.osuosl.org, alsa-devel@alsa-project.org,
 Alex Elder <elder@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Greer <mgreer@animalcreek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, greybus-dev@lists.linaro.org,
 Mark Brown <broonie@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 10, 2020 at 08:45:35PM +0300, Dan Carpenter wrote:
> On Wed, Jun 10, 2020 at 10:58:28PM +0530, Vaibhav Agarwal wrote:
> > @@ -437,11 +433,12 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
> >  	struct gbaudio_module_info *module;
> >  	struct snd_soc_dapm_widget_list *wlist = snd_kcontrol_chip(kcontrol);
> >  	struct snd_soc_dapm_widget *widget = wlist->widgets[0];
> > -	struct snd_soc_codec *codec = widget->codec;
> > -	struct gbaudio_codec_info *gb = snd_soc_codec_get_drvdata(codec);
> > +	struct device *codec_dev = widget->dapm->dev;
> > +	struct gbaudio_codec_info *gb = dev_get_drvdata(codec_dev);
> > +	struct snd_soc_dapm_update *update = NULL;
>                                     ^^^^^^^^^^^^^
> 
> >  	struct gb_bundle *bundle;
> >  
> > -	dev_dbg(codec->dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
> > +	dev_dbg(codec_dev, "Entered %s:%s\n", __func__, kcontrol->id.name);
> >  	module = find_gb_module(gb, kcontrol->id.name);
> >  	if (!module)
> >  		return -EINVAL;
> > @@ -458,17 +455,13 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
> >  	max = le32_to_cpu(info->value.integer.max);
> >  	mask = (1 << fls(max)) - 1;
> >  	val = ucontrol->value.integer.value[0] & mask;
> > -	connect = !!val;
> >  
> >  	/* update ucontrol */
> >  	if (gbvalue.value.integer_value[0] != val) {
> >  		for (wi = 0; wi < wlist->num_widgets; wi++) {
> >  			widget = wlist->widgets[wi];
> > -
> > -			widget->value = val;
> > -			widget->dapm->update = NULL;
> > -			snd_soc_dapm_mixer_update_power(widget, kcontrol,
> > -							connect);
> > +			snd_soc_dapm_mixer_update_power(widget->dapm, kcontrol,
> > +							val, update);
>                                                              ^^^^^^
> Always NULL.  Just delete the update variable.

Aah, my bad! Thanks Dan for sharing your comments. I'll fix this while 
sharing next patchset.

--
Regards,
Vaibhav

> 
> regards,
> dan carpenter
> 
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
