Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB6D27D7C
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 15:02:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 706BD87E1B;
	Thu, 23 May 2019 13:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0L-qkG7VnRb4; Thu, 23 May 2019 13:02:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4445B87DE2;
	Thu, 23 May 2019 13:02:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F9AC1BF31E
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 13:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 65AE53146B
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 13:02:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Nx2PIMkxeM4 for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 13:02:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
 [209.85.167.179])
 by silver.osuosl.org (Postfix) with ESMTPS id E65E631429
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 13:02:23 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id z65so4258571oia.11
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 06:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tNTxg7bVPZmS33ui0X46cGpgoHbHka7Jatfgd+05r0A=;
 b=ksC3eCaUf4c9SziYbr35L/hYzF9ZaG5TbfHH6tVpupboGJa9b77/If5Mmhwr5dllY/
 sOZ7+ZCJhg62PVMtRTx1P1tjtgr4EXdHsqKZ0q/pwZmT3GFjF3mwcIQidi0Zp/HJ201Z
 cAZO4tfzZjgrby4BLXLqTlhP3OcMa2V4WSy7r4PCyDfTe7CT43LHN6EZta8KIHVDGZxk
 UqUzDpFAfp+gZoSkktkZGyTl+XYtXHThstAHieI2ZZLmjEX3b5bsP2APbW+nxiA3hRxq
 9PSmBV8TZSHFQjtYDNgt5jDN4l6Am0nGcsdRkimRKBG9dz412CoFhTT3PLA6zXU4+SFD
 IMPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tNTxg7bVPZmS33ui0X46cGpgoHbHka7Jatfgd+05r0A=;
 b=B4New7e1NFxk3B43cR1OuLbVYK0fcklZnA7MFg1seS9mBQAFBc/cxOI+k5fPDHqHBu
 CDCT+0BDqkSRfiuijgHVzYczTgEVuFQuaNnfi7qIl1VbhJcXczrUrmTNOGVO+KUSc+79
 AHwjirgqh67xWS+7pTwcWXdUMO22m0kQuosPZhPolf0vbNwcDs/ov6KdDAi+Eabq2O0h
 pPcYt5XF6djLEe9kWOEhaENB3l9Zo0NoBetqOEHQGKkcD19pAsNzTgn3L2ndDLxgcCN7
 6B1QpMrF7sydyo3yhqQ7hi6m7TJhPa2mhDtd4B7VuO4XjcvS38XVWHMeCkiB45uAb0Tn
 0Tdw==
X-Gm-Message-State: APjAAAV/dCjhwu/Oza8sbUymgMRbiCfjRIrDD83NFsHJ2PFEVIrWqA5O
 9RXcBEpVWKq+kzx3sOWP9NwqAL4hzqO+SUZMGuk=
X-Google-Smtp-Source: APXvYqzPq6u1bW7frG+lxPr4cHztCZGidS1iWMvvxUPCE6evmBgLNIR25ve8juJpQmUQyy35gSn4H8ph1pgY1Qy/8oI=
X-Received: by 2002:aca:7250:: with SMTP id p77mr2703246oic.103.1558616543038; 
 Thu, 23 May 2019 06:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190523063504.10530-1-nishka.dasgupta@yahoo.com>
 <20190523072220.GC24998@kroah.com>
 <b8cc12d9-2fe3-754b-be08-f23055a31ffe@yahoo.com>
 <20190523082702.GB28231@azazel.net> <20190523090918.GU31203@kadam>
In-Reply-To: <20190523090918.GU31203@kadam>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Thu, 23 May 2019 09:02:11 -0400
Message-ID: <CAGngYiWT3a5EYZsgxdRQsrEnu4Cw6FNmNWhzx721SY8DXYL4Rw@mail.gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: Remove unnecessary variables
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, May 23, 2019 at 5:09 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Sven, you should add yourself to the MAINTAINERS file.

Greg, what do you think?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
