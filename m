Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2A62458D5
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:43:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B2DB9850E0;
	Sun, 16 Aug 2020 17:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VG0p-OFEA_Gv; Sun, 16 Aug 2020 17:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8BE3850D6;
	Sun, 16 Aug 2020 17:43:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C32B41BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:43:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BDB36850D6
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MDTjgJEq2KyP for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:43:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 430EE85070
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:43:47 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c15so12661800wrs.11
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 10:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Nn0Ssx3+c526gox1QvsdRl3BZJs+iVNQgS1FvYlELz4=;
 b=YuyPAEXgZvzHBK677iO7Tvg89GTdZ024gYRGXwq59GXCRP2Q/bWXdEVPft7Uz4qEkA
 /nr3XuTk6ptczo0FpRsJhpBnwXBrurk1ik23l3/Lo7PUo9pHk210E1SBgnr2CdlhzveJ
 CsA1xsqihHq1g+p92q4hLAJ04FZ4TZCIQljemf4LbYv1Lp2/9PJ5HYvilPCSlnJqhRr+
 HPdFAHXG1MDOzP8wK3XrPRW9eV04LwRicZ4VjfAzxLjl6a1fXmAxydbBBgrmEAZdLx0R
 v63YfugikFVfnxusVnmX8rQ+NpgJ76nnbcj3evqUsLRGdrBv+P/+C9nmDm/v0UkH2qxB
 Y0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Nn0Ssx3+c526gox1QvsdRl3BZJs+iVNQgS1FvYlELz4=;
 b=ciT7SPiZYD8fuiyrhnXGMF/MJjYIyzVu6pR2JbIs6M0R+Y5AV0X6XFKoT3TPhp09xq
 /PhCfBXWFeVAvvfABDrOpz2E7e0/hTWPQjsiRneYsVE4+I8VWL2L7R04OoyN/70jQUvj
 8VzXBzjEEJwDeD9Lbw8n2w2jFrdqrR4KnfqgcSbzprZgbLs3O5ADbbIAkpvzQ7dkB7Qo
 Fl0MD7VkIUv21JwGPn7/hZS8HTBw+zvkmj1auOSjFF4wHb5oCl/1YcQRE9xawroI/NRr
 DyBie2PGM9z16sfg1FO1B9IH+L7Gqnw01/+H+O/EF29ZfMCX8eZjrXIwR2qAjiH6RLJw
 3jRw==
X-Gm-Message-State: AOAM533i1cksHexJgbGpliIig4yC6SxMDmjDdV39ybHu3VLe8XeU3h/K
 L3n6m78IjhJV26Oj3+VN+yc=
X-Google-Smtp-Source: ABdhPJxvyqPjh2aOYwOIzUhLE2lT6M/udf3WrdcOACdqp9pQaZlxt1N8eW/LSL2crIqyI/WB7MCKyQ==
X-Received: by 2002:adf:d0c4:: with SMTP id z4mr11608654wrh.245.1597599825799; 
 Sun, 16 Aug 2020 10:43:45 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id y16sm27330124wrr.83.2020.08.16.10.43.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 10:43:45 -0700 (PDT)
Date: Sun, 16 Aug 2020 20:43:40 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH 3/3] staging: androind: Convert BUG() to WARN()
Message-ID: <20200816174340.GA236914@tsnow>
References: <cover.1597597955.git.tomersamara98@gmail.com>
 <8df6206000524d4a0043a7a1df97b2be2d277995.1597597955.git.tomersamara98@gmail.com>
 <df5e2206-51be-3fc7-ddc2-6f318a8e5a1a@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <df5e2206-51be-3fc7-ddc2-6f318a8e5a1a@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Joel Fernandes <joel@joelfernandes.org>,
 Riley Andrews <riandrews@android.com>, Martijn Coenen <maco@android.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Laura Abbott <labbott@redhat.com>,
 Suren Baghdasaryan <surenb@google.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Aug 16, 2020 at 10:34:50AM -0700, Randy Dunlap wrote:
> On 8/16/20 10:22 AM, Tomer Samara wrote:
> > replace BUG() with WARN() at ion_sytem_heap.c, this
> > fix the following checkpatch issue:
> > Avoid crashing the kernel - try using WARN_ON &
> > recovery code ratherthan BUG() or BUG_ON().
> > 
> > Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
> > ---
> >  drivers/staging/android/ion/ion_system_heap.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
> > index eac0632ab4e8..37065a59ca69 100644
> > --- a/drivers/staging/android/ion/ion_system_heap.c
> > +++ b/drivers/staging/android/ion/ion_system_heap.c
> > @@ -30,7 +30,8 @@ static int order_to_index(unsigned int order)
> >  	for (i = 0; i < NUM_ORDERS; i++)
> >  		if (order == orders[i])
> >  			return i;
> > -	BUG();
> > +
> > +	WARN(1, "%s: Did not found index to order %d", __FUNCTION__, order);
> >  	return -1;
> >  }
> 
> Hi,
> Did you look at what happens when order_to_index() returns -1
> to its callers?
> 
> 
> Also: fix spelling in Subjects: android and BUG/BUG_ON
> 
> -- 
> ~Randy
> 

Hi,
yes I've made a patch for that too but it seems I forgot to
include him in the patch set.
I will send new version for this patch set soon.

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
