Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E6F1A402
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 22:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 216128678F;
	Fri, 10 May 2019 20:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sa1bLt4fqwBY; Fri, 10 May 2019 20:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 087C886670;
	Fri, 10 May 2019 20:35:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BE9B71BF983
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 20:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BBE4931302
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 20:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zN10PAgffG4z for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 20:35:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 5979D2202C
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 20:35:09 +0000 (UTC)
Received: by mail-it1-f193.google.com with SMTP id a190so11408249ite.4
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 13:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hL++2fQtVcBcemd3HMY6tCiADu4XC0og1WjDAbLOUQM=;
 b=E1b9PSNPBbhgMZMTVNXTGlJqb6S/p+8s+/bVnewxr9ELVRjAaaOPHPYdTrzxApIozC
 3t4jfPjPMnx4jeJ+hM2N8+85nlc0z1lyKDDzz43TVzU2SxMfyufYM9mIqgUufcbSYmbn
 7iJIKtvM6VssLd/K1frs/EFopOK1/Ne2lKs1S91PkYwsfOc2PMxdKUxpCkUGBOJNukId
 VWAln6lgv1bTkpNN/jLzUq7b0krgG+86+WmXJ2St7u7I6cDfSNppya2YLhf6Aq/DydJV
 s2OQ6FsQMOQu9OJd+//B/EvYhUe3atds/biREjrf28hPsnvpyUUc1u4soVwv/vxFscD1
 h8vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hL++2fQtVcBcemd3HMY6tCiADu4XC0og1WjDAbLOUQM=;
 b=RK0Isl5C8XxLVX7I1F+b8BKDuktQhrz2R1TuLjjgr459rUl7l/WYTD1cjx1VmbsYZR
 YnA7lpdoTLCxEkF0qqnoZOycqH6QZaOOf/LBJk+JQV+NO1zvPc21lQg8H9U65I5izEyc
 IYd+uqF10pLxQMoTaE7TVxZTbj+34Xi11ZQgXP5TLBZf9ccIweDtvGlwpm9yNFiYmG/j
 76OOrXrg8PZ+t2dq88qoox/Pu7f7lD9zKgPNU2CFBPlsgBBW+942MHJv64O62RwDHz1u
 DvmuUO1F8wBqzxujly5zVTmqKmyvv3N+pLydbCF8JD1bXYNt1de4H1NK9iBMzbOT+ogc
 iV4w==
X-Gm-Message-State: APjAAAUDkFe3muHNDJ0Z6I2+PRVEk2o+hcynOhJpLn0I8n7o0kbosr5c
 go96x6Dzeq6fTdHEJ/dAz5YbRnfqcwBkg6Kf5OM=
X-Google-Smtp-Source: APXvYqxlErmY8vWfOnLWWMSub/Y/z3/XiSVXzHpmCbXvbQ84l8sjIZ/uqt0ZuRjJvLGzx6VVhTRWg1bKtkBMBG15sNs=
X-Received: by 2002:a24:f946:: with SMTP id l67mr8837449ith.43.1557520508599; 
 Fri, 10 May 2019 13:35:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190510193833.1051-1-bnvandana@gmail.com>
In-Reply-To: <20190510193833.1051-1-bnvandana@gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Fri, 10 May 2019 22:34:57 +0200
Message-ID: <CAKXUXMzJCmSZqJ+VFxEOgf_HNgKfPfKS7OECw_RzSxVrDZpCGw@mail.gmail.com>
Subject: Re: [Linux-kernel-mentees] [PATCH] Staging: kpc2000: kpc_dma: resolve
 checkpath errors and warnings
To: Vandana BN <bnvandana@gmail.com>
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
 linux-kernel-mentees@lists.linuxfoundation.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 10, 2019 at 9:39 PM Vandana BN <bnvandana@gmail.com> wrote:
>
> This patch resolves coding style errors and warnings reported by chechpatch
>

I did not look at the patch in detail, but you might want to also
consider to replace the CamlCase (function) names by names in
lower-case with underscores. That is the common style in the kernel.

Lukas
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
