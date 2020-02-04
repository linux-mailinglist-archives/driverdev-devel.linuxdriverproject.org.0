Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB4815184E
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 10:59:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6753F86F88;
	Tue,  4 Feb 2020 09:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PXcc+bDKV-fM; Tue,  4 Feb 2020 09:59:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1A6886CB6;
	Tue,  4 Feb 2020 09:59:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7E5D31BF286
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 09:59:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A3D920519
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 09:59:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H5EXOA+AtSR7 for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 09:59:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id C7DA6203C3
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 09:59:32 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id d62so17792087oia.11
 for <devel@driverdev.osuosl.org>; Tue, 04 Feb 2020 01:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+c+P5I8NbJ7KvdrmDqQ1PdrpFMV6E9xgMXllp3DgFLA=;
 b=YWN5OWH1S+jW+ZqO/FK8CvZv2YTPZFFL80xYclXzWSuEBS/j9zlXfKRT/95NASNAsA
 EF4CKDRfiQ/bxt2ew7Nj1WHCirmfvvPYGt4DeUpqvS6eQcht+lIjifTYzfiQ49bN/S5u
 mz0b6eKSExwqYZMFuQ/B8butBOClBl+dKDHjwmr+DyYE3RFzACqlXvFNl9g3a3ObMFQs
 1VdjLXXa6cErYEcgbMjKmBCK3XGQi4l6l7uVAX+HDoLNmEJ6rknaiJxLI+eYT8RkD8bc
 Gjjgq4P55PEfDgoCveJxVsGwjJrG0OoOQvo70ZDYYVeml2p8+J9iFwIETqLI1HHy4emO
 ulyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+c+P5I8NbJ7KvdrmDqQ1PdrpFMV6E9xgMXllp3DgFLA=;
 b=TFf8dAS+uskc7FCvDoKbOt951rfsPnarPaIf0qQ/vqxiKdkCcYCBzGnIyg7ZOBFUzw
 PNkTbIF6tY8yPtP+rkJYSNEzznkGf+pCXqf36QkDQWKud+ZS+nq5y6b3pXZvJ/VQs+Zn
 FyCqZygkP+RH1eH6PJqfNSPuOid+wUtWjXah0wiMV0ZoYT7gTaC/5Yt1TmCwB2SsWN0C
 baiNzQdAvxC+S9M52+xskvamldwjogwU1KHS8iJx6hVyBFznPY6Na2H68iAHzuHDtpzL
 /KyD3v76Tf1FhQFnh1f53s51XGqZAXbv3yoNaaFBGk9ldg/Uss4sWgxt04Nud9IItj3q
 LPlw==
X-Gm-Message-State: APjAAAX1KQ8tJ6yvm9KED7VPsb1F7R2kU53YusEjW8jHCsQ0lexBqUbP
 dbOhkCH7l+Oo8mDez2eagJeQ8L790wDQpyM/yPk=
X-Google-Smtp-Source: APXvYqxL3ONJ+g0dPYwUeiEo11NnyVisJS5Mv5bE0bNlew27R5M77w1CkIdMs3uy8iVQnVmmTuPvR1D66Uz4c0k1K78=
X-Received: by 2002:aca:ddc2:: with SMTP id u185mr2963896oig.24.1580810371921; 
 Tue, 04 Feb 2020 01:59:31 -0800 (PST)
MIME-Version: 1.0
References: <20200204090022.123261-1-gch981213@gmail.com>
 <20200204094647.GS1778@kadam>
In-Reply-To: <20200204094647.GS1778@kadam>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 4 Feb 2020 17:59:21 +0800
Message-ID: <CAJsYDV+b1bqc3b87Amo8p2UzVi4fpbRv6ytus8A5Y0r4K-X0hw@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: add dt node for 2nd/3rd uart on
 mt7621
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 NeilBrown <neil@brown.name>, open list <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On Tue, Feb 4, 2020 at 5:47 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> Please use ./scripts/get_maintainer.pl to pick the CC list and resend.
>
> The MAINTAINERS file says Matthias Brugger is supposed to be CC'd and
> a couple other email lists.

According to get_maintainer.pl,  Matthias Brugger is the maintainer of
Mediatek ARM SoC:

Matthias Brugger <matthias.bgg@gmail.com> (maintainer:ARM/Mediatek SoC support)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/Mediatek SoC support)
linux-mediatek@lists.infradead.org (moderated list:ARM/Mediatek SoC support)

I specifically removed the above 3 addresses because they are all for
Mediatek ARM chips
while mt7621 is a mips chip and belongs to ralink target under
/arch/mips/mach-ralink.
Code contribution for mt7621 goes through linux-mips instead of
linux-arm or linux-mediatek,

I thinks this is an incorrect setup of get_maintainer.pl and should be
corrected.

Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
