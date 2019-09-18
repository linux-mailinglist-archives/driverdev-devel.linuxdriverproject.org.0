Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 109C3B60D3
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 11:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 503C18208A;
	Wed, 18 Sep 2019 09:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7HV92wMlhdY0; Wed, 18 Sep 2019 09:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FE0D82488;
	Wed, 18 Sep 2019 09:54:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B9D201BF41E
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B660E85EEF
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:54:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNQhvBLw7GcZ for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 09:54:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3621085EAE
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 09:54:02 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id i17so2118837ual.7
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 02:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E5gtS+yM+B/W3F1yUw9GbHkkklL2emSJNV+P8Wl6WJU=;
 b=V6+DvTK45f5Kewrd4hdXFL5+ryuu3iOKTRRkfjh2KPewA4I2VFLHE+feohZPjEcW9y
 u1juoerG4EcqlvtvhnETEF9CCXZyYASGPg3+80ZdLp6/E9HF1LoT7CHW5HT6QbdOJA4p
 CDFnD/tAymuqmIj2OrEdAudt5hEsqHSsmyNXU0BEutQ2JFLl+YCRRiR3VFT4BEMgl+3A
 paKDPu0JFoJ/PmXqUR1X11YHPHsCML80vhV1rBMuepJwQ9BbWoquSowHyoVHUrRCO5U3
 epo5YLdh+aUfWW3U1aiPcuHxKtCM3ylCqRHxSJfByjWWwZKI/3fxmKTgqyi6B5UsmYDi
 qwxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E5gtS+yM+B/W3F1yUw9GbHkkklL2emSJNV+P8Wl6WJU=;
 b=OA9ndfqX6ubM0yw57c4wuRcCBrCkcbvA8qjaqfHMSSfofPMMnwyPTgdyL0VOHS7cy4
 s/NvCQAuUX2waVkWX/HP23gFhIYzM/rlhp0CVmSDCyHeIkGm/ZTYp2bJm+bqx4awFjxJ
 BgJRtwNUbhIMSNjvggVdA4s6Bl75E9qb5UZQuZggE1/u3W+wffAjBRWob/ZVdjOtHTb+
 RU4r5e6+FBSmVtDoHfPYbC1eriwlZdUbbL3X/KW7nnAu1w5CKY/rvnyRVTGO6wSpfZ8Q
 pswZZ62AwROPCje0V3HQ9XwpC93aod3ROmPdlu7wfMs5zlJM4X17K70q7HP0DZQWP1Kv
 REMA==
X-Gm-Message-State: APjAAAUmw6v0gKw6lXKx2QecYo43xJ8i875zCzXYZg0MN9gwC4UcgjsJ
 bwlczYm+MyPA55FHQhrBZ3GCZBVg/0QBuJsTwns=
X-Google-Smtp-Source: APXvYqwSJ1sw3p/xqW7OOsBpOGLPiZgvrA7SWgx1VSzZdmWueOjQ7vBQb45IVAndJBb7SSBkfyYFPLeGq2BVCFaxsGA=
X-Received: by 2002:ab0:2808:: with SMTP id w8mr1687646uap.75.1568800440960;
 Wed, 18 Sep 2019 02:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <8998.1568693976@turing-police>
 <20190917053134.27926-1-qkrwngud825@gmail.com>
 <20190917054726.GA2058532@kroah.com>
 <CGME20190917060433epcas2p4b12d7581d0ac5477d8f26ec74e634f0a@epcas2p4.samsung.com>
 <CAD14+f1adJPRTvk8awgPJwCoHXSngqoKcAze1xbHVVvrhSMGrQ@mail.gmail.com>
 <004401d56dc9$b00fd7a0$102f86e0$@samsung.com>
 <20190918061605.GA1832786@kroah.com>
 <20190918063304.GA8354@jagdpanzerIV> <20190918082658.GA1861850@kroah.com>
 <CAD14+f24gujg3S41ARYn3CvfCq9_v+M2kot=RR3u7sNsBGte0Q@mail.gmail.com>
 <20190918092405.GC2959@kadam>
In-Reply-To: <20190918092405.GC2959@kadam>
From: Ju Hyung Park <qkrwngud825@gmail.com>
Date: Wed, 18 Sep 2019 18:53:49 +0900
Message-ID: <CAD14+f1yQWoZH4onJwbt1kezxyoHW147HA-1p+U0dVo3r=mqBw@mail.gmail.com>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to
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
Cc: devel@driverdev.osuosl.org, linkinjeon@gmail.com,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Namjae Jeon <namjae.jeon@samsung.com>, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, alexander.levin@microsoft.com,
 sergey.senozhatsky@gmail.com, linux-fsdevel@vger.kernel.org,
 sj1557.seo@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On Wed, Sep 18, 2019 at 6:27 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> Put it in drivers/staging/sdfat/.

It'll conflict with the current exfat staging drivers.
And moreover, I don't think it makes sense to use sdfat naming in mainline.

Samsung uses it since it handles all fat filesystems.
From what I can tell, that's not in mainline's interests:
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-next&id=58985a9d2d03e977db93bf574a16162766a318fe

What I'm proposing is to remove the current exfat drivers and add
sdfat-based one(that I removed fat16/32 handlings and renamed to
exfat).

> But really we want someone from Samsung to say that they will treat
> the staging version as upstream.

Agreed.
Perhaps Namjae didn't pick up our questions with all those mails we
sent during last few days.

Maybe ping him again?

Thanks.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
