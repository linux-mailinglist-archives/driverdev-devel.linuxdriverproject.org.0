Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A55DE16AC3F
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Feb 2020 17:54:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E7DD864D8;
	Mon, 24 Feb 2020 16:54:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DXtTXYFjQFzG; Mon, 24 Feb 2020 16:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E737861D2;
	Mon, 24 Feb 2020 16:54:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 567041BF2FD
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 53680845AA
 for <devel@linuxdriverproject.org>; Mon, 24 Feb 2020 16:53:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YVoWlrkIcyv8 for <devel@linuxdriverproject.org>;
 Mon, 24 Feb 2020 16:53:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E42FB84581
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 16:53:51 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id t24so1058303pgj.7
 for <devel@driverdev.osuosl.org>; Mon, 24 Feb 2020 08:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
 h=from:date:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OdqiOQAOv7VgOZu/EsgkC0pt5i360/zcmmngPxMs3Jg=;
 b=LZUPXNMGsJpZL0Qbw/me2VA45AU1OO3KoHU/3b2IW07ItijSWVCB4TlUel8Abtn0Ul
 YQYNv2TRwTIP1eMTCk6eQ4QXMs7kR4LsZwpUrW0XcvZiW53m1xvt98LosglIn+u2vlo4
 8sbkz5ScLPLsqjhB1DvOZMtaY/jGeGW0ncJO0FiAlx4zjcvIJ9k1Apgj7iOR7dkToflE
 m443v/+a1XJZ7DH3RX3wD/GE61vcSBSRqU4W6RYIMxpT5HIw/Rrr863pSy14LWAWiYTc
 du8SwQekouTMNvivhKbLSydoxZmo7iJqHkOf+Vg4Zyq1gjzu+a3cVln9E/OwOW09/zbu
 r0yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OdqiOQAOv7VgOZu/EsgkC0pt5i360/zcmmngPxMs3Jg=;
 b=eW001SapHyd8G1rMRN3YolqQann9QqFvOEExyK5TqwvX0lThGrtlR7RppZXhMI9jM2
 tFl3cX2kqZwsUMtFFBFAE2FQQG1oOqrLyVRWwZAJnjbR+awztzTqBFQoFHapWrhxNifD
 pnS5S/bIIRkEB0nCvdpCLEG2gvfUtkw1dP1QRknFuQrETcuxt/50OXZbXHcKmhyYz2+1
 kRsYKU/kVrQXYO3C9lih0zeyLn+lxCHLDh60kEsLIlxzz8d1a4dyQQGjirUgdWbGuIA3
 +wutVJXHDn2oayZrOwn5BK/Y0QQEWf67d1/cPJW6jIBpvRLMgUk423oeAv0bvUK8qgee
 1kHg==
X-Gm-Message-State: APjAAAWJVxFXh/Qh91roPRBssE1g5oEIZ76NQOqOJYDR11eJ4H9wSr+k
 48k1IVFTlXyJhDsSi2TspqwPyg==
X-Google-Smtp-Source: APXvYqwte7KiY9kZcStaLGSCoQ5/ZSfRN+riGxvxmR5ZQ3DOW0cOn3YPqDfoZI5CgkmaWnC9sIt7JA==
X-Received: by 2002:a63:3004:: with SMTP id w4mr54015697pgw.164.1582563231181; 
 Mon, 24 Feb 2020 08:53:51 -0800 (PST)
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.170])
 by smtp.gmail.com with ESMTPSA id m12sm13189030pjf.25.2020.02.24.08.53.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 08:53:50 -0800 (PST)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Mon, 24 Feb 2020 22:23:44 +0530
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vaibhav Agarwal <vaibhav.sr@gmail.com>,
 Mark Greer <mgreer@animalcreek.com>,
 Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: Re: [greybus-dev] [PATCH] staging: greybus: match parenthesis
 alignment
Message-ID: <20200224165344.GB7214@kaaira-HP-Pavilion-Notebook>
References: <20200219195651.GA485@kaaira-HP-Pavilion-Notebook>
 <20200224114929.GB4827@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224114929.GB4827@pendragon.ideasonboard.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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

On Mon, Feb 24, 2020 at 01:49:29PM +0200, Laurent Pinchart wrote:
> Hi Kaaira,
> 
> Thank you for the patch.
> 
> On Thu, Feb 20, 2020 at 01:26:51AM +0530, Kaaira Gupta wrote:
> > Fix checkpatch.pl warning of alignment should match open parenthesis in
> > audio_codec.c
> > 
> > Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> > ---
> >  drivers/staging/greybus/audio_codec.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> > index 08746c85dea6..d62f91f4e9a2 100644
> > --- a/drivers/staging/greybus/audio_codec.c
> > +++ b/drivers/staging/greybus/audio_codec.c
> > @@ -70,7 +70,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
> >  		i2s_port = 0;	/* fixed for now */
> >  		cportid = data->connection->hd_cport_id;
> >  		ret = gb_audio_apbridgea_register_cport(data->connection,
> > -						i2s_port, cportid,
> > +							i2s_port, cportid,
> >  						AUDIO_APBRIDGEA_DIRECTION_TX);
> 
> I'm curious to know why you think the line you changed deserves a
> modification, while the next one doesn't :-)

According to me, both the lines deserve a modification. But I did not do
that as changing the other line was throwing 'greater than 80
characters' warning and I wasn't sure if I should go ahead with the
changes anyhow.

> 
> >  		if (ret) {
> >  			dev_err_ratelimited(module->dev,
> > @@ -160,7 +160,7 @@ static int gbaudio_module_disable_tx(struct gbaudio_module_info *module, int id)
> >  		i2s_port = 0;	/* fixed for now */
> >  		cportid = data->connection->hd_cport_id;
> >  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> > -						i2s_port, cportid,
> > +							  i2s_port, cportid,
> >  						AUDIO_APBRIDGEA_DIRECTION_TX);
> >  		if (ret) {
> >  			dev_err_ratelimited(module->dev,
> > @@ -205,7 +205,7 @@ static int gbaudio_module_enable_rx(struct gbaudio_codec_info *codec,
> >  		i2s_port = 0;	/* fixed for now */
> >  		cportid = data->connection->hd_cport_id;
> >  		ret = gb_audio_apbridgea_register_cport(data->connection,
> > -						i2s_port, cportid,
> > +							i2s_port, cportid,
> >  						AUDIO_APBRIDGEA_DIRECTION_RX);
> >  		if (ret) {
> >  			dev_err_ratelimited(module->dev,
> > @@ -295,7 +295,7 @@ static int gbaudio_module_disable_rx(struct gbaudio_module_info *module, int id)
> >  		i2s_port = 0;	/* fixed for now */
> >  		cportid = data->connection->hd_cport_id;
> >  		ret = gb_audio_apbridgea_unregister_cport(data->connection,
> > -						i2s_port, cportid,
> > +							  i2s_port, cportid,
> >  						AUDIO_APBRIDGEA_DIRECTION_RX);
> >  		if (ret) {
> >  			dev_err_ratelimited(module->dev,
> 
> -- 
> Regards,
> 
> Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
