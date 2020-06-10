Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D515A1F5B16
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jun 2020 20:23:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C813C89343;
	Wed, 10 Jun 2020 18:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oq09YPK+ejpO; Wed, 10 Jun 2020 18:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC134892B4;
	Wed, 10 Jun 2020 18:23:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19DB21BF313
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 14E17882CE
 for <devel@linuxdriverproject.org>; Wed, 10 Jun 2020 18:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WDEkmLasr4g8 for <devel@linuxdriverproject.org>;
 Wed, 10 Jun 2020 18:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8D91E88237
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 18:23:32 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y18so1272240plr.4
 for <devel@driverdev.osuosl.org>; Wed, 10 Jun 2020 11:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Eyo+7zh1L4jeDWREBakg6eAo0YMYPGwdx3QTIkC3cqE=;
 b=a5YWD529dgAdWo2ddTqn+wtR9NFsHDhDH9quAab1/Ts3LSpxdlSdxy6dn8UU0GmYJg
 mF2n+LTmi5kCWCRmW9o+w4lNEWGgoOk4zlw2My0hTdaZrNFXacyNCFGb3+7n4Ab2nC6N
 DusWKIIlMvWFsrA0CRBntWUVRbH7QMccO/RQD7cQ85pCqC8xtPC3uW01YHIYWtChIbIr
 MKkdZHznXgRBPNojpB8Jdq2lamuckQvYy0OBF/tMLdUqaQV+bhucitSwmnuYioDBWav7
 ZxeY74vjeQr250yLyShoxh4o49WZ/SkYC6Yp2etGuaMrgCe4BUV5Q+tC6+w5HUtpy8Qw
 QbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Eyo+7zh1L4jeDWREBakg6eAo0YMYPGwdx3QTIkC3cqE=;
 b=Ry2OB396Bhish7UimFoXdRoLuz6uruhBYNyxkqSY0Q9J2C7k/69VybOurhetwztOwI
 x6Pz8ZZlK1YBcHT2H19OA5tT2auvkhRWBCd5Mg1oP9nKR8TAdkhiOqp+mZLX0zBrRC24
 AQOp8+GxEpe33UFvjnoT1WjEYd4GCRCdgxjO7fdDNiDzM/7h15NfPzkE7CR9VYKoJd4z
 M6fiioqtmSgw/q3IjnKBmwnfNlu01zxF7J0WAfavK+GvDgJq54hs8lXMYlVYBBgZGzw2
 d3JLSzStRhP+XbUSvtFKKjBmS1W1flAS4elr+vSEL4VA5BlSzRSzsSxUdaVnoVLiyHPp
 /ODQ==
X-Gm-Message-State: AOAM5334qoYd/2iZ8iPQWQhn8wDju1TrQhOaJzR50rRsor0w43IlsjDO
 fo8FiTUZktZfumOMhkw3rG0=
X-Google-Smtp-Source: ABdhPJwlTj9PIl3lYfVxAKZJrGw9skNy0yB4QNbnAqbu5kbKDhGJt6xeQOyHbSMwPeJUry2pOcPQXQ==
X-Received: by 2002:a17:90b:e8f:: with SMTP id
 fv15mr4538238pjb.47.1591813411940; 
 Wed, 10 Jun 2020 11:23:31 -0700 (PDT)
Received: from gmail.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id 140sm577886pfv.38.2020.06.10.11.23.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 11:23:31 -0700 (PDT)
Date: Wed, 10 Jun 2020 23:53:24 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200610182322.GC21465@gmail.com>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <20200610173711.GK5005@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610173711.GK5005@sirena.org.uk>
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
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 10, 2020 at 06:37:11PM +0100, Mark Brown wrote:
> On Wed, Jun 10, 2020 at 10:58:24PM +0530, Vaibhav Agarwal wrote:
> > The existing GB Audio codec driver is dependent on MSM8994 Audio driver.
> > During the development stage, this dependency was configured due to
> > various changes involved in MSM Audio driver to enable addtional codec
> > card and some of the changes proposed in mainline ASoC framework.
> 
> I'm not sure why you're copying me on a staging driver?  I don't recall
> the base driver having been submitted properly yet.

Hi Mark,

With patch#6 in this series, I'm proposing some of the (dummy) helper 
APIs required to link DAPM DAI widgets for the GB Audio modules 
added/removed dynamically.

Eventually, I would like to propose relevant changes in snd-soc APIs to 
enable dynamic linking of DAI widgets for the modules added and 
remove/free component controls for the module removed.

I'm seeking your opinion on the proposed changes. And as per the 
recommendation I'm sharing the changes with ASoC mailing list as well.

Kindly suggest me the preferred way to follow on this thread. 

--
Regards,
Vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
