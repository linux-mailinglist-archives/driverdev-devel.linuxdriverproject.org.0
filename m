Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCF82BB7B2
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 21:48:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6525D87321;
	Fri, 20 Nov 2020 20:48:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id klmE2NDwphLD; Fri, 20 Nov 2020 20:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAAD087116;
	Fri, 20 Nov 2020 20:48:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E05E21BF2B9
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 20:48:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA5772E0EE
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 20:48:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oS+8NxOHRjJY for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 20:48:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 69F282035B
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 20:48:03 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id y22so5464780plr.6
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 12:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=v0uQ3+ZvQ790GJbfbb1ESqfRrqQ38XoL7hho1t1Gb0k=;
 b=avd4TaFUM+Ab56B8iWTc3giej2JyPXQeNqj8Vqwh4pMfYMm6E7ROZ43KbUMGq3c2kN
 Y7wgImiWtwhH33QCuhXwX5xfYnbd8ZoAoymaiVLMsflRM4OrtMTi7raBVieCeB5e9/kv
 qCr4nXKui27aGXF6t1ziK2ispJ9UlbNRnpYGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=v0uQ3+ZvQ790GJbfbb1ESqfRrqQ38XoL7hho1t1Gb0k=;
 b=he9A4PJHINgK76vsD92FsJg9/zoO1racHIxgi1YBjs3scrMFu7vLVjKGYCZg4J6Dn1
 8ahuIxwsyZ8N4d2fNgGk/4LqgwjcLTx8LmJJjRkAh7Jsrhjl90SbdT4mZ+d7CVFik+i7
 YbBYmZxz4WgPBpUYZqN8h1tm/7Yq7HU5cY6AjTviaU2P39WvAuKpKUQbxyoFIaIGgyPM
 emlLbazSQBfSEmGDDD1WSJ9ivQbGTDKkNfyTUJJKgZZGTMSv5ZvgI1vzGFnrdKNZR8nj
 RDudOXuv7oLygoew1XX88JuMS7OcJiwWA1mrkpZrDT/4XTSPdfI7JTCtDUdWfQCY9obC
 MlkQ==
X-Gm-Message-State: AOAM5304ydtrR316H01lyAAi/OA8inEG8ba7lpj1o0K0XuuBG2vwVyFZ
 x5flSiKlOY0OgGdQKRAlKsGJjw==
X-Google-Smtp-Source: ABdhPJwusp2Lb+4OqT162rurUKkT/e5T3DAOLIduq4rICrKRG7vcFewdIWNkE66BLMZ+8SMrIPoLqA==
X-Received: by 2002:a17:902:7890:b029:d8:bb20:518e with SMTP id
 q16-20020a1709027890b02900d8bb20518emr15184915pll.66.1605905283037; 
 Fri, 20 Nov 2020 12:48:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id w11sm565810pfi.162.2020.11.20.12.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Nov 2020 12:48:02 -0800 (PST)
Date: Fri, 20 Nov 2020 12:48:01 -0800
From: Kees Cook <keescook@chromium.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH 000/141] Fix fall-through warnings for Clang
Message-ID: <202011201244.78E002D5@keescook>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
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
Cc: alsa-devel@alsa-project.org, linux-atm-general@lists.sourceforge.net,
 reiserfs-devel@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-fbdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Nathan Chancellor <natechancellor@gmail.com>, linux-ide@vger.kernel.org,
 dm-devel@redhat.com, keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 GR-everest-linux-l2@marvell.com, wcn36xx@lists.infradead.org,
 samba-technical@lists.samba.org, linux-i3c@lists.infradead.org,
 linux1394-devel@lists.sourceforge.net, linux-afs@lists.infradead.org,
 usb-storage@lists.one-eyed-alien.net, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org,
 oss-drivers@netronome.com, bridge@lists.linux-foundation.org,
 linux-security-module@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com, cluster-devel@redhat.com,
 linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-media@vger.kernel.org,
 linux-watchdog@vger.kernel.org, selinux@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-geode@lists.infradead.org, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org,
 xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org,
 virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 x86@kernel.org, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com,
 linux-mm@kvack.org, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 Joe Perches <joe@perches.com>, linux-integrity@vger.kernel.org,
 target-devel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 20, 2020 at 11:51:42AM -0800, Jakub Kicinski wrote:
> On Fri, 20 Nov 2020 11:30:40 -0800 Kees Cook wrote:
> > On Fri, Nov 20, 2020 at 10:53:44AM -0800, Jakub Kicinski wrote:
> > > On Fri, 20 Nov 2020 12:21:39 -0600 Gustavo A. R. Silva wrote:  
> > > > This series aims to fix almost all remaining fall-through warnings in
> > > > order to enable -Wimplicit-fallthrough for Clang.
> > > > 
> > > > In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> > > > add multiple break/goto/return/fallthrough statements instead of just
> > > > letting the code fall through to the next case.
> > > > 
> > > > Notice that in order to enable -Wimplicit-fallthrough for Clang, this
> > > > change[1] is meant to be reverted at some point. So, this patch helps
> > > > to move in that direction.
> > > > 
> > > > Something important to mention is that there is currently a discrepancy
> > > > between GCC and Clang when dealing with switch fall-through to empty case
> > > > statements or to cases that only contain a break/continue/return
> > > > statement[2][3][4].  
> > > 
> > > Are we sure we want to make this change? Was it discussed before?
> > > 
> > > Are there any bugs Clangs puritanical definition of fallthrough helped
> > > find?
> > > 
> > > IMVHO compiler warnings are supposed to warn about issues that could
> > > be bugs. Falling through to default: break; can hardly be a bug?!  
> > 
> > It's certainly a place where the intent is not always clear. I think
> > this makes all the cases unambiguous, and doesn't impact the machine
> > code, since the compiler will happily optimize away any behavioral
> > redundancy.
> 
> If none of the 140 patches here fix a real bug, and there is no change
> to machine code then it sounds to me like a W=2 kind of a warning.

I'd like to avoid splitting common -W options between default and W=2
just based on the compiler. Getting -Wimplicit-fallthrough enabled found
plenty of bugs, so making sure it works correctly for both compilers
feels justified to me. (This is just a subset of the same C language
short-coming.)

> I think clang is just being annoying here, but if I'm the only one who
> feels this way chances are I'm wrong :)

It's being pretty pedantic, but I don't think it's unreasonable to
explicitly state how every case ends. GCC's silence for the case of
"fall through to a break" doesn't really seem justified.

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
