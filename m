Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 460CC241E90
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Aug 2020 18:46:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7EFDA8818E;
	Tue, 11 Aug 2020 16:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbwLLm45zEPr; Tue, 11 Aug 2020 16:46:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6E80F88177;
	Tue, 11 Aug 2020 16:46:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06EDB1BF2F4
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 16:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 035DE86155
 for <devel@linuxdriverproject.org>; Tue, 11 Aug 2020 16:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AsETSpsg3Ddz for <devel@linuxdriverproject.org>;
 Tue, 11 Aug 2020 16:46:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EF0286148
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 16:46:20 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id p1so7083398pls.4
 for <devel@driverdev.osuosl.org>; Tue, 11 Aug 2020 09:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SoICVdOMd4Tqpxtq18KsD1itKSO8FUEzkBoLmDLhcow=;
 b=eL59yrrKsyb0bsSfO3YV1+l0ncnOX5D2/Xs4WFvonsn6PtwdynBeH0itxm3ElutGeX
 6q6tMvyaS0XtiDqlf1UQZbzfYUPzs+EMK0WoC+iVkOEBe/pSQbogzNeP7ZmPfdPNEu22
 LU2fNVL/yrUDiiZdpwdvIp0dM76FFcohMMTga2kvbUbFlwcYjCp6jrMEEcw3BREARxUQ
 DDPPmnYQ5+gNk5ZXw33oKflrz2xRCFnqaUx9P2Lw5zHc/UkAfeCAESRIoKZDUZhb65WX
 EifOA4elfaADtXvvtigldX2Ps4CGF4lLUh+m8PV+5KK79F5/IZOVOnnWnZaZRudo4RQc
 6RQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SoICVdOMd4Tqpxtq18KsD1itKSO8FUEzkBoLmDLhcow=;
 b=fSMg6K7EEbRK8SvkcWpsDlmhBrc087OHvqTY4J1+4IcpfE2UdzPEpflXD6oGQecHtZ
 RKchtqr2I7jdwyfZ8GtrX0/fopQvPmZ0rGirU19DkUPM2H2QYTRMk08r/81zZD8ERUi0
 EWSQ5yx2Y8RU+wex32ZmX3Lw7i8We/cfTm4Yl859ckkdNiNyFyhhN8Phz+GBaqNsB91N
 JzNLtJKZszGqLHqU8HtmRyiyVLPFcrDIOvOsJ8zQ956nLwfmYzjFkzi/trGhQGEHPB+B
 h7L/Hdk5qi1ve4ts4ISubFWBW5ZGZqLLBVJzN8uPDtY7+uD31dmpJzzdou2pLmHDo4N6
 72Zg==
X-Gm-Message-State: AOAM532JV4oDqbEhMpOD+X8YufzvZ1wdkxh/ILlJpVs1opIZlNjmcAa/
 hOCSbwbmGBBTUF7ToXKS19IQL0opKK43/xzWNLE=
X-Google-Smtp-Source: ABdhPJyEIOzjg18QmQ+dOADWbUqwbtJr18f5lR5OziHFc0pyu8YJaX9K7YoLYsGzJYyelYQz3gnZJ7hJy2SKUsGpMbg=
X-Received: by 2002:a17:90a:4f45:: with SMTP id
 w5mr1974736pjl.11.1597164379902; 
 Tue, 11 Aug 2020 09:46:19 -0700 (PDT)
MIME-Version: 1.0
References: <a5d4bb540e606d7980d4127a82e6af9b436e0642.1596730667.git.vaibhav.sr@gmail.com>
 <20200810150356.GL1793@kadam>
In-Reply-To: <20200810150356.GL1793@kadam>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Tue, 11 Aug 2020 22:15:42 +0530
Message-ID: <CAAs3649URK20TyU=EpfoY9ow-fK6jSjP1214KTPnUUU_t2d-7g@mail.gmail.com>
Subject: Re: [PATCH v1] staging: greybus: audio: fix uninitialized value issue
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, Colin Ian King <colin.king@canonical.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 10, 2020 at 8:34 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Aug 06, 2020 at 09:51:57PM +0530, Vaibhav Agarwal wrote:
> > diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> > index 2f9fdbdcd547..4b914d0edef2 100644
> > --- a/drivers/staging/greybus/audio_topology.c
> > +++ b/drivers/staging/greybus/audio_topology.c
> > @@ -456,6 +456,13 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
> >       val = ucontrol->value.integer.value[0] & mask;
> >       connect = !!val;
> >
> > +     ret = gb_pm_runtime_get_sync(bundle);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
> > +                                   GB_AUDIO_INVALID_INDEX, &gbvalue);
>
>
> We need to check "ret" after this.

Oops, my bad. Thanks Dan for reporting this. I'll share an updated patch soon.

--
regards,
vaibhav
>
> > +
> >       /* update ucontrol */
> >       if (gbvalue.value.integer_value[0] != val) {
> >               for (wi = 0; wi < wlist->num_widgets; wi++) {
> > @@ -466,16 +473,10 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
