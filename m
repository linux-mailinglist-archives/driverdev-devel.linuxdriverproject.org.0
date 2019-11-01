Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8387FECA02
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 21:57:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 577CF87E81;
	Fri,  1 Nov 2019 20:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDQUWmKHkGj0; Fri,  1 Nov 2019 20:57:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 91F1987E57;
	Fri,  1 Nov 2019 20:57:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DDEB1BF3AD
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 20:57:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8A7AF86B45
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 20:57:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7FSimqMRXku1 for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 20:57:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8076286909
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 20:57:43 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id i185so9285196oif.9
 for <devel@driverdev.osuosl.org>; Fri, 01 Nov 2019 13:57:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B2Wo++qvCAWopO2MVN1SxMuOaw9O5ooxGYbXrtTGoLc=;
 b=JmegcmV2CgOjM4LMha/K9o+XmHDsCyiZ2KPCJ4khXhwF5oH/8vJB6WfDQWPpYFccMr
 7engBbur9VNsYobSl/XI8FTSfh2ceWuk89HCCOoAO1fMn2C0ZOsjldCjsWwvE01bxle4
 YvadsyU/PvHBjr6eISi2H/Av69xiXomEJGp6mRC22yS0Q/CynHbmPMQyawrVLc71hQDF
 Kp0V66cu+w/Zo6D6iQzoZQCth6pCD61YNnx5OT+VVkljdKlIxOv7LlMfvO6tzcWMNjow
 2bF4koXUX+Wt0Pc5eIykRb5Kc0rLuIG4lyXgSpfviF5TvSBNVpL7kmOe8GQBYwo/JEdC
 jYKQ==
X-Gm-Message-State: APjAAAVa2qsTroKdc3O27f5QakH+Lw4I+xlKFl4sBKtEOX/R4OZfIMTZ
 ArVmVTiCwThsOhneMKQZ/G1UEm8QMz2iHB8ozs8=
X-Google-Smtp-Source: APXvYqyMPGVgSghm8B6Z8BliWMbf63SJMtQqkLmxrpCWnOLjhSTH18y22Nnv6Mk4zTGM1EgQgPb5eF27WcBVRETo4XE=
X-Received: by 2002:a05:6808:60a:: with SMTP id
 y10mr3730740oih.102.1572641862721; 
 Fri, 01 Nov 2019 13:57:42 -0700 (PDT)
MIME-Version: 1.0
References: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
In-Reply-To: <20191031010736.113783-1-Valdis.Kletnieks@vt.edu>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 1 Nov 2019 21:57:31 +0100
Message-ID: <CAMuHMdXzyVBa4TZEc5eRaBzu50thgJ2TrHJLZqwhbQ=JASgWOA@mail.gmail.com>
Subject: Re: [RFC] errno.h: Provide EFSCORRUPTED for everybody
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Arnd Bergmann <arnd@arndb.de>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu <chao@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 Andreas Dilger <adilger.kernel@dilger.ca>, Jan Kara <jack@suse.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Gao Xiang <xiang@kernel.org>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Valdis,

On Thu, Oct 31, 2019 at 2:11 AM Valdis Kletnieks
<valdis.kletnieks@vt.edu> wrote:
> Three questions: (a) ACK/NAK on this patch, (b) should it be all in one
> patch, or one to add to errno.h and 6 patches for 6 filesystems?), and
> (c) if one patch, who gets to shepherd it through?
>
> There's currently 6 filesystems that have the same #define. Move it
> into errno.h so it's defined in just one place.
>
> Signed-off-by: Valdis Kletnieks <Valdis.Kletnieks@vt.edu>

Thanks for your patch!

> --- a/include/uapi/asm-generic/errno.h
> +++ b/include/uapi/asm-generic/errno.h
> @@ -98,6 +98,7 @@
>  #define        EINPROGRESS     115     /* Operation now in progress */
>  #define        ESTALE          116     /* Stale file handle */
>  #define        EUCLEAN         117     /* Structure needs cleaning */
> +#define        EFSCORRUPTED    EUCLEAN

I have two questions:
a) Why not use EUCLEAN everywhere instead?
    Having two different names for the same errno complicates grepping.
b) Perhaps both errors should use different values? Do they have the
   same semantics? I'm not a fs developer, so this is a bit fuzzy to me.
   According to Documentation/, one seems to originate in mtd, the
   other in xfs.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
