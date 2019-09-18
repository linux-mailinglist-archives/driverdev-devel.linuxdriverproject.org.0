Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00720B5F95
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 10:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CD8C87B5D;
	Wed, 18 Sep 2019 08:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mW8IJHCYSvyL; Wed, 18 Sep 2019 08:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 956F387A3A;
	Wed, 18 Sep 2019 08:51:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B44B51BF48D
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 08:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B09E2203F6
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 08:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I2QJk7mP8sBD for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 08:51:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id E6A7A203C9
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 08:51:38 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id h195so3927406pfe.5
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 01:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vPbP7/QnEjDWJMoF8RBYmDoQXXTihg9TkENrxs8Hikg=;
 b=cbiYakMoAIvXUJQ9wm1mOP6JHGlOkOz/Au/pG2FWgchoLAVMxnaK6cQOnKzbluMSHA
 xB9lDEMjhhNQf5lshkFO9x/Ql/FTNiZ7PF4ZC4c1ZqtsOZzT/Nq0NEhHBywh0TnxF2Kg
 h374gLtf6y5fjRbwIQj3ZWhJaZSjcW9vV528xiUUFYCrTqMkK4mTaLZ9mfgciOPEQho2
 y8QQf3O1sgZ2DOzWX5AE7iwc1vxSqE93VivDHYRZNmfgbNe/6JlO6PYmrFvuU4YTOCk3
 Omz26nhfUD32qDNRxkt/i0mER6pMEmH9kKPxyttZQEBtuNp3K/eU/krw4NyPPxpfXGya
 GXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vPbP7/QnEjDWJMoF8RBYmDoQXXTihg9TkENrxs8Hikg=;
 b=YI0geVvZyp+4KqUmW62frSDceGEcotE5FynJ50m3pXXA35VnR9iP0hXlJKqG4fqHi8
 gsUDL9JSTZhaMQQaagz9FayNfBKxX3vF6YCL64dalp7kYjjqrbn4zyO0e0shq6Is7X4W
 ZkD74EHpTb1LF1UnZldd9hA1zJD1QT+A80jJJ/aYD0K2wngVd24emHlW+iWflLg72dwF
 TP4vH2ofVzP32DbVkMLwJc7mv/onQm2DVt4Ke4K/REF9CIL4FgSOWhQEjeIfcUweYdkk
 P3UgGUUe7qJs5w2V5cbPVOEGVjCfRqwWjeKK23psXi7j2s/Etn675cbc78MhnmM3c9xQ
 K5XQ==
X-Gm-Message-State: APjAAAU4nf0B8ECM5ka2gumWUrNtmiDMSnCiYQWSY1d9PNY047UGmcZv
 qQwUpAAljPxLHYoSTbrgXqW+kmjd
X-Google-Smtp-Source: APXvYqz96Nlr+KoorvghPjVXzRmmCC/Nc9td0WVT/TjOqMmV15Ec75Jh+yuH13hDUmySR9WbC3d/YQ==
X-Received: by 2002:a65:6254:: with SMTP id q20mr2975759pgv.423.1568796698439; 
 Wed, 18 Sep 2019 01:51:38 -0700 (PDT)
Received: from localhost ([175.223.34.14])
 by smtp.gmail.com with ESMTPSA id o42sm1997810pjo.32.2019.09.18.01.51.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 01:51:37 -0700 (PDT)
Date: Wed, 18 Sep 2019 17:51:34 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: 'Greg KH' <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
Message-ID: <20190918085134.GA47301@jagdpanzerIV>
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV>
 <20190918082658.GA1861850@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918082658.GA1861850@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 'Valdis Kletnieks' <valdis.kletnieks@vt.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 sergey.senozhatsky@gmail.com, Namjae Jeon <namjae.jeon@samsung.com>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 'Ju Hyung Park' <qkrwngud825@gmail.com>, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On (09/18/19 10:26), 'Greg KH' wrote:
> On Wed, Sep 18, 2019 at 03:33:04PM +0900, Sergey Senozhatsky wrote:
> > On (09/18/19 08:16), 'Greg KH' wrote:
> > [..]
> > > > Note, that Samsung is still improving sdfat driver. For instance,
> > > > what will be realeased soon is sdfat v2.3.0, which will include support
> > > > for "UtcOffset" of "File Directory Entry", in order to satisfy
> > > > exFAT specification 7.4.
> > >
> > [..]
> > > If Samsung wishes to use their sdfat codebase as the "seed" to work from
> > > for this, please submit a patch adding the latest version to the kernel
> > > tree and we can compare and work from there.
> > 
> > Isn't it what Ju Hyung did? He took sdfat codebase (the most recent
> > among publicly available) as the seed, cleaned it up a bit and submitted
> > as a patch.
> 
> He did?  I do not see a patch anywhere, what is the message-id of it?

Sorry. No, he did not. I somehow thought that he did, but it seems that
I just looked at his github and emails.

> > Well, technically, Valdis did the same, it's just he forked a slightly
> > more outdated (and not anymore used by Samsung) codebase.
> 
> He took the "best known at the time" codebase, as we had nothing else to
> work with.

Well, then Valdis probably took it a long long time ago. Current
"best known" is v2.2, publicly available under GPLv2 at opensource.samsung.com

	-ss
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
