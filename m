Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8E11ED527
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 19:42:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DAB2E22D22;
	Wed,  3 Jun 2020 17:42:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VThLLhqqC273; Wed,  3 Jun 2020 17:42:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B1CFD203C2;
	Wed,  3 Jun 2020 17:42:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 962F91BF859
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 17:42:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 921AD86948
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 17:42:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2sa10uO6_m-N for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 17:42:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 199598693B
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 17:42:35 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id p21so2199075pgm.13
 for <devel@driverdev.osuosl.org>; Wed, 03 Jun 2020 10:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=11EqLqigawu5AuEW1gFIrsexclHL8DCzdN7DBjvUYqA=;
 b=FjvdkIGnkijqmFETxqkZf5cAQNGKa8CDBDXF341jBrf8KsuUMNBzJ29u/nR6jxPLo4
 NiRWSZCxY3INhSncwcwGBs6uJcXk3VO2LUAjvY+bypo+TwXm5kjCMoUmsMcNefMAopvf
 y2hkLrMDXaiYxZE4t+TNnzG75E8fNRxWptRgs6pYZhmQCbfGFpXXa0TU/yMAF9g/pU30
 WatGmVvuokLk4Pn6dw4TACOawdbu7wjZWRpOAhOhiFS+OTMDm+/I6XkxHh8iTPqzed4N
 3lNZzWqg7uuRHCAnNwAO359O9bioWtq2WciiPOqUNQm3sPq2KvFC4ZsB8QA3qOR3tRzQ
 hlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=11EqLqigawu5AuEW1gFIrsexclHL8DCzdN7DBjvUYqA=;
 b=lW7SLo2Fl9yidYfgJHa+pvCDj5fOS/bb6rgwSR9gNJvX0Xk+PIqPWyFyc7AU28uLSr
 dnhpTcyX6UuqlbL6rO8fom8Rt57xgPfE1SjNzT1YsqoM7LirqUDHktqDWmS6LeMEvsW1
 IA0iJkUI+xMcr4QFZyQfH3GUIEhzI9ZB6ySAk7dPbHkz9R/LrJ6TmklHB7ggHonQW74V
 9vC0fE6Shzp+bVoH0JDJzmER82feWnOmhzKCzHkNjumF4OfebaQotI4/HarL//ZiL/Qm
 SXGd5zUZbNdXuZEswP81LlauYiEAvnBM7YOoysGfaZsKDb5mBVPDmkUPmk9rWcSFoDOy
 R1eQ==
X-Gm-Message-State: AOAM531ApxUi04NqIi6uMOF4VuJqwBDC6JoeeB/6mbfDdytN+IhdM2gB
 JGnuT4K5bmxEPN7JIrllt7M=
X-Google-Smtp-Source: ABdhPJzyIQBGa1ntOKSqo1SvAnBFrCrm6S7cNpV+bs4hx8uQCJMs5mKCao88L4qsI/tdDw36VJZWCA==
X-Received: by 2002:aa7:9431:: with SMTP id y17mr238635pfo.33.1591206154354;
 Wed, 03 Jun 2020 10:42:34 -0700 (PDT)
Received: from gmail.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id nl8sm3772210pjb.13.2020.06.03.10.42.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jun 2020 10:42:33 -0700 (PDT)
Date: Wed, 3 Jun 2020 23:12:25 +0530
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [RESEND PATCH v1 6/6] staging: greybus: audio: Enable GB codec,
 audio module compilation.
Message-ID: <20200603174222.GB21465@gmail.com>
References: <cover.1591040859.git.vaibhav.sr@gmail.com>
 <77cfc355b87ee21636430f787764700de1983f38.1591040859.git.vaibhav.sr@gmail.com>
 <20200602125715.GI30374@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602125715.GI30374@kadam>
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

On Tue, Jun 02, 2020 at 03:57:15PM +0300, Dan Carpenter wrote:
> On Tue, Jun 02, 2020 at 10:51:15AM +0530, Vaibhav Agarwal wrote:
> > Currently, GB codec and audio module is conditionally compiled based on
> > GREYBUS_AUDIO_MSM8994. However, audio module is not dependent on MSM8994
> > platform and can be used generically with any platform that follows
> > GB Audio class specification.
> > 
> > Also, GB codec driver corresponds to dummy codec represented by I2S port
> > available on Toshiba AP Bridge. Added config option for the same in
> > kconfig file and accordingly updated Makefile.
> > 
> 
> This commit message was a bit confusing to me.  Just say:
> 
> "Currently you can't enable the Grey Bus Audio Codec because there is no
> entry for it in the Kconfig file.  Originally the config name was going
> to be AUDIO_MSM8994 but that's not correct because other types of
> hardware are supported now.  I have chosen the name AUDIO_APB_CODEC
> instead.  Also I had to update the dependencies for GREYBUS_AUDIO to
> make the compile work."
> 
> Otherwise this looks fine.

Thanks Dan for sharing your valuable feedback. I'll make the suggested 
changes for the complete series in v2 patchset.

regards,
vaibhav

> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
