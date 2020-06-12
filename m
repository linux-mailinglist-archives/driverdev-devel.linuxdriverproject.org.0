Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BB41F7B05
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jun 2020 17:38:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BD2F88B28;
	Fri, 12 Jun 2020 15:38:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oyQXkqbfmeMI; Fri, 12 Jun 2020 15:38:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5387588B0F;
	Fri, 12 Jun 2020 15:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC4E51BF28A
 for <devel@linuxdriverproject.org>; Fri, 12 Jun 2020 15:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9D77F20445
 for <devel@linuxdriverproject.org>; Fri, 12 Jun 2020 15:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LPpBNKwB9SXX for <devel@linuxdriverproject.org>;
 Fri, 12 Jun 2020 15:37:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id DC538203F0
 for <devel@driverdev.osuosl.org>; Fri, 12 Jun 2020 15:37:32 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id b5so4465442pfp.9
 for <devel@driverdev.osuosl.org>; Fri, 12 Jun 2020 08:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=yeQePqg3uWAwrie1fUmEupGOkhDXHe9EBr4w1yLk0WI=;
 b=OhXfN3AB8RZ9P+/tL0HI8nayoWUxdl956odNAbxbgFNQnDcB0NrFtAFhFM4Dj8pWCM
 t3QKzk7C1GXr731BMbQdOe5yt0G5m8VSAp6wYHBRXLeF6sogLntHKxC4mlVkuQuOCQgB
 fUfHsLR5S7YsIyHs7tWJUQJ7LsGYJXLqT5Ls3P5dqNr6vPBS8tR3GSeq5zzWOHCIOgR8
 bYH5khodwPW6SrRuQ5kYp8N/VkE6StVpyG6Tp2RLdyHTfK5rffkraKb46aQdFQePecyY
 OhLTzwyZpzd5WQU+a3oMkRxZcl4ZLwkWvGyeYflfcs7Crq2X8DBG5UdesonwEFd+35UK
 AlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=yeQePqg3uWAwrie1fUmEupGOkhDXHe9EBr4w1yLk0WI=;
 b=FE2eYHyV1EQzaRmAcmyca6sU1DE5RjdUzgexbZUbVcBczK3t7V1HCmooVNmo0x7GL+
 N1j5v7tj33+xJQ+3NHjz0JViLzlurVkb8BcNgJwlQGkWyXwra40CoVEMkBnJoqN+kZ1z
 bnukNyjzoAveVMx5TTicysC9D4rbGELc5fygOEYzmxc/9KubOAKFgJLuQTv0XhOXq72e
 zNN9xHV1YUHvZ2TsSZCuC7w/Rqo/nT/su4kbJ2QWbK4vXgB653g02jqC1HSPQ+XNxLXS
 tJH0q4Bd1FXOv5qhHH/NzBjT9o9JJkJAT9MUIyOYBeOdh2L1Go0pFDxGFhNKa/rWHc6x
 J2Kg==
X-Gm-Message-State: AOAM5317vPTLeQVbMWoR5ibHk6V6/ybF9HyXAG3DcrJG+1is1WhaKzoe
 MPo1lMpyCKcMvlI/lOQV5Bw=
X-Google-Smtp-Source: ABdhPJx3K+XSpLrzivT/rI9+MH+R35M6XFdycVvYMHz1m+33OwfD46jZYe6e76uYodfTAJXUy5H9gQ==
X-Received: by 2002:a63:9347:: with SMTP id w7mr11155653pgm.409.1591976252287; 
 Fri, 12 Jun 2020 08:37:32 -0700 (PDT)
Received: from gmail.com (jfdmzpr06-ext.jf.intel.com. [134.134.137.75])
 by smtp.gmail.com with ESMTPSA id 140sm6457374pfy.95.2020.06.12.08.37.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 12 Jun 2020 08:37:31 -0700 (PDT)
Date: Fri, 12 Jun 2020 21:07:24 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 0/6] Enable Greybus Audio codec driver
Message-ID: <20200612153722.GB26807@gmail.com>
References: <cover.1591802243.git.vaibhav.sr@gmail.com>
 <20200610173711.GK5005@sirena.org.uk>
 <20200610182322.GC21465@gmail.com>
 <20200611082616.GA4671@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200611082616.GA4671@sirena.org.uk>
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

On Thu, Jun 11, 2020 at 09:26:16AM +0100, Mark Brown wrote:
> On Wed, Jun 10, 2020 at 11:53:24PM +0530, Vaibhav Agarwal wrote:
> 
> > With patch#6 in this series, I'm proposing some of the (dummy) helper 
> > APIs required to link DAPM DAI widgets for the GB Audio modules 
> > added/removed dynamically.
> 
> > Eventually, I would like to propose relevant changes in snd-soc APIs to 
> > enable dynamic linking of DAI widgets for the modules added and 
> > remove/free component controls for the module removed.
> 
> > I'm seeking your opinion on the proposed changes. And as per the 
> > recommendation I'm sharing the changes with ASoC mailing list as well.
> 
> These are proposed incremental changes to an out of tree driver that has
> never been submitted.  I don't know what the current code looks like,
> what it's supposed to be doing or anything like that so I've no idea
> what's going on or why.
> 
> > Kindly suggest me the preferred way to follow on this thread. 
> 
> This is effectively out of tree code, until someone submits it properly
> I'm not sure it's useful to submit incremental patches upstream.

Thanks for the suggestion Mark. I'll create a separate patchset aligned 
to the ASoC tree in next ~2 weeks and share them separately.

Hi Greg,

Do you think the current patchset can be considered for the purpose of 
resolving componentization issue raised by Alexandre?

--
Regards,
Vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
