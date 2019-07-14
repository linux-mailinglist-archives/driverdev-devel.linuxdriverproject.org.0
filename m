Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B5567FF5
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Jul 2019 17:47:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C97FF8778E;
	Sun, 14 Jul 2019 15:47:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uohZVSkuiLUi; Sun, 14 Jul 2019 15:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E7BE0855C7;
	Sun, 14 Jul 2019 15:47:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BBB5D1BF20D
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5988848A0
 for <devel@linuxdriverproject.org>; Sun, 14 Jul 2019 15:47:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iDYfUaIB3pjk for <devel@linuxdriverproject.org>;
 Sun, 14 Jul 2019 15:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 373EA82731
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 15:47:41 +0000 (UTC)
Received: by mail-qk1-f172.google.com with SMTP id w190so9914951qkc.6
 for <devel@driverdev.osuosl.org>; Sun, 14 Jul 2019 08:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+ERsJOUhZ69q67v05/OTH8gBbcr9lFonDpDMj90Lxvc=;
 b=WDG7R2p8zuxvhmA6DsTOuwzo8M69Br6Qi+jiCTvKacYh/68IrsyMLf7/hR8p28UDOA
 KzjSKBcTnvrwh4Paj19UM/zmgvK87eYbja4HQSUqNB7p9rJGaluLcSkVICq1dn9jAwTH
 iBpy0Otfi/8IA0laskB0HlwaIaQ50ZTbsMRL0RGqIJ1KWqRfKx1thTxD9C7xd8heCv44
 6g2o8O1AwoMCCy7qxXsdhmBgKDa2u1LCUNvPfff2QjpmN48HYj/WjBrlToMDJaOF3Ego
 yWZEPecJnm0evQJUVkwQM4KcStXp43df29bN49//o6lgojDF1dH+Hxl+AVyhMUMDPDKy
 kDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+ERsJOUhZ69q67v05/OTH8gBbcr9lFonDpDMj90Lxvc=;
 b=riE/U7RH77JJ/mzuWlrdnl5gZayzTDQP7kNJtWbQwPLSTl12Jut4ugnTmQ/0VxD3E2
 6mFPhg1CAKR0N+6Bwl1JUtAVLkQsIclrnilJnIlji2GVTY1LJjVFKdYPCeyOTmhiqe+y
 a9N+dXEaiCv+WrY7GntwVpFHHno3YEm27rJ4WYKHY1kF7zFzvuJEPRorUF8n3UlvWsPB
 ufwUi8hZfXnQLq/70C9smS95Iiq1oCptErH0WPNrcIrzchKjF+CnG5UYpYOPqOnYGvG7
 dsxHuUt0nG+effjUrdjVkbMV0lnxVRfYrbMWQY1JZE2d4BxRSLTIeiFvvVQ5wxsbfLx5
 /kIw==
X-Gm-Message-State: APjAAAXz3iaN76EdIO2xytgEVf5S14ni4WZX7Y78k5wAaa/iwvmyBFIv
 8TDpFRZxnhKC71zh4Vsd1A==
X-Google-Smtp-Source: APXvYqxe/WqFz+YIifvverZwLiiGuU2VQkkfAqdIL4kqrU5R/xRQUcP69roH6+AsSglAzfivJgc/8A==
X-Received: by 2002:a05:620a:41:: with SMTP id
 t1mr13427321qkt.423.1563119260333; 
 Sun, 14 Jul 2019 08:47:40 -0700 (PDT)
Received: from keyur-pc (modemcable148.230-83-70.mc.videotron.ca.
 [70.83.230.148])
 by smtp.gmail.com with ESMTPSA id g10sm5977934qki.37.2019.07.14.08.47.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 14 Jul 2019 08:47:39 -0700 (PDT)
Date: Sun, 14 Jul 2019 11:47:37 -0400
From: Keyur Patel <iamkeyur96@gmail.com>
To: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v4] staging: most: remove redundant print statement when
 kfifo_alloc fails
Message-ID: <20190714154737.GB32464@keyur-pc>
References: <20190714150546.31836-1-iamkeyur96@gmail.com>
 <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06fc2495-dda5-61d2-17e8-0c385e02da1e@web.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Suresh Udipi <sudipi@jp.adit-jv.com>,
 Colin Ian King <colin.king@canonical.com>,
 Christian Gromm <christian.gromm@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I didn't get you. I stiil need to update changelog and send more 
version or not. If you say so, I can send one more.

Thnaks.
On Sun, Jul 14, 2019 at 05:23:34PM +0200, Markus Elfring wrote:
> > ---
> > Changes in v3:
> 
> Thanks for your quick response.
> 
> I find the change log incomplete (even if corresponding information
> can be determined also from public message archives).
> 
> Regards,
> Markus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
