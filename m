Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 949A9DA8C9
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:44:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 750F686174;
	Thu, 17 Oct 2019 09:44:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tk6KfdxTwsxD; Thu, 17 Oct 2019 09:44:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 129F285BC9;
	Thu, 17 Oct 2019 09:44:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EFA5F1BF2CF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA19784F27
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dTy4XWEsOvos for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F84F84ED7
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:44:05 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id o18so1517016wrv.13
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 02:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=WPP8fM4BAgo7I+1NaWLWc92Edu33AT6FVJmg54ang5E=;
 b=oFG2LIf7gajsb1vY737nWpSi1k5VHzfQkzRpD7x3c85lOQJ6Jkt2T8u3kcOc9nOhE+
 TgBvPebcdlDPtp2ZRqFXNlrPxycI1gNkzCBSweqroMK8j97AfkcTQt4c7LWCfv242Hvo
 KUMfDyaw+dDGWKZzYClD5adoZGlbE0cAI5hwIdturEeAOvGiXij34J8DtVby5JLcwGKt
 XfdtGRzNjLxoxGNJiYpjjb5YITtSF90Y4bYVBLiCuj6czPEytj4GVNyHotyb4kqtDFi9
 TImjph6EFB1tCC/7muPqBrGqoxzX9ry1d5IcbKnvE1k5+1pS1TXgSIs7hCvJf4Ml/h5H
 BWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=WPP8fM4BAgo7I+1NaWLWc92Edu33AT6FVJmg54ang5E=;
 b=cPxtyha4OwpflOs1kuRnnbg5zYlNbsWnKbOfD5oTzvvtIocu6hgDWhN1XcGnoYGYGh
 D0YUyVwLTn7TYDU7uIJ3SpYWFWyWDEYaxBg7kesNE0d2pcCt3OmKMmyVfiBRVkb1EoL6
 k7+ZTGxCkmvVauzQ/wwAuiu2rV8yt58oKTdI2+a9c8zLq+9lldvkX50H7oSXkOiF4G5t
 IH8aOydxwHLFaKbwZ7GYo6Ku1xiT8hPuKOcmYl5tCZwTJNt3nB3tf2leE4zQA0N8rMNf
 jmfOWPZli4iVI9g+ZR6zrqoTNE0Vx6AaSCXQ5moQlbUJAVTbE8bnCgZrGdPcifEEPC5S
 9u4w==
X-Gm-Message-State: APjAAAW13F2dkyUUGwa6tuPiY1GbQFJFKteeln72JCon28+FFxON/AQS
 l65TN7e6EvHGseOb097E1tY=
X-Google-Smtp-Source: APXvYqyKkWTNWIuO9WZL6fxrNNqgIZcALneckDsL6VuBs7BrD8IMByxj+/XAJIzCKjHSblzF1dV5dw==
X-Received: by 2002:adf:d848:: with SMTP id k8mr2241596wrl.189.1571305442983; 
 Thu, 17 Oct 2019 02:44:02 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id z13sm1591519wrq.51.2019.10.17.02.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 02:44:02 -0700 (PDT)
References: <20191015135915.6530-1-hslester96@gmail.com>
 <20191016090628.7l5u4ytdqr2jlasg@pengutronix.de>
 <m336fsst40.fsf@gmail.com>
 <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH v2] media: imx7-mipi-csis: Add a check for
 devm_regulator_get
In-reply-to: <20191017081029.q2czy7y5zlbj4ogr@pengutronix.de>
Date: Thu, 17 Oct 2019 10:43:59 +0100
Message-ID: <m31rvbso4g.fsf@gmail.com>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Marco,
On Thu 17 Oct 2019 at 09:10, Marco Felsch wrote:
> Hi Rui,
>
> On 19-10-16 14:43, Rui Miguel Silva wrote:
>> Hi Marco,
>> On Wed 16 Oct 2019 at 10:06, Marco Felsch wrote:
>> > Hi Chuhong,
>> >
>> > On 19-10-15 21:59, Chuhong Yuan wrote:
>> >> devm_regulator_get may return an error but mipi_csis_phy_init misses
>> >> a check for it.
>> >> This may lead to problems when regulator_set_voltage uses the unchecked
>> >> pointer.
>> >> This patch adds a check for devm_regulator_get to avoid potential risk.
>> >>
>> >> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
>> >> ---
>> >> Changes in v2:
>> >>   - Add a check in mipi_csis_probe for the modified mipi_csis_phy_init.
>> >
>> > Did you miss the check for -EPROBE_DEFER?
>> >
>>
>> I think nothing special is really needed to do in case of
>> EPROBE_DEFER, or am I missing something?
>> It just return to probe and probe returns also. I just talked
>> about it because it was not cover in the original code.
>
> Yes, your are right... I shouldn't comment on anything I read with one
> eye. Sorry.
>

ehehe, no problem and thanks for your inputs.

---
Cheers,
	Rui

>
> Regards,
>   Marco
>
>> ---
>> Cheers,
>> 	Rui
>>
>> >
>> > Regards,
>> >   Marco
>> >
>> >>
>> >>  drivers/staging/media/imx/imx7-mipi-csis.c | 8 +++++++-
>> >>  1 file changed, 7 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> index 73d8354e618c..e8a6acaa969e 100644
>> >> --- a/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> +++ b/drivers/staging/media/imx/imx7-mipi-csis.c
>> >> @@ -350,6 +350,8 @@ static void mipi_csis_sw_reset(struct csi_state *state)
>> >>  static int mipi_csis_phy_init(struct csi_state *state)
>> >>  {
>> >>  	state->mipi_phy_regulator = devm_regulator_get(state->dev, "phy");
>> >> +	if (IS_ERR(state->mipi_phy_regulator))
>> >> +		return PTR_ERR(state->mipi_phy_regulator);
>> >>
>> >>  	return regulator_set_voltage(state->mipi_phy_regulator, 1000000,
>> >>  				     1000000);
>> >> @@ -966,7 +968,10 @@ static int mipi_csis_probe(struct platform_device *pdev)
>> >>  		return ret;
>> >>  	}
>> >>
>> >> -	mipi_csis_phy_init(state);
>> >> +	ret = mipi_csis_phy_init(state);
>> >> +	if (ret < 0)
>> >> +		return ret;
>> >> +
>> >>  	mipi_csis_phy_reset(state);
>> >>
>> >>  	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>> >> --
>> >> 2.20.1
>> >>
>> >>
>> >>
>>
>>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
