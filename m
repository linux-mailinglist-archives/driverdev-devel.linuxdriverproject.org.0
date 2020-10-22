Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEC0295886
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 08:47:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C2968204B8;
	Thu, 22 Oct 2020 06:46:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClYoIWU9UEMI; Thu, 22 Oct 2020 06:46:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5994A203F6;
	Thu, 22 Oct 2020 06:46:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 833451BF83E
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 06:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7BAAA86E0D
 for <devel@linuxdriverproject.org>; Thu, 22 Oct 2020 06:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JavxlKE-LBZx for <devel@linuxdriverproject.org>;
 Thu, 22 Oct 2020 06:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F0DC986E07
 for <devel@driverdev.osuosl.org>; Thu, 22 Oct 2020 06:46:55 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id w21so532642pfc.7
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 23:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0WrnMd2LNPPj+2D4lLqH93MCcvhS9gwX7h302REyvo0=;
 b=vDYB1sEMcEaIU+Wd++uwCQto9ubA41QNO0AyLFcki8A8JHLBVPBsEWyP+hNuga5XHl
 4l7DEw+wzMFh69Lg/rOHO/w8LTPia79S2b1lnrKdlqM/UKi82k/M2t6UDL6qYPocR4kZ
 OEuOtiZRgmmn0WetkAOQ7ktaJW/zPdyXLl/5ntJncSFz66SiHWlFws6xA9epcxa+B1yu
 KpHQ42Ex6QWvC3ANfP4BZPdGpBbC5hdls3bOGcf7ZyKp5jOwJnMjf22imGIrdfkP/UMQ
 9M9QAbSMjIAUVXIuubZwDHLGHqnPt7+VoH1UsuwD3frnO+jmAqw8XisxTb1LriTLiQjb
 bQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0WrnMd2LNPPj+2D4lLqH93MCcvhS9gwX7h302REyvo0=;
 b=PiKgJyTe2D4T4frL8zv2oRa72K0xHL90RsoVHJ4tmLRStFtDjB5jymOPWgjSEMJlWo
 4lU1mX0ZxoZfFf3pEAK6P//xr/zOqAVviIEx1iuqFNXhv5GOsyri1bBDGnUQO+vcM8QS
 jQ2TtPPiOukNOAcA+T/e/UwXQyzOsTCXrbAZfRjqUBCx+tRRvmQrHelPsuVqi1nHW/IO
 fL4X7zks1/FBq6hhiaHFUoe8iUDD0Ze3xIsx+fq2aKlXDl10H/ZJ122UAuZHVZkVsX4U
 fNVhz7bloPwkj6V1VW1tNXNv98SgoKlHJLL2QFrd4QIZ+DBmksSWM2sjeptl/7ggcDdX
 EpkA==
X-Gm-Message-State: AOAM531hQNuqiJQkTZAmzBjO6R55o+GjaDyu8wcQQGreMCz23yNKPQDz
 X+bGBsZ9K1SRBaaoUeqxSmo=
X-Google-Smtp-Source: ABdhPJzINLpugOML2Ppril5KGOxj+cH7EEsPFz4+LXDNVL5ZQBoybBLe5+h2AqzgdjDAJLQNBzSWoA==
X-Received: by 2002:a65:4386:: with SMTP id m6mr1046019pgp.319.1603349215625; 
 Wed, 21 Oct 2020 23:46:55 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id v6sm809833pjh.10.2020.10.21.23.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 23:46:55 -0700 (PDT)
Date: Thu, 22 Oct 2020 12:16:50 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Clean up query: greybus/audio_manager_module.c
Message-ID: <20201022064650.GA351945@ubuntu204>
References: <20201022033701.GA329478@ubuntu204>
 <20201022052931.GA6093@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022052931.GA6093@kroah.com>
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 mgreer@animalcreek.com, vaibhav.sr@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 22, 2020 at 07:29:31AM +0200, Greg KH wrote:
> On Thu, Oct 22, 2020 at 09:07:01AM +0530, Deepak R Varma wrote:
> > Hello,
> > I am reviewing the file: drivers/staging/greybus/audio_manager_module.c
> > and have found that there are several gb_audio_module_*_show functions
> > that accept "struct gb_audio_manager_module_attribute * " as a function
> > parameter. However, this parameter is not used and should not be
> > necessary. Would you suggest cleaning up such functions.
> 
> Try removing it and see why it is really needed to be there :)

Sounds exciting. I will definitely do that.

> 
> good luck!

Thank you.
Deepak.

> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
