Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C548F23CC90
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Aug 2020 18:52:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F0E7878BE;
	Wed,  5 Aug 2020 16:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xjyrg1OJFKEo; Wed,  5 Aug 2020 16:52:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08B1686055;
	Wed,  5 Aug 2020 16:52:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78D6F1BF42C
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 16:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 753DF88189
 for <devel@linuxdriverproject.org>; Wed,  5 Aug 2020 16:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HUKjiWmRZmIr for <devel@linuxdriverproject.org>;
 Wed,  5 Aug 2020 16:52:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A9906880A1
 for <devel@driverdev.osuosl.org>; Wed,  5 Aug 2020 16:52:46 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id q17so25552928pls.9
 for <devel@driverdev.osuosl.org>; Wed, 05 Aug 2020 09:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zXZGtsOURmZyHZLbU5fvxhNJ7/uuuH+Jf1Odf6vVQ/Y=;
 b=LbdFwCwwQ9+ZYyYA91SbJw79q5NmfsQ584hs+WRyh/6ENT1awKjxbLxxdjwZpDO0gW
 Tr8xIPC0qYpNF56Q/Vts64nXhmUpDrmJLjoqxk/snzwrty3UkfAgqdzR5hinsLeFi6zI
 R0hscqToNuNUSjBqXpBmkZOBp4sTvJCK+24di3gbiG9OWnxJYYP1bNtXGr9Q30ftrg8q
 vPn815m/91evw5LuxWkVMSPSZo6J39FiRaqdzSkpKUsghh81J8x/r1EPU6Nb+/hb8iwv
 nY6iURyZ+psWPW05NKmkzHzYlTDuN6KZ6xlntRf6Sn4Wii2ZfodpTQ2Z15XVy28LdWcO
 rpow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zXZGtsOURmZyHZLbU5fvxhNJ7/uuuH+Jf1Odf6vVQ/Y=;
 b=NnyMQN7yfKCv8nspZheizTEKDJwqVvKOB3d2zop5Eum7ZA2aOc/u6b3jBtChMETSmC
 BTByQRZElYUKqRrgMAYZALUaRfCbP5FssU2DnB5q55ozkHakf2PRdWuR/WcGqtW2U1DQ
 62OAU1Y0N8+nYopUAcOq72MyDHeRkcEeyKttdfZ5J3FBimMZBTzo8o83kgMiClSaND7B
 hTD+SKUB1/EbY943YLXkoboMqUIuOz1/F6sYXIJydy2gLvX06ZE6azSpLknerWyp287N
 hX5qXvOiSIVPABF565isHCy+6ZdWUwhBVWXLAeRwqy0xHl7bhyLG463lUH4fyLKWlcPO
 gffw==
X-Gm-Message-State: AOAM533h/KJCUq1hG/eYJabPFREWxQ3+g4U/VoKKkaKjQyRFjzIKPYSA
 CGvkt3cz+7XZHHTKigpWgs4sDYxb08KJr58+Wg0=
X-Google-Smtp-Source: ABdhPJzq2IoaaG/XACuojhMxN71N1xV8rgh0jzB4NCZ3up/DasYj5P+gibCzFgPgwUVAYsmZlRJnUeV8JfW04Jc8fHk=
X-Received: by 2002:a17:90a:148:: with SMTP id
 z8mr4414464pje.197.1596646366165; 
 Wed, 05 Aug 2020 09:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1594290158.git.vaibhav.sr@gmail.com>
 <896b8e24d990f2bca5aafaebd26e37095042951e.1594290158.git.vaibhav.sr@gmail.com>
 <7cbc0daa-993f-ffc9-78f4-b1e62fd54304@linaro.org>
In-Reply-To: <7cbc0daa-993f-ffc9-78f4-b1e62fd54304@linaro.org>
From: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Date: Wed, 5 Aug 2020 22:22:09 +0530
Message-ID: <CAAs364-PFw2OGGhwBH8RB7jBPD4Xre4puu9G-7P+z6Ur_Ni-yA@mail.gmail.com>
Subject: Re: [greybus-dev] [PATCH v4 1/7] staging: greybus: audio: Update
 snd_jack FW usage as per new APIs
To: Alex Elder <elder@linaro.org>
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
Cc: devel@driverdev.osuosl.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alex Elder <elder@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 5, 2020 at 6:35 PM Alex Elder <elder@linaro.org> wrote:
>
> On 7/9/20 5:27 AM, Vaibhav Agarwal wrote:
> > snd_soc_jack APIs are modified in recent kernel versions. This patch
> > updates the codec driver to resolve the compilation errors related to
> > jack framework.
>
> Greg has already accepted this series so I won't review this now.  But
> I still wanted to provide this comment.
>
> It would be helpful in the future to provide a little more information
> about the nature of the changes to these APIs.  As a reviewer I had to
> go track them down to get a little more context about what you are doing
> here.  So you could say something like:
>
>   Audio jacks are now registered at the card level rather than being
>   associated with a CODEC.  The new card-based API allows a jack's pins
>   to be supplied when the jack is first registered.  See: 970939964c26
>   ("ASoC: Allow to register jacks at the card level")
>
> In other words, don't just say "the APIs changed," say "here is how
> the APIs have changed."  This kind of introduction can be very helpful
> and time saving for your reviewers.
>

Thanks for the feedback Alex. I'll take care of the commit message while
sharing similar patches.

--
vaibhav
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
